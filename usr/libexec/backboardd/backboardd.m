uint64_t sub_1000025C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_100002858(v5, a3);
  if ((v6 & 1) == 0)
  {
    v7 = BKLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543874;
      v10 = v5;
      v11 = 2082;
      v12 = a1;
      v13 = 1024;
      v14 = BSPIDForAuditToken();
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Only system apps with entitlement %{public}@ may use %{public}s; ignoring request from pid %d", &v9, 0x1Cu);
    }
  }

  return v6;
}

uint64_t sub_1000026C4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 76);
  v7[0] = *(result + 60);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_1000028B0;
  v10 = &unk_1000FC018;
  v11 = v4;
  result = sub_1000025C8("_BKHIDXXSetMinimumBrightnessLevelWithFadeDuration", BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

BOOL sub_1000027D4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    if (!v3)
    {
      v7 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v5 = BSPIDForAuditToken();
  v6 = getpid();
  v7 = 1;
  if (v4 && v5 != v6)
  {
LABEL_6:
    v7 = [BKSecurityManager hasEntitlement:v4 forAuditToken:a2];
  }

LABEL_8:

  return v7;
}

uint64_t sub_100002858(void *a1, uint64_t a2)
{
  if (sub_1000027D4(a1, a2))
  {
    v3 = +[BKSystemShellSentinel sharedInstance];
    v4 = [v3 auditTokenRepresentsSystemApp:a2];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1000028B0(uint64_t a1)
{
  v4 = +[BKDisplayBrightnessController sharedInstance];
  LODWORD(v2) = *(a1 + 32);
  LODWORD(v3) = *(a1 + 36);
  [v4 setMinimumBrightnessLevel:v2 fadeDuration:v3];
}

_DWORD *sub_10000295C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr(result + 10, 0, v4 - 40)) != 0))
  {
    v10 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v10 && *(v10 + 1) > 0x1Fu)
    {
      v11 = *(v10 + 36);
      v12[0] = *(v10 + 20);
      v12[1] = v11;
      result = sub_100002B08((v3 + 10), v12);
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_100002A94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a2 == 2 && (dispatch_mach_mig_demux() & 1) == 0)
  {
    msg = dispatch_mach_msg_get_msg();
    mach_msg_destroy(msg);
  }
}

uint64_t sub_100002B08(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v4 = sub_100002BA4;
  v5 = &unk_1000FC018;
  v6 = a1;
  if (!sub_1000027D4(BKBackBoardClientEntitlement, a2))
  {
    return 5;
  }

  v4(v3);
  return 0;
}

void sub_100002BA4(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v3 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v3 = 0;
  }

  v1 = +[BKHIDEventProcessorRegistry sharedInstance];
  v2 = [v1 eventProcessorOfClass:objc_opt_class()];

  [v2 cancelTouchesOnDisplay:v3];
}

id sub_100002C4C()
{
  if (qword_100125F78 != -1)
  {
    dispatch_once(&qword_100125F78, &stru_1000FB7D0);
  }

  v1 = qword_100125F70;

  return v1;
}

id *sub_100002D14(id *a1)
{
  if (a1)
  {
    a1 = [a1[6] allValues];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100002D9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_1000033E4;
  v7 = &unk_1000FAA38;
  v10 = a2;
  v8 = a3;
  v9 = a1;
  if (!sub_1000027D4(BKBackBoardClientEntitlement, a4))
  {
    return 5;
  }

  v6(v5);
  return 0;
}

void sub_100002E40(void *a1)
{
  v1 = a1;
  os_unfair_lock_assert_not_owner(&unk_100125DE8);
  os_unfair_lock_lock(&unk_100125DE8);
  v1[2](v1, qword_100125DE0);

  os_unfair_lock_unlock(&unk_100125DE8);
}

_DWORD *sub_100002EAC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
    v8 = 0.0;
    v7 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002FE0;
    v11[3] = &unk_1000FA7F8;
    v11[4] = &v10;
    v11[5] = &v9;
    v11[6] = &v8;
    v11[7] = &v7 + 1;
    v11[8] = 0;
    v11[9] = &v7;
    sub_100002E40(v11);
    v3 = v10;
    v4 = v9;
    *(a2 + 36) = v3;
    *(a2 + 40) = v4;
    v5 = v8;
    *(a2 + 44) = v5;
    BSDegreesToRadians();
    *&v6 = v6;
    *(a2 + 48) = LODWORD(v6);
    *(a2 + 52) = v7;
    result = sub_1000030E8();
    *(a2 + 56) = result;
    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 60;
  }

  return result;
}

void sub_100002FE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (*(a1 + 32))
  {
    [v3 size];
    v3 = v12;
    **(a1 + 32) = v4;
  }

  if (*(a1 + 40))
  {
    [v12 size];
    v3 = v12;
    **(a1 + 40) = v5;
  }

  if (*(a1 + 48))
  {
    [v12 scale];
    v3 = v12;
    **(a1 + 48) = v6;
  }

  if (*(a1 + 56))
  {
    **(a1 + 56) = [v12 nativeRotation];
    v3 = v12;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    [v12 normalizedDigitizerRect];
    v3 = v12;
    *v7 = v8;
    v7[1] = v9;
    v7[2] = v10;
    v7[3] = v11;
  }

  if (*(a1 + 72))
  {
    **(a1 + 72) = [v12 isExternal];
    v3 = v12;
  }
}

BOOL sub_1000030E8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = sub_100028174;
  v7 = sub_100028184;
  v8 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000031D8;
  v2[3] = &unk_1000FA7D8;
  v2[4] = &v3;
  sub_100002E40(v2);
  v0 = v4[5] == 0;
  _Block_object_dispose(&v3, 8);

  return v0;
}

void sub_1000031C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000031D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (!v3)
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"BOOL BKDisplayIsHeadless(void)_block_invoke"];
    [v7 handleFailureInFunction:v8 file:@"BKDisplay.m" lineNumber:683 description:@"please invoke BKDisplayStartWindowServer before BKDisplayIsHeadless"];

    v3 = 0;
  }

  v4 = [v3 windowServerDisplay];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000032A4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if ((v5 - 1089) < 0xFFFFFBFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 60);
  v3 = -304;
  if (v6 > 0x400 || v5 - 64 < v6)
  {
    goto LABEL_3;
  }

  if (v5 != ((v6 + 3) & 0xFFC) + 64)
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 40);
  if (v7 != *(a1 + 52))
  {
LABEL_16:
    v3 = -300;
    goto LABEL_3;
  }

  if (!memchr((a1 + 64), 0, v5 - 64))
  {
LABEL_2:
    v3 = -304;
    goto LABEL_3;
  }

  v8 = ((v5 + 3) & 0xFFC) + a1;
  if (!*v8 && *(v8 + 4) > 0x1Fu)
  {
    v9 = *(a1 + 28);
    v10 = *(v8 + 36);
    v11[0] = *(v8 + 20);
    v11[1] = v10;
    *(a2 + 32) = sub_100002D9C(v9, v7, a1 + 64, v11);
    mig_deallocate(*(a1 + 28), *(a1 + 40));
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    return;
  }

  v3 = -309;
LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
}

void sub_1000033E4(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 48) && *(a1 + 40))
  {
    v3 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 40) length:*(a1 + 48) freeWhenDone:0];
    v4 = objc_opt_class();
    v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
    v6 = [NSObject bs_secureObjectFromData:v3 ofClasses:v5];

    if (v6)
    {
      v7 = +[BKHIDEventProcessorRegistry sharedInstance];
      v8 = [v7 eventProcessorOfClass:objc_opt_class()];

      [v8 setHitTestRegions:v6 forDisplay:v2];
      v9 = +[BKHIDEventProcessorRegistry sharedInstance];
      v10 = [v9 eventProcessorOfClass:objc_opt_class()];
      v11 = [v10 mousePointerController];
      [v11 hitTestRegionsDidChange:v6 forDisplayUUID:v2];
    }

    else
    {
      v8 = BKLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error unarchiving hittestRegions", buf, 2u);
      }
    }
  }
}

void sub_100003630(uint64_t a1)
{
  v2 = +[BKHIDEventProcessorRegistry sharedInstance];
  v3 = [v2 eventProcessorOfClass:objc_opt_class()];

  [v3 setEventDispatchMode:*(a1 + 44) ambiguityRecommendation:*(a1 + 45) lastTouchTimestamp:*(a1 + 40) forTouchStreamIdentifier:*(a1 + 32)];
}

id sub_100003704(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 16);
    *(a1 + 16) = 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1000037C8(uint64_t a1)
{
  if (a1 && *(a1 + 65) == 1)
  {
    BSAbsoluteMachTimeNow();
    v3 = v2;
    v4 = *(a1 + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      if (v5 <= 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v3 - v5;
      }

      v7 = *(a1 + 8);
      v8 = *(a1 + 24);
      v9 = v4;
      v10 = [v8 bs_compactMap:&stru_1000FC2B0];
      v11 = [BSDescriptionStream descriptionForRootObject:v10];
      *buf = 138543874;
      v23 = v7;
      v24 = 2048;
      v25 = v6;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ events starting %gs ago: %{public}@", buf, 0x20u);
    }

    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = *(a1 + 24);
    v13 = [v12 countByEnumeratingWithState:&v18 objects:buf count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if (([v17 automaticResetDisabled] & 1) == 0)
          {
            [v17 reset];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:buf count:16];
      }

      while (v14);
    }

    *(a1 + 64) = 1;
  }
}

void sub_100003C00(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 66) & 1) == 0)
  {
    *(v1 + 66) = 1;
    [*(*(a1 + 32) + 32) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;

    v5 = *(a1 + 32);
    if (*(v5 + 48))
    {

      sub_100003C70(v5);
    }
  }
}

void sub_100003C70(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 65) = 1;
    if (([*(a1 + 32) isActive] & 1) == 0)
    {
      sub_1000037C8(a1);
    }

    [*(a1 + 48) invalidate];
    v2 = *(a1 + 48);
    *(a1 + 48) = 0;
  }
}

id sub_100003CD4(id a1, BKEventStatistic *a2)
{
  v2 = a2;
  if ([(BKEventStatistic *)v2 needsLogging])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100004028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, objc_super a11)
{
  a11.super_class = BKDirectTouchStateHitTester;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_100004070(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100051748(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100004290(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return;
  }

  v6 = *(v3 + 9);
  v11[0] = *(v3 + 5);
  v11[1] = v6;
  v7 = sub_1000027D4(BKDisplayBrightnessEntitlement, v11);
  v8 = +[BKDisplayBrightnessController sharedInstance];
  v9 = v8;
  if (v7)
  {
    [v8 brightnessLevel];
  }

  else
  {
    [v8 unentitledBrightnessLevel];
  }

  *(a2 + 36) = v10;

  *(a2 + 32) = 0;
  *(a2 + 24) = NDR_record;
  *(a2 + 4) = 40;
}

uint64_t sub_100004558(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v8 = sub_100004674;
      v9 = &unk_1000FC018;
      v10 = a2 + 36;
      result = sub_1000025C8("_BKDisplayXXDisplayIsTethered", BKBackBoardClientEntitlement, v6);
      if (result)
      {
        result = (v8)(v7);
        *(a2 + 32) = 0;
        *(a2 + 24) = NDR_record;
        *(a2 + 4) = 40;
        return result;
      }

      v4 = 5;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_100004674(uint64_t a1)
{
  v2 = +[BKTetherController sharedInstance];
  **(a1 + 32) = [v2 isTethered];
}

void sub_100004BA4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v4 = *(a1 + 28);
        v5 = *(a1 + 48);
        v6 = *(a1 + 52);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        sub_100004C68(v4, v5, v6, v8);
        *(a2 + 32) = 0;
        return;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
}

void sub_100004C68(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = [[BSMachPortSendRight alloc] initWithPort:a1];
  if ([v8 isUsable])
  {
    v7 = +[BKAccelerometerInterface sharedInstance];
    [v7 bksAccelerometerClientRequestedOrientationEvents:v8 enabled:a2 != 0 passiveEvents:a3 != 0 auditToken:a4];
  }
}

id sub_100004E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    a3 = *(a3 + 8);
  }

  return [v3 addEntriesFromDictionary:a3];
}

void sub_100004E8C(uint64_t a1, uint64_t a2, double a3, float a4, float a5, float a6)
{
  v15 = [[BSMachPortSendRight alloc] initWithPort:a1];
  if ([v15 isUsable])
  {
    v11 = +[BKAccelerometerInterface sharedInstance];
    *&v12 = a4;
    *&v13 = a5;
    *&v14 = a6;
    [v11 bksAccelerometerClientRequestedAccelerometerEvents:v15 updateInterval:a2 xThreshold:a3 yThreshold:v12 zThreshold:v13 auditToken:v14];
  }
}

void sub_100004F40(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 68)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      if (!*(a1 + 68) && *(a1 + 72) > 0x1Fu)
      {
        v4 = *(a1 + 28);
        v5 = *(a1 + 48);
        v6 = *(a1 + 56);
        v7 = *(a1 + 60);
        v8 = *(a1 + 64);
        v9 = *(a1 + 104);
        v10[0] = *(a1 + 88);
        v10[1] = v9;
        sub_100004E8C(v4, v10, v5, v6, v7, v8);
        *(a2 + 32) = 0;
        return;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
}

void sub_10000507C(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = sub_100005110();
    *(a2 + 36) = sub_100005168(v3);

    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

id sub_100005110()
{
  objc_opt_self();
  if (qword_1001260F8 != -1)
  {
    dispatch_once(&qword_1001260F8, &stru_1000FCD40);
  }

  v0 = qword_1001260F0;

  return v0;
}

uint64_t sub_100005168(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005334;
  v4[3] = &unk_1000FD178;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_100005220(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v6[0] = *(result + 20);
      v6[1] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v8 = sub_1000053CC;
      v9 = &unk_1000FC018;
      v10 = a2 + 36;
      result = sub_1000027D4(BKBackBoardLastUserEventTimeEntitlement, v6);
      if (result)
      {
        result = (v8)(v7);
        *(a2 + 32) = 0;
        *(a2 + 24) = NDR_record;
        *(a2 + 4) = 44;
        return result;
      }

      v4 = 5;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100005334(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 80);
  v1 = *(*(result + 40) + 8);
  if (*(v1 + 24) == -1)
  {
    *(v1 + 24) = 1;
  }

  return result;
}

void sub_1000053CC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = +[BKUserEventTimer sharedInstance];
    [v3 lastUserEventTime];
    **(a1 + 32) = v2;
  }
}

double sub_100005754(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100005ACC(void *a1)
{
  v1 = a1;
  if (qword_100126160)
  {
    goto LABEL_3;
  }

  v2 = +[BKHIDSystemInterface sharedInstance];
  v3 = [v2 HIDSystemChannel];
  v4 = qword_100126160;
  qword_100126160 = v3;

  if (qword_100126160)
  {
LABEL_3:
    dispatch_mach_receive_barrier();
  }

  else
  {
    v5 = sub_1000526D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "BKHIDSystem HID server runloop not yet initialized", v6, 2u);
    }
  }
}

void sub_100005C10(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 32) length:*(a1 + 40) freeWhenDone:0];
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v2 = [NSArray arrayWithObjects:v9 count:2];
    v3 = [NSSet setWithArray:v2];
    v4 = [NSSet bs_secureObjectFromData:v1 ofClasses:v3];

    if (v4)
    {
      v5 = +[BKHIDEventProcessorRegistry sharedInstance];
      v6 = [v5 eventProcessorOfClass:objc_opt_class()];

      [v6 setKeyCommandsToAuthenticate:v4];
    }

    else
    {
      v6 = BKLogKeyboard();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543362;
        v8 = v1;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "cannot decode authenticated key commands: %{public}@", &v7, 0xCu);
      }
    }
  }

  else
  {
    v1 = BKLogKeyboard();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "bad size for authenticated key command data", &v7, 2u);
    }
  }
}

void sub_100005DF4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 32) length:*(a1 + 40) freeWhenDone:0];
    v5 = 0;
    v2 = [BSProtobufSerialization decodeObjectOfClass:objc_opt_class() fromData:v1 error:&v5];
    if (v2)
    {
      v3 = BSPIDForAuditToken();
      v4 = +[BKDisplayBrightnessController sharedInstance];
      [v4 setBacklightFeatures:v2 forPID:v3];
    }

    else
    {
      v4 = BKLogBacklight();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v7 = 0;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "cannot decode backlight features mode: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v1 = BKLogBacklight();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "bad size for mode data", buf, 2u);
    }
  }
}

uint64_t sub_100005F80(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v6 = a3[1];
  *buf = *a3;
  v24 = v6;
  v7 = BSVersionedPIDForAuditToken();
  v8 = sub_100002858(BKBackBoardClientEntitlement, a3);
  if (v8)
  {
    v9 = 1;
LABEL_5:
    v10 = +[BKHIDUISensorController sharedInstance];
    v11 = v10;
    if (!a1 || !a2)
    {
      [v10 removeModesForVersionedPID:v7];
LABEL_24:
      v17 = 0;
      goto LABEL_25;
    }

    v12 = [[NSData alloc] initWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v22 = 0;
    v13 = [BSProtobufSerialization decodeObjectOfClass:objc_opt_class() fromData:v12 error:&v22];
    v14 = v22;
    if (v13)
    {
      if ([v13 versionedPID] != v7)
      {
        v18 = BKLogUISensor();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v21 = NSStringFromBSVersionedPID();
          *buf = 138543362;
          *&buf[4] = v21;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "process not entitled to change UI sensor modes: %{public}@", buf, 0xCu);
        }

        goto LABEL_23;
      }

      if ((v8 & 1) != 0 || ![v13 isRestrictedToSystemShell])
      {
        [v11 applySensorMode:v13 requestOrigin:v9];
        goto LABEL_23;
      }

      v15 = BKLogUISensor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v13;
        v16 = "mode request reserved for system shell:%{public}@";
LABEL_27:
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
      }
    }

    else
    {
      v15 = BKLogUISensor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v14;
        v16 = "cannot decode UI sensor settings: %{public}@";
        goto LABEL_27;
      }
    }

LABEL_23:
    goto LABEL_24;
  }

  if (sub_1000027D4(BKProximityDetectionEntitlement, a3))
  {
    v9 = 2;
    goto LABEL_5;
  }

  v11 = BKLogUISensor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v20 = NSStringFromBSVersionedPID();
    *buf = 138543362;
    *&buf[4] = v20;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "process not entitled to change UI sensor modes: %{public}@", buf, 0xCu);
  }

  v17 = 5;
LABEL_25:

  return v17;
}

void sub_10000628C(uint64_t a1)
{
  v2 = +[BKHIDEventProcessorRegistry sharedInstance];
  v3 = [v2 eventProcessorOfClass:objc_opt_class()];

  [v3 setShouldSuppressTouchesWhileObjectWithinProximity:*(a1 + 32) != 0];
}

void sub_100006344(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:&__kCFBooleanTrue forKey:@"DisplayAutoBrightnessActive"];
  if (!v1)
  {
    v3 = +[BKSDefaults localDefaults];
    [v3 ALSDelayOnUnlock];
    v5 = v4;

    if (v5 > 0.0)
    {
      *&v6 = v5;
      v7 = [NSNumber numberWithFloat:v6];
      [v2 setObject:v7 forKey:@"DisplayAutoBrightnessDelay"];
    }
  }

  v8 = BKLogBacklight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = v1 != 0;
    v11 = 2114;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BKAmbientLightSensorEnableAutoBrightness userInteractedWithUI:%{BOOL}u %{public}@", v10, 0x12u);
  }

  v9 = +[BKDisplayBrightnessController sharedInstance];
  [v9 setProperty:v2 forKey:@"DisplayAutoBrightnessStatus"];
  if (v1)
  {
    [v9 setProperty:&__kCFBooleanTrue forKey:@"UserInteractedWithUI"];
  }
}

void sub_1000064D4(uint64_t a1)
{
  if (*(a1 + 40) && *(a1 + 32))
  {
    v1 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 32) length:*(a1 + 40) freeWhenDone:0];
    v2 = objc_opt_class();
    v3 = [NSSet setWithObjects:v2, objc_opt_class(), 0];
    v4 = [NSObject bs_secureObjectFromData:v1 ofClasses:v3];

    if (v4)
    {
      v5 = +[BKButtonHapticsController sharedInstance];
      [v5 applyDefinitions:v4];
    }

    else
    {
      v5 = BKLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v7 = "_BKHIDXXApplyButtonDefinitions_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Error unarchiving button definitions", buf, 0xCu);
      }
    }
  }

  else
  {
    v1 = BKLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "_BKHIDXXApplyButtonDefinitions_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: no data received", buf, 0xCu);
    }
  }
}

void sub_10000669C(uint64_t a1)
{
  if (*(a1 + 40) && *(a1 + 32))
  {
    v1 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 32) length:*(a1 + 40) freeWhenDone:0];
    v2 = objc_opt_class();
    v3 = [NSSet setWithObjects:v2, objc_opt_class(), 0];
    v4 = [NSObject bs_secureObjectFromData:v1 ofClasses:v3];

    if (v4)
    {
      v5 = +[BKHIDEventProcessorRegistry sharedInstance];
      v6 = [v5 eventProcessorOfClass:objc_opt_class()];
      [v6 cancelTouchesWithIdentifiers:v4];
    }

    else
    {
      v5 = BKLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error unarchiving touchIdentifiers", buf, 2u);
      }
    }
  }
}

void sub_1000067F4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v4 = [[NSData alloc] initWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v5 = [NSObject bs_secureObjectFromData:v4 ofClass:objc_opt_class()];
    if (v5)
    {
      v6 = +[BKHIDHapticFeedbackController sharedInstance];
      [v6 postHapticFeedbackRequest:v5 forAuditToken:a3];
    }

    else
    {
      v7 = BKLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = "_BKHIDXXRequestHapticFeedback";
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: Error unarchiving feedback request", &v8, 0xCu);
      }
    }
  }

  else
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "_BKHIDXXRequestHapticFeedback";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: no data received", &v8, 0xCu);
    }
  }
}

uint64_t sub_100006994(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (sub_1000027D4(v7, a4) || +[BKSecurityManager hasEntitlement:forAuditToken:](BKSecurityManager, "hasEntitlement:forAuditToken:", v8, a4) && (+[BKSystemShellSentinel sharedInstance](BKSystemShellSentinel, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 auditTokenRepresentsSystemApp:a4], v10, (v11 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v12 = BKLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138544130;
      v15 = v8;
      v16 = 2114;
      v17 = v7;
      v18 = 2082;
      v19 = a1;
      v20 = 1024;
      v21 = BSPIDForAuditToken();
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Only system apps with entitlement %{public}@ or processes with entitlement %{public}@ may use %{public}s; ignoring request from pid %d", &v14, 0x26u);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t sub_100006AF8(_BYTE *a1, void *a2)
{
  if (!sub_100006994("_BKHIDXXRequestProximityStatusEvent", BKProximityStatusEventEntitlement, BKBackBoardClientEntitlement, a2))
  {
    return 5;
  }

  if (*a1)
  {
    v4 = [NSString stringWithUTF8String:a1];
  }

  else
  {
    v4 = 0;
  }

  v6 = +[BKHIDUISensorController sharedInstance];
  [v6 requestProximityStatusEventForReason:v4 versionedPID:{BSVersionedPIDForAuditToken(), *a2, a2[1], a2[2], a2[3]}];

  return 0;
}

void sub_100006BC8(id a1, BSProtobufSchemaBuilder *a2)
{
  v2 = a2;
  [(BSProtobufSchemaBuilder *)v2 addRepeatingField:"_props" containsClass:objc_opt_class()];
}

uint64_t sub_100006C2C(uint64_t a1, int a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10000669C;
  v6 = &unk_1000FAAF8;
  v8 = a2;
  v7 = a1;
  if (!sub_100006994("_BKHIDXXCancelTouchesWithIdentifiers", BKCancelTouchesEntitlement, BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

void sub_100006CE4(uint64_t a1)
{
  v1 = fminf(*(a1 + 32), 1.0);
  if (v1 >= 0.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = BKLogBacklight();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting backlight factor pending: %f", &v7, 0xCu);
  }

  v4 = qword_100125E18;
  *&v5 = v2;
  v6 = [NSNumber numberWithFloat:v5];
  [v4 setProperty:v6 forKey:@"DisplayBrightnessFactorPending"];

  sub_100032E78(1, v2);
}

void sub_100006DEC(int a1, int a2, char a3, float a4, float a5)
{
  v10 = fminf(a4, 1.0);
  if (v10 >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = BKLogBacklight();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (v13)
    {
      *buf = 134218240;
      v24 = v11;
      v25 = 2048;
      v26 = a5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting CoreBrightness backlight factor:%f with fade duration:%f", buf, 0x16u);
    }

    v14 = qword_100125E18;
    if (a5 <= 0.0)
    {
      v17 = @"DisplayBrightnessFactor";
    }

    else
    {
      *&v15 = a5;
      v16 = [NSNumber numberWithFloat:v15];
      [v14 setProperty:v16 forKey:@"DisplayBrightnessFadePeriod"];

      v17 = @"DisplayBrightnessFactorWithFade";
    }

    *&v15 = v11;
    v12 = [NSNumber numberWithFloat:v15];
    [v14 setProperty:v12 forKey:v17];
  }

  else if (v13)
  {
    *buf = 134218240;
    v24 = v11;
    v25 = 2048;
    v26 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notifying (but not setting) CoreBrightness backlight factor:%f with fade duration:%f", buf, 0x16u);
  }

  if (dword_100124660 == -1)
  {
    notify_register_check("com.apple.backboardd.backlight.changed", &dword_100124660);
  }

  sub_100032E78(a2, v11);
  if (dword_100124660 != -1 && (a3 & 1) == 0)
  {
    if (a4 <= 0.9)
    {
      v18 = (a5 * 1000000000.0);
    }

    else
    {
      v18 = 0;
    }

    v19 = dispatch_time(0, v18);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100033044;
    block[3] = &unk_1000FC018;
    v21 = v11;
    v22 = a4;
    dispatch_after(v19, &_dispatch_main_q, block);
  }
}

void sub_100007090(void *a1, void *a2, void *a3, double *a4, _BYTE *a5, uint64_t a6)
{
  v11 = a1;
  if (sub_10000717C(v11))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100002FE0;
    v13[3] = &unk_1000FA7F8;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = a4;
    v13[7] = a5;
    v13[8] = a6;
    v13[9] = 0;
    sub_100002E40(v13);
  }

  else
  {
    v12 = sub_10000A500(v11);
    sub_10000A700(v12, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_10000717C(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100028174;
  v12 = sub_100028184;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000072BC;
  v7[3] = &unk_1000FA7D8;
  v7[4] = &v8;
  sub_100002E40(v7);
  v2 = v9[5];
  if (v2)
  {
    v3 = [v2 isEqualToString:v1];
  }

  else
  {
    v4 = v1;
    v5 = v4;
    if (v4)
    {
      v3 = [v4 isEqualToString:BKSDisplayUUIDMainKey];
    }

    else
    {
      v3 = 1;
    }
  }

  _Block_object_dispose(&v8, 8);

  return v3;
}

void sub_1000072A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000072BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isExternal])
  {
    v4 = [v3 windowServerDisplay];
    v5 = [v4 uniqueId];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100028414;
    block[3] = &unk_1000FD150;
    v9 = v3;
    if (qword_100125DC0 != -1)
    {
      dispatch_once(&qword_100125DC0, block);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), qword_100125DB8);
  }
}

unint64_t sub_100007418(unint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 && (v3 = *(result + 8), v3 < v2) && (result = CFArrayGetValueAtIndex(*result, v3)) != 0)
  {
    v4 = result;
    ++v1[1];
    Type = IOHIDEventGetType();
    if (Type == 1)
    {
LABEL_16:
      v1[3] = 0;
      v1[4] = 0x7FFFFFFFFFFFFFFFLL;
      return sub_100007418(v1);
    }

    if (Type != 11)
    {
      v7 = BKLogTouchEvents();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 136446210;
        TypeString = IOHIDEventGetTypeString();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "skipping subevent of type %{public}s", &v9, 0xCu);
      }

      goto LABEL_15;
    }

    result = IOHIDEventGetIntegerValue();
    v6 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      v7 = BKLogTouchEvents();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 67109120;
        LODWORD(TypeString) = v6;
        v8 = "%d < 0";
        goto LABEL_19;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (result >= 0x1E)
    {
      v7 = BKLogTouchEvents();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 67109120;
        LODWORD(TypeString) = v6;
        v8 = "%d >= MAX_PATH_COUNT";
LABEL_19:
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, &v9, 8u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v1[3] = v4;
    v1[4] = result;
  }

  else
  {
    v1[3] = 0;
    v1[4] = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

void sub_10000769C(uint64_t a1, void *a2)
{
  v3 = [a2 windowServerDisplay];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_1000076E8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = sub_100028174;
  v7 = sub_100028184;
  v8 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000769C;
  v2[3] = &unk_1000FA7D8;
  v2[4] = &v3;
  sub_100002E40(v2);
  v0 = v4[5];
  _Block_object_dispose(&v3, 8);

  return v0;
}

void sub_1000077D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000077E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 144))
  {
    v8 = [NSString stringWithFormat:@"precondition: should have invalidated and cleared any previous transactions"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(*(a1 + 40));
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = *(a1 + 32);
      v14 = 138544642;
      v15 = v9;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      v20 = 2114;
      v21 = @"BKTouchDeliveryStatisticsLoggingObserver.m";
      v22 = 1024;
      v23 = 294;
      v24 = 2114;
      v25 = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v14, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100007974);
  }

  v3 = [*(v2 + 8) beginTransactionForReason:@"processing touches"];
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  *(v4 + 144) = v3;

  v6 = *(*(a1 + 32) + 128);

  return [v6 begin];
}

id sub_1000079B4(uint64_t a1)
{
  [*(*(a1 + 32) + 144) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = *(*(a1 + 32) + 128);

  return [v4 end];
}

const __CFArray **sub_100007B10(const __CFArray **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    Children = IOHIDEventGetChildren();
    *a1 = Children;
    if (Children)
    {
      a1[2] = CFArrayGetCount(Children);
    }
  }

  return a1;
}

void sub_100007C3C(void *a1)
{
  v3 = 0;
  v4 = 0;
  v2 = 0x3FF0000000000000;
  v1 = 0;
  sub_100007090(a1, &v3, &v4, &v2, &v1, 0);
}

double sub_100007CE4(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = sub_100007D54(a2, "BKDisplayConvertCAScreenLocationToContext");
  [v7 convertPoint:a1 toContextId:{a3, a4}];
  v9 = v8;

  return v9;
}

id sub_100007D54(void *a1, uint64_t a2)
{
  v3 = a1;
  if (sub_10000717C(v3))
  {
    v4 = sub_1000076E8();
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = +[CAWindowServer serverIfRunning];
    v4 = [v5 displayWithUniqueId:v3];

    if (v4)
    {
      goto LABEL_8;
    }
  }

  v6 = BKLogDisplay();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136446466;
    v9 = a2;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s: unknown displayUUID:%{public}@ ", &v8, 0x16u);
  }

LABEL_8:

  return v4;
}

id sub_100007E78(void *a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v7 + 1) + 8 * i) BOOLValue])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v5 = [NSNumber numberWithBool:v2];

  return v5;
}

id *sub_100007FA8(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  v3 = a1[1];
  a1[1] = 0;

  v4 = a1[2];
  a1[2] = 0;

  return a1;
}

void sub_100008008(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 16);
    *(a1 + 16) = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
  }
}

uint64_t sub_100008070(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 16) = xmmword_1000BF9E0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 32) = 0u;
  *a1 = 0;
  *(a1 + 8) = a1 + 32;
  *(a1 + 200) = 0;
  *(a1 + 200) = mach_absolute_time();
  v4 = v3;
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  v6 = v4[1];
  [v6 senderID];
  IOHIDEventSetSenderID();

  v7 = *(v4 + 206);
  IOHIDEventSetIntegerValue();
  v8 = *(v4 + 207);
  IOHIDEventSetIntegerValue();

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = DigitizerEvent;

  return a1;
}

void sub_1000081A4(_Unwind_Exception *a1)
{
  if (*(v2 + 192) == 1)
  {
    free(*(v2 + 8));
    *(v2 + 192) = 0;
  }

  if (*v2)
  {
    CFRelease(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000081F0(uint64_t a1)
{
  v2 = *(a1 + 200);
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  v4 = (a1 + 8);
  v5 = *(a1 + 16);
  if (v5 < *(a1 + 24))
  {
    v6 = *v4;
LABEL_12:
    v6[v5] = DigitizerEvent;
    *(a1 + 16) = v5 + 1;
    return DigitizerEvent;
  }

  v7 = BKLogTouchEvents();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 24);
    *buf = 134218240;
    v14 = a1 + 8;
    v15 = 1024;
    v16 = v12;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "array:%p exceeded capacity:%d; moving to heap", buf, 0x12u);
  }

  v8 = *(a1 + 24);
  v9 = malloc_type_calloc(2 * v8, 8uLL, 0x2004093837F09uLL);
  if (v9)
  {
    v6 = v9;
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v9[i] = *(*v4 + i);
      }
    }

    if (*(a1 + 192) == 1)
    {
      free(*v4);
    }

    *(a1 + 8) = v6;
    *(a1 + 24) = 2 * v8;
    *(a1 + 192) = 1;
    v5 = *(a1 + 16);
    goto LABEL_12;
  }

  return DigitizerEvent;
}

uint64_t sub_10000839C(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1];
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      v6 = *a1;
      IOHIDEventAppendEvent();
      v4 -= 8;
    }

    while (v4);
  }

  sub_1000083FC(a1);
  result = *a1;
  *a1 = 0;
  return result;
}

double sub_1000083FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = 8 * v2;
    do
    {
      if (*v3)
      {
        CFRelease(*v3);
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  if (*(a1 + 192) == 1)
  {
    free(*(a1 + 8));
    *(a1 + 192) = 0;
  }

  result = 0.0;
  *(a1 + 16) = xmmword_1000BF9E0;
  *(a1 + 8) = a1 + 32;
  return result;
}

id sub_100008528()
{
  if (qword_100125F08 != -1)
  {
    dispatch_once(&qword_100125F08, &stru_1000FB6F0);
  }

  v1 = qword_100125F00;

  return v1;
}

id *sub_10000857C(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[4] count];
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = [v1[4] anyObject];
        v4 = [v3 description];
      }

      else
      {
        v4 = [v1[4] bs_map:&stru_1000FA950];
      }
    }

    else
    {
      v4 = @"<none>";
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v6 = v5 - *(v1 + 5);
    if (v6 < 0.001)
    {
      v6 = 0.0;
    }

    v1 = [NSString stringWithFormat:@"firstDown:%.3gs ago b%ue%uu%u destinations:%@", *&v6, *(v1 + 8), *(v1 + 9), *(v1 + 10), v4];
  }

  return v1;
}

BKHIDUISensorConfiguringService *__cdecl sub_100008680(id a1, BKIOHIDService *a2)
{
  v2 = a2;
  v3 = [(BKIOHIDService *)v2 propertyForKey:@"NeedsHostState"];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 BOOLValue];
  v9 = off_1000F8F90;
  if (!v8)
  {
    v9 = &off_1000F8FA0;
  }

  v10 = [objc_alloc(*v9) initWithIOHIDService:v2];

  return v10;
}

void sub_10000875C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 92);
        v8[0] = *(a1 + 76);
        v8[1] = v7;
        *(a2 + 32) = sub_100005F80(v6, v4, v8);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_1000088E0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(result + 36) || *(result + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(result + 32);
    v5 = *(result + 72);
    v6[0] = *(result + 56);
    v6[1] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v8 = sub_1000089E8;
    v9 = &unk_1000FCE78;
    v10 = v4;
    result = sub_1000025C8("_BKDisplayXXSetSecureMode", BKBackBoardClientEntitlement, v6);
    if (result)
    {
      result = (v8)(v7);
      v3 = 0;
    }

    else
    {
      v3 = 5;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_1000089E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 32) != 0;
  v3 = +[BKSecureDrawingMonitor sharedInstance];
  [v3 setSecureModeEnabled:v2];

  v4 = BKLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v1 != 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting display secure mode: %u", v6, 8u);
  }

  v5 = sub_1000076E8();
  [v5 setSecure:v1 != 0];
}

id sub_100008AE4(void *a1, char a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSMutableDictionary);
  if ([v3 digitizerEnabled])
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ScreenOn"];
  }

  if (a2)
  {
    goto LABEL_4;
  }

  if ([v3 proximityDetectionMode] == 6)
  {
    v5 = 6;
  }

  else
  {
    if (!v3)
    {
      goto LABEL_11;
    }

    if ([v3 estimatedProximityMode])
    {
LABEL_4:
      v5 = 3;
      goto LABEL_12;
    }

    v6 = [v3 proximityDetectionMode] - 1;
    if (v6 <= 0xC)
    {
      v5 = dword_1000BFC0C[v6];
    }

    else
    {
LABEL_11:
      v5 = 0;
    }
  }

LABEL_12:
  v7 = [NSNumber numberWithUnsignedInt:v5];
  [v4 setObject:v7 forKeyedSubscript:@"ProxDetectionMode"];

  v8 = [v3 displayState];
  if ((v8 - 1) <= 2)
  {
    v9 = [NSNumber numberWithInteger:v8];
    [v4 setObject:v9 forKeyedSubscript:@"DisplayState"];
  }

  if ([v3 changeSource] == 4)
  {
    [v4 setObject:&off_100107B80 forKeyedSubscript:@"ChangeSource"];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v3 proximityHostStateKeys];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  return v4;
}

uint64_t sub_100008D34(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_100006344;
  v10 = &unk_1000FCE78;
  v11 = v4;
  result = sub_1000025C8("_BKHIDXXAmbientLightSensorEnableAutoBrightness", BKBackBoardClientEntitlement, v7);
  if (result)
  {
    result = (v9)(v8);
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  *(a2 + 32) = v6;
  return result;
}

id sub_100008F00(uint64_t a1)
{
  v2 = +[CAWindowServer serverIfRunning];
  v3 = [v2 taskNamePortOfContextId:a1];

  return v3;
}

id sub_100008F48()
{
  objc_opt_self();
  if (qword_100125E88 != -1)
  {
    dispatch_once(&qword_100125E88, &stru_1000FAEA0);
  }

  v0 = qword_100125E90;

  return v0;
}

uint64_t *sub_100009074(uint64_t *a1)
{
  sub_100081F08(a1[1], *a1);

  return a1;
}

void sub_1000091B8(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 112) copy];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v14;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if (!v7[4])
        {
          v8 = v7[1];
          v9 = BKLogTouchEvents();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            v18 = v8;
            _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "stop tracking path:%d", buf, 8u);
          }

          sub_10008DF74(v7, 0);
          if (!v4)
          {
            v4 = objc_alloc_init(BKTouchContactSet);
          }

          sub_10006863C(v4, v7);
          sub_100068CA4(*(a1 + 112), v7);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v3);

    v10 = v4;
    v11 = v10;
    if (v10)
    {
      v12 = v10->_count == 0;

      if (!v12)
      {
        sub_100081704(a1, v11, 1);
        sub_10000985C(a1);
      }
    }
  }

  else
  {

    v11 = 0;
  }
}

uint64_t sub_1000093EC(uint64_t a1)
{
  if (!a1)
  {
    v2 = [NSString stringWithFormat:@"passing a NULL IOHIDEventRef is not recommended"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v3 = [NSString stringWithUTF8String:"CFIndex BKDigitizerUpdateGenerationCount(IOHIDEventRef)"];
      v5 = 138544130;
      v6 = v3;
      v7 = 2114;
      v8 = @"BKDirectTouchUpdateEvents.mm";
      v9 = 1024;
      v10 = 174;
      v11 = 2114;
      v12 = v2;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
    }

    v4 = v2;
    [v2 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10000951CLL);
  }

  return IOHIDEventGetIntegerValue();
}

uint64_t sub_10000968C(uint64_t a1)
{
  sub_1000083FC(a1);
  if (*(a1 + 192) == 1)
  {
    free(*(a1 + 8));
    *(a1 + 192) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void sub_1000096D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 192) == 1)
  {
    free(*(v1 + 8));
    *(v1 + 192) = 0;
  }

  if (*v1)
  {
    CFRelease(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000972C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 52)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 52) || *(result + 56) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v4 = *(result + 32);
  v5 = *(result + 36);
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 88);
  v10[0] = *(result + 72);
  v10[1] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_100003630;
  v13 = &unk_1000FA3E0;
  v16 = v5;
  v17 = v6;
  v14 = v7;
  v15 = v4;
  result = sub_100006994("_BKHIDXXTouchStreamSetEventDispatchMode", BKTouchStreamsEntitlement, BKBackBoardClientEntitlement, v10);
  if (result)
  {
    result = (v12)(v11);
    v9 = 0;
  }

  else
  {
    v9 = 5;
  }

  *(a2 + 32) = v9;
  return result;
}

void sub_10000985C(uint64_t a1)
{
  v1 = [*(a1 + 120) copy];
  BSIntegerMapEnumerateWithBlock();
}

void sub_100009CF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didRespondToTouchDelivery];
}

void sub_100009D50(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = +[BKHIDEventProcessorRegistry sharedInstance];
    v4 = [v3 eventProcessorOfClass:objc_opt_class()];

    *(a2 + 36) = [v4 isProximityDetectionActive];
    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

_DWORD *sub_100009E44(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1073 >= 0xFFFFFBFF) && (v5 = result[9], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 48 >= v5) ? (v7 = v4 == v6 + 48) : (v7 = 0), v7 && (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr(result + 10, 0, v8 - 40)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = *(v3 + v6 + 40);
      v12 = *(v3 + v6 + 44);
      v13 = *(v9 + 36);
      v14[0] = *(v9 + 20);
      v14[1] = v13;
      result = sub_100009F48((v3 + 10), v11, v12, v14);
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100009F48(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_100009FF8;
  v7 = &unk_1000FAA18;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  if (!sub_1000025C8("_BKDisplayXXNotifySetDisplayBlanked", BKBackBoardClientEntitlement, a4))
  {
    return 5;
  }

  v6(v5);
  return 0;
}

void sub_100009FF8(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v17 = v2;
  if (sub_10000717C(v17))
  {
    v5 = BKLogDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "Set";
      if (!v4)
      {
        v6 = "Notify";
      }

      v7 = @"YES";
      if (!v3)
      {
        v7 = @"NO";
      }

      *buf = 136315394;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Blanked: %@", buf, 0x16u);
    }

    if (v4)
    {
      v8 = sub_1000076E8();
      [v8 setBlanked:v3 != 0];
    }

    v9 = +[BKDisplayController sharedInstance];
    sub_10000F0AC(v9, 0, v3 != 0);

    if (qword_100125E08 != -1)
    {
      dispatch_once(&qword_100125E08, &stru_1000FA8F0);
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000A3E0;
    v19 = &unk_1000FCE78;
    v20 = v3 != 0;
    dispatch_async(qword_100125E00, buf);
  }

  else
  {
    v10 = BKLogDisplay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "Set";
      if (!v4)
      {
        v11 = "Notify";
      }

      *buf = 136315650;
      *&buf[4] = v11;
      if (v3)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@ Blanked: %@", buf, 0x20u);
    }

    v13 = sub_100007D54(v17, "BKDisplayNotifySetDisplayBlanked");
    v14 = v13;
    if (v4)
    {
      [v13 setBlanked:v3 != 0];
    }

    v15 = v3 != 0;
    v16 = +[BKDisplayController sharedInstance];
    sub_10000F0AC(v16, v17, v15);
  }
}

uint64_t sub_10000A3E0(uint64_t result)
{
  v1 = result;
  LODWORD(result) = dword_100124478;
  if (dword_100124478 != -1 || (notify_register_check("com.apple.springboard.hasBlankedScreen", &dword_100124478), result = dword_100124478, dword_100124478 != -1))
  {
    notify_set_state(result, *(v1 + 32));

    return notify_post("com.apple.springboard.hasBlankedScreen");
  }

  return result;
}

void sub_10000A460(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10 = v7;
  v9 = [v7 uniqueId];
  LODWORD(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_10000A500(void *a1)
{
  v1 = a1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100028174;
  v18 = sub_100028184;
  v19 = 0;
  v2 = +[CADisplay displays];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000A460;
  v11 = &unk_1000FA7B0;
  v3 = v1;
  v12 = v3;
  v13 = &v14;
  [v2 enumerateObjectsUsingBlock:&v8];

  if (!v15[5] && sub_10000717C(v3))
  {
    v4 = [CADisplay mainDisplay:v8];
    v5 = v15[5];
    v15[5] = v4;
  }

  v6 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v6;
}

void sub_10000A65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A674(mach_port_t a1, int a2, double a3, float a4, float a5, float a6)
{
  v8 = NDR_record;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 980665;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 17, 0x38u, 0, 0, 0, 0);
}

void sub_10000A700(void *a1, void *a2, void *a3, double *a4, _BYTE *a5, uint64_t a6)
{
  v22 = a1;
  [v22 bounds];
  v12 = v11;
  v14 = v13;
  BKSDisplayServicesGetExternalDisplayScale();
  if (a2)
  {
    *a2 = v12;
  }

  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    *a4 = v15;
  }

  if (a5)
  {
    v16 = [v22 nativeOrientation];
    *a5 = sub_10000A7CC(v16);
  }

  if (a6)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(a6 + 16) = _Q0;
  }
}

uint64_t sub_10000A7CC(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:kCADisplayOrientationRotation90])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:kCADisplayOrientationRotation180])
  {
    v2 = 2;
  }

  else
  {
    v2 = [v1 isEqualToString:kCADisplayOrientationRotation270];
  }

  return v2;
}

void sub_10000A868(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v4 = *(a1 + 4), (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = *(a1 + 36), v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && memchr((a1 + 40), 0, v4 - 40)))
  {
    if (*(a1 + 40))
    {
      v9 = [NSString stringWithUTF8String:a1 + 40];
    }

    else
    {
      v9 = 0;
    }

    v10 = +[BKHIDEventProcessorRegistry sharedInstance];
    v11 = [v10 eventProcessorOfClass:objc_opt_class()];

    v14 = 0;
    v15 = 0.0;
    v13 = 0;
    [v11 getStatus:&v14 presence:&v13 proximityInCentimeters:&v15 forDisplayUUID:v9];
    *(a2 + 36) = v14;
    *(a2 + 40) = v13;
    v12 = v15;
    *(a2 + 44) = v12;

    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 48;
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }
}

__CFString *sub_10000A9C8(void *a1)
{
  v1 = a1;
  if (sub_10000717C(v1))
  {
    v2 = @"mainDisplay";
  }

  else if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"testDisplay";
  }

  return v2;
}

uint64_t sub_10000AFA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B024(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10000B094(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = +[BKHIDEventProcessorRegistry sharedInstance];
    v4 = [v3 eventProcessorOfClass:objc_opt_class()];
    *(a2 + 36) = [v4 isSmartCoverClosed];

    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

void sub_10000B2E8(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = +[BKHIDEventProcessorRegistry sharedInstance];
    v4 = [v3 eventProcessorOfClass:objc_opt_class()];

    *(a2 + 36) = [v4 isObjectWithinProximity];
    *(a2 + 32) = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 4) = 40;
  }
}

uint64_t sub_10000B3DC(uint64_t a1)
{
  v2 = sub_10000C550(&qword_100124098, &qword_1000BF720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Region();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_10000B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Region();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

unint64_t sub_10000B60C()
{
  result = qword_100124080;
  if (!qword_100124080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100124080);
  }

  return result;
}

size_t sub_10000B658(size_t a1, int64_t a2, char a3)
{
  result = sub_10000B678(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000B678(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C550(&qword_1001240A8, &unk_1000BF730);
  v10 = *(_s15RegionContainerVMa() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(_s15RegionContainerVMa() - 8);
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

void sub_10000B850(uint64_t a1, void *a2)
{
  v4 = sub_10000C550(&qword_100124088, &qword_1000BF710);
  v5 = *(v4 - 8);
  v6 = (v5[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v89 = &v70 - v7;
  v8 = (*(*(sub_10000C550(&qword_100124090, &qword_1000BF718) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v88 = &v70 - v9;
  v86 = sub_10000C550(&qword_100124098, &qword_1000BF720);
  v10 = *(*(v86 - 8) + 64);
  v11 = (__chkstk_darwin)();
  v91 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = &v70 - v13;
  v90 = _s15RegionContainerVMa();
  v82 = *(v90 - 8);
  v14 = *(v82 + 64);
  v15 = __chkstk_darwin(v90);
  v94 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v78 = type metadata accessor for Region();
  v71 = *(v78 - 8);
  v19 = *(v71 + 64);
  v20 = __chkstk_darwin(v78);
  v85 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v84 = &v70 - v23;
  __chkstk_darwin(v22);
  v79 = &v70 - v24;
  v25 = String._bridgeToObjectiveC()();
  v93 = a2;
  [a2 removeAnnotationsForKeyPath:v25];

  v26 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    Region.init(x:y:)();
    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v28 = &_swiftEmptyArrayStorage;
      v80 = v4;
      if (i)
      {
        v96[0] = &_swiftEmptyArrayStorage;
        sub_10000B658(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return;
        }

        v28 = v96[0];
        v70 = v5;
        if (v26)
        {
          v72 = a1 & 0xFFFFFFFFFFFFFF8;
          v30 = _CocoaArrayWrapper.endIndex.getter();
          v29 = a1;
        }

        else
        {
          v29 = a1;
          v72 = a1 & 0xFFFFFFFFFFFFFF8;
          v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v31 = 0;
        v77 = v29 & 0xC000000000000001;
        v74 = v71 + 16;
        v73 = (v71 + 8);
        v81 = v30 & ~(v30 >> 63);
        v76 = v29;
        v75 = i;
        v32 = v84;
        v33 = (v71 + 16);
        while (v81 != v31)
        {
          v83 = v28;
          if (v77)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *(v72 + 16))
            {
              goto LABEL_41;
            }

            v34 = *(v29 + 8 * v31 + 32);
          }

          v35 = v34;
          v87 = v34;
          [v34 rect];
          Region.init(_:)();
          [v35 _exclusiveTouchNormalizedSubRectInReferenceSpace];
          v36 = v85;
          Region.init(_:)();
          v37 = v90;
          v38 = *v33;
          v39 = v78;
          (*v33)(&v18[*(v90 + 20)], v32, v78);
          a1 = v18;
          Region.subtract(_:)();
          v38(&v18[*(v37 + 24)], v36, v39);
          Region.subtract(_:)();
          *v18 = v31;
          Region.formUnion(_:)();
          v5 = v73;
          v40 = *v73;
          (*v73)(v36, v39);
          v40(v32, v39);

          v28 = v83;
          v96[0] = v83;
          v42 = v83[2];
          v41 = v83[3];
          v26 = v42 + 1;
          if (v42 >= v41 >> 1)
          {
            sub_10000B658(v41 > 1, v42 + 1, 1);
            v28 = v96[0];
          }

          ++v31;
          v28[2] = v26;
          sub_10000C5E4(v18, v28 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v42);
          v4 = v80;
          v29 = v76;
          if (v75 == v31)
          {
            v5 = v70;
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        a1 = v28[2];
        if (!a1)
        {
LABEL_37:

          (*(v71 + 8))(v79, v78);
          return;
        }

        v81 = v28 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
        v87 = (v5 + 4);
        v18 = &protocol witness table for Int;
        v83 = v28;
        while (a1 <= v28[2])
        {
          --a1;
          v44 = v94;
          sub_10000C648(v81 + *(v82 + 72) * a1, v94);
          v45 = v44 + *(v90 + 20);
          v46 = v88;
          Region.rects.getter();
          v85 = *v87;
          (v85)(v89, v46, v4);
          v5 = *(*(swift_getOpaqueTypeConformance2() + 8) + 8);
          dispatch thunk of Sequence.makeIterator()();
          sub_10000C550(&qword_1001240A0, &qword_1000BF728);
          swift_getAssociatedConformanceWitness();
          dispatch thunk of IteratorProtocol.next()();
          v84 = a1;
          if ((v99 & 1) == 0)
          {
            v48 = 0;
            while (1)
            {
              v47 = v48 + 1;
              if (__OFADD__(v48, 1))
              {
                break;
              }

              v50 = *v96;
              v49 = *&v96[1];
              v51 = [objc_opt_self() annotationWithRectangleSize:{v97, v98}];
              v52 = [objc_opt_self() relativeToTopLeftOfSuper:{v50, v49}];
              [v52 setDefinedInReferenceSpace:1];
              [v51 setLocation:v52];
              v53 = objc_opt_self();
              v54 = *v94;
              [v51 setStyleModifier:{objc_msgSend(v53, "colorVariationStyleWithIndex:", *v94)}];
              swift_unknownObjectRelease();
              v96[0] = 0;
              v96[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(24);

              v95 = v54;
              strcpy(v96, "hit-test-rgns.");
              HIBYTE(v96[1]) = -18;
              v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v55);

              v56._countAndFlagsBits = 0x2E6C6C75662ELL;
              v56._object = 0xE600000000000000;
              String.append(_:)(v56);
              v95 = v48;
              v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v57);

              v58 = String._bridgeToObjectiveC()();

              [v93 setAnnotation:v51 forKeyPath:v58];

              sub_10000C550(&qword_1001240A0, &qword_1000BF728);
              swift_getAssociatedConformanceWitness();
              dispatch thunk of IteratorProtocol.next()();
              ++v48;
              if (v99 == 1)
              {
                a1 = v84;
                goto LABEL_30;
              }
            }

            __break(1u);
            goto LABEL_36;
          }

          v47 = 0;
LABEL_30:
          v59 = v92;
          *&v92[*(v86 + 36)] = v47;
          sub_10000B3DC(v59);
          v60 = v94 + *(v90 + 24);
          v61 = v88;
          Region.rects.getter();
          (v85)(v89, v61, v4);
          dispatch thunk of Sequence.makeIterator()();
          dispatch thunk of IteratorProtocol.next()();
          if ((v99 & 1) == 0)
          {
            v62 = 0;
            while (1)
            {
              v26 = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                break;
              }

              v64 = *v96;
              v63 = *&v96[1];
              v5 = [objc_opt_self() annotationWithRectangleSize:{v97, v98}];
              v65 = [objc_opt_self() relativeToTopLeftOfSuper:{v64, v63}];
              [v65 setDefinedInReferenceSpace:1];
              [v5 setLocation:v65];
              [v5 setStyleModifier:{objc_msgSend(objc_opt_self(), "crosshatchedBackgroundStyle")}];
              swift_unknownObjectRelease();
              v96[0] = 0;
              v96[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(29);

              strcpy(v96, "hit-test-rgns.");
              HIBYTE(v96[1]) = -18;
              v95 = *v94;
              v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v66);

              v67._countAndFlagsBits = 0x6973756C6378652ELL;
              v67._object = 0xEB000000002E6576;
              String.append(_:)(v67);
              v95 = v62;
              v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v68);

              v69 = String._bridgeToObjectiveC()();

              [v93 setAnnotation:v5 forKeyPath:v69];

              dispatch thunk of IteratorProtocol.next()();
              ++v62;
              if (v99 == 1)
              {
                v4 = v80;
                a1 = v84;
                goto LABEL_22;
              }
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v26 = 0;
LABEL_22:
          v43 = v91;
          *&v91[*(v86 + 36)] = v26;
          sub_10000B3DC(v43);
          sub_10000C6AC(v94);
          v28 = v83;
          if (!a1)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }

      Region.init(x:y:)();
    }
  }
}

uint64_t sub_10000C550(uint64_t *a1, uint64_t *a2)
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

uint64_t _s15RegionContainerVMa()
{
  result = qword_100125D50;
  if (!qword_100125D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C5E4(uint64_t a1, uint64_t a2)
{
  v4 = _s15RegionContainerVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C648(uint64_t a1, uint64_t a2)
{
  v4 = _s15RegionContainerVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C6AC(uint64_t a1)
{
  v2 = _s15RegionContainerVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C734()
{
  result = type metadata accessor for Region();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10000EB64(id a1)
{
  v1 = objc_alloc_init(BKDisplayController);
  v2 = qword_100125D68;
  qword_100125D68 = v1;
}

void sub_10000EBA0(void *a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = a1;
  [v4 setTargetContextID:v3];
  [v4 setTargetSlotID:a2[1]];
}

id sub_10000EBFC(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000EC88;
  v3[3] = &unk_1000F9A88;
  v3[4] = a1;
  v1 = [BKSHIDEventHitTestLayerInformation build:v3];

  return v1;
}

void sub_10000EC88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[7];
  v24 = v4[6];
  v25 = v5;
  v6 = v4[9];
  v26 = v4[8];
  v27 = v6;
  v7 = v4[3];
  v20 = v4[2];
  v21 = v7;
  v8 = v4[5];
  v22 = v4[4];
  v23 = v8;
  [v3 setCumulativeLayerTransform:&v20];
  v9 = *(a1 + 32);
  v10 = v9[15];
  v24 = v9[14];
  v25 = v10;
  v11 = v9[17];
  v26 = v9[16];
  v27 = v11;
  v12 = v9[11];
  v20 = v9[10];
  v21 = v12;
  v13 = v9[13];
  v22 = v9[12];
  v23 = v13;
  [v3 setCumulativeContentsTransform:&v20];
  LODWORD(v14) = *(*(a1 + 32) + 24);
  [v3 setCumulativeOpacity:v14];
  [v3 setHasInsecureFilter:*(*(a1 + 32) + 289)];
  [v3 setDetectedOcclusion:*(*(a1 + 32) + 288)];
  v16 = *(a1 + 32);
  v17 = *(v16 + 16);
  if ((v17 & 8) != 0)
  {
    LODWORD(v15) = *(v16 + 292);
    [v3 setBackgroundAverage:v15];
    LODWORD(v18) = *(*(a1 + 32) + 296);
    [v3 setBackgroundStandardDeviation:v18];
    LODWORD(v19) = *(*(a1 + 32) + 300);
    [v3 setBackgroundAverageContrastThreshold:v19];
    v17 = *(*(a1 + 32) + 16);
  }

  [v3 setValidMask:v17];
}

id sub_10000ED90(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  objc_opt_self();
  v10 = [v8 hitTestInformationMask];
  v11 = [v9 count];
  v12 = v11;
  if ((a2 & 1) != 0 || v10 || v11 || a3)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    v13 = v14;
    if (v10)
    {
      if ((v10 & 2) != 0)
      {
        [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:kCAWindowServerHitTestCumulativeOpacity];
      }

      if ((v10 & 0x31) != 0)
      {
        [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kCAWindowServerHitTestCumulativeTransform];
      }

      if ((v10 & 4) != 0)
      {
        [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kCAWindowServerHitTestIsInsecureFiltered];
      }

      if ((v10 & 8) != 0)
      {
        [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kCAWindowServerHitTestWantsLayerBackgroundStatistics];
        v15 = [v8 backgroundStatisticsRegion];
        v16 = HIWORD(v15);
        v17 = [NSNumber numberWithUnsignedShort:v15];
        [v13 setObject:v17 forKeyedSubscript:kCAWindowServerHitTestLayerBackgroundTopEdgeInset];

        v18 = [NSNumber numberWithUnsignedShort:WORD1(v15)];
        [v13 setObject:v18 forKeyedSubscript:kCAWindowServerHitTestLayerBackgroundLeftEdgeInset];

        v19 = [NSNumber numberWithUnsignedShort:WORD2(v15)];
        [v13 setObject:v19 forKeyedSubscript:kCAWindowServerHitTestLayerBackgroundBottomEdgeInset];

        v20 = [NSNumber numberWithUnsignedShort:v16];
        [v13 setObject:v20 forKeyedSubscript:kCAWindowServerHitTestLayerBackgroundRightEdgeInset];

        [v8 backgroundStatisticsForeground];
        v21 = [NSNumber numberWithFloat:?];
        [v13 setObject:v21 forKeyedSubscript:@"hitTestBackgroundForeground"];

        [v8 backgroundStatisticsPassingContrast];
        v22 = [NSNumber numberWithFloat:?];
        [v13 setObject:v22 forKeyedSubscript:@"hitTestBackgroundPassingContrast"];

        [v8 backgroundStatisticsFailingContrast];
        v23 = [NSNumber numberWithFloat:?];
        [v13 setObject:v23 forKeyedSubscript:@"hitTestBackgroundFailingContrast"];
      }
    }

    if (a3)
    {
      [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kCAWindowServerHitTestWantsContextSecurityAnalysis];
    }

    if (a2)
    {
      [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kCAWindowServerHitTestIgnoreBlankingContext];
    }

    if (v12 >= 1)
    {
      [v13 setObject:v9 forKeyedSubscript:kCAWindowServerHitTestOptionExcludedContextIds];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_10000F0AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [*(a1 + 8) context];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) display:v5 didBecomeBlank:a3];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

void sub_10000FAE4(id a1, NSString *a2, _BKMousePointerServerClientPerDisplay *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(_BKMousePointerServerClientPerDisplay *)v4 renderingAssertion];
  [v5 invalidate];

  v6 = [(_BKMousePointerServerClientPerDisplay *)v4 modelUpdateAssertion];
  [v6 invalidate];

  v7 = [(_BKMousePointerServerClientPerDisplay *)v4 buttonDownRepositionUniqueIdentifierToAssertionMap];

  [v7 enumerateKeysAndObjectsUsingBlock:&stru_1000F9CD0];
}

id sub_10000FBE4(id a1, BKIOHIDService *a2)
{
  v2 = a2;
  if ([(BKIOHIDService *)v2 serviceStatus]== 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [BKSMousePointerDevice alloc];
    v5 = [(BKIOHIDService *)v2 senderDescriptor];
    v3 = [v4 initWithSenderDescriptor:v5];

    v6 = [(BKIOHIDService *)v2 uniqueProductIdentifier];
    [v3 setPreferenceKey:v6];

    v7 = [(BKIOHIDService *)v2 propertyForKey:@"Product"];
    [v3 setProductName:v7];
    v8 = [(BKIOHIDService *)v2 propertyForKey:@"Manufacturer"];
    [v3 setManufacturerName:v8];
    if ([(BKIOHIDService *)v2 eventSource]== 11 && [(BKIOHIDService *)v2 claimsToConformToUsagePage:13 usage:12])
    {
      [v3 setHasVirtualMouseButtons:1];
    }

    if ([(BKIOHIDService *)v2 eventSource]== 12)
    {
      v9 = [(BKIOHIDService *)v2 propertyForKey:@"VendorID"];
      v10 = objc_opt_class();
      v11 = v9;
      if (v10)
      {
        v12 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v14 = [v13 intValue];
      if (v14 == 1452 || v14 == 76)
      {
        [v3 setSupportsDragLock:1];
      }
    }

    if ([(BKIOHIDService *)v2 eventSource]== 12)
    {
      v15 = [(BKIOHIDService *)v2 propertyForKey:@"VendorID"];
      v16 = objc_opt_class();
      v17 = v15;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v20 = [(BKIOHIDService *)v2 propertyForKey:@"ProductID"];
      v21 = objc_opt_class();
      v22 = v20;
      if (v21)
      {
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      v25 = [v19 intValue];
      v26 = [v24 intValue];

      if (v25 == 1452 && (v26 & 0xFFFFFFFE) == 0x454)
      {
        [v3 setSupportsLightClick:1];
        [v3 setSupportsSystemHaptics:1];
      }
    }
  }

  return v3;
}

void sub_100010260(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) remoteTarget];
        [v8 pointerGlobalDevicePreferencesDidChange:*(a1 + 40)];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_100010574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001058C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000105A4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) globalDevicePreferences];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10001084C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010864(void *a1)
{
  v2 = [*(a1[4] + 8) preferencesForDevice:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100010984(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v5 = [*(a1 + 32) BOOLValue];
  if (v5 != [*(*(a1 + 40) + 32) containsObject:v11])
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = *(*(a1 + 40) + 32);
    if (v5)
    {
      if (!v7)
      {
        v8 = objc_alloc_init(NSMutableSet);
        v9 = *(a1 + 40);
        v10 = *(v9 + 32);
        *(v9 + 32) = v8;

        v7 = *(*(a1 + 40) + 32);
      }

      [v7 addObject:v11];
      if ([*(*(a1 + 40) + 32) count] == 1)
      {
        [v6 addGlobalDevicePreferencesObserver:*(a1 + 40)];
      }
    }

    else
    {
      [v7 removeObject:v11];
      if (![*(*(a1 + 40) + 32) count])
      {
        [v6 removeGlobalDevicePreferencesObserver:*(a1 + 40)];
      }
    }
  }
}

void sub_100010DB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  if (!v15)
  {
    v9 = [NSString stringWithFormat:@"we expect the controller to exist"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(*(a1 + 72));
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 32);
      *buf = 138544642;
      v17 = v10;
      v18 = 2114;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      v22 = 2114;
      v23 = @"BKMousePointerServiceServer.m";
      v24 = 1024;
      v25 = 281;
      v26 = 2114;
      v27 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100010F50);
  }

  [v15 getHitTestContextsAtPoint:*(a1 + 40) withAdditionalContexts:*(a1 + 48) onDisplay:*(a1 + 56) withCompletion:*(a1 + 64)];
}

void sub_100011050(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 remoteProcess];
  v8 = [v7 pid];

  v9 = *(a1 + 32);
  v10 = [v9 length];
  v11 = BKSDisplayUUIDMainKey;
  if (v10)
  {
    v11 = v9;
  }

  v12 = v11;

  [v6 setGlobalPointerEventRoutes:*(a1 + 40) forPID:v8 displayUUID:v12];
}

void sub_1000111FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 length];
  v8 = BKSDisplayUUIDMainKey;
  if (v7)
  {
    v8 = v5;
  }

  v13 = v8;

  v9 = [v6 infoForDisplayUUID:v13 createIfNeeded:0];

  v10 = [v9 buttonDownRepositionUniqueIdentifierToAssertionMap];
  v11 = [v10 objectForKey:*(a1 + 40)];
  v12 = v11;
  if (v11)
  {
    [v11 invalidate];
    [v10 removeObjectForKey:*(a1 + 40)];
    if (![v10 count])
    {
      [v9 setButtonDownRepositionUniqueIdentifierToAssertionMap:0];
    }
  }
}

void sub_1000114F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 40);
  v12 = [v11 length];
  v13 = BKSDisplayUUIDMainKey;
  if (v12)
  {
    v13 = v11;
  }

  v14 = v13;

  v15 = [v7 infoForDisplayUUID:v14 createIfNeeded:1];
  v16 = [v15 buttonDownRepositionUniqueIdentifierToAssertionMap];
  if (!v16)
  {
    v16 = [[NSMutableDictionary alloc] initWithCapacity:1];
    [v15 setButtonDownRepositionUniqueIdentifierToAssertionMap:v16];
  }

  v17 = [v16 objectForKey:*(a1 + 48)];

  if (!v17)
  {
    v18 = [*(*(a1 + 56) + 8) acquireButtonDownPointerRepositionAssertionForReason:*(a1 + 64) contextRelativePointerPosition:*(a1 + 72) onDisplay:v14 restrictingToPID:v10];
    if (v18)
    {
      [v16 setObject:v18 forKey:*(a1 + 48)];
    }
  }
}

void sub_100011734(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 remoteProcess];
  v8 = [v7 pid];

  if (v8 <= 0)
  {
    v9 = BKLogMousePointer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "setSuppressAllEvents: bad pid:%d", v10, 8u);
    }
  }

  else
  {
    [v6 setEventsDisabled:objc_msgSend(*(a1 + 32) pid:{"BOOLValue"), v8}];
  }
}

void sub_100011A60(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  [*(a1 + 64) doubleValue];
  [v12 setContextRelativePointerPosition:v8 withInitialVelocity:v9 onDisplay:v10 withDecelerationRate:v7 restrictingToPID:objc_msgSend(v5 auditPID:{"pid"), v11}];
}

void sub_100011C60(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = a1[4];
  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  [v8 setContextRelativePointerPosition:a1[5] onDisplay:a1[6] withAnimationParameters:a1[7] restrictingToPID:v7 auditPID:{objc_msgSend(v5, "pid")}];
}

void sub_100011E24(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [v6 length];
  v10 = BKSDisplayUUIDMainKey;
  if (v9)
  {
    v10 = v6;
  }

  v17 = v10;

  [*(a1 + 40) bs_CGPointValue];
  v12 = v11;
  v14 = v13;
  v15 = *(a1 + 48);
  v16 = [v7 pid];

  [v8 setPointerPosition:v17 onDisplay:v15 withAnimationParameters:v16 auditPID:{v12, v14}];
}

void sub_100011FC0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 remoteProcess];
  [v6 setGlobalPointerPosition:v7 process:{*(a1 + 32), *(a1 + 40)}];
}

void sub_100012140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100012158(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) normalizedGlobalPointerPosition];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

void sub_10001229C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000122B4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) globalPointerPosition];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

void sub_100012388(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [*(a1 + 32) _pointerDevicesFromIOHIDServices:*(a1 + 40)];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(*(a1 + 32) + 24);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v9 + 1) + 8 * v7) remoteTarget];
          [v8 pointingDevicesDidChange:v2];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

void sub_100012884(uint64_t a1, void *a2, unsigned int a3, int64_t a4, CGFloat *a5, int64_t a6)
{
  if (a1)
  {
    v12 = objc_alloc_init(BKHitTestResultPathLocation);
    v16 = v12;
    if (v12)
    {
      v12->_pathIndex = a4;
      v13 = *a5;
      v14 = *(a5 + 1);
      v15 = *(a5 + 2);
      v12->_pathLocation.preciseLocation.y = a5[6];
      *&v12->_pathLocation.hitTestLocation.y = v15;
      *&v12->_pathLocation.location.y = v14;
      *&v12->_pathLocation.locationsAreValid = v13;
      v12->_contextRelationship = a6;
    }

    sub_100012938(a1, a2, a3, v12);
  }
}

void sub_100012938(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v11 = objc_alloc_init(BKHitTestResultKey);
  if (v11)
  {
    objc_storeStrong(&v11->_destination, a2);
    if (a3)
    {
      v11->_userIdentifier = a3;
    }
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
    v9 = objc_alloc_init(BSMutableOrderedDictionary);
    v10 = *(a1 + 24);
    *(a1 + 24) = v9;

    v8 = *(a1 + 24);
  }

  [v8 addObject:a4 toCollectionClass:objc_opt_class() forKey:v11];
}

void *sub_1000129FC(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result[3];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100012A74;
    v3[3] = &unk_1000F9CF8;
    v3[4] = a2;
    return [v2 enumerateKeysAndObjectsWithIndexesUsingBlock:v3];
  }

  return result;
}

void sub_100012A74(uint64_t a1, id *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = a2;
    a2 = a2[2];
    v4 = *(v3 + 2);
  }

  v5 = a2;
  (*(v2 + 16))(v2);
}

id sub_10001312C(uint64_t a1)
{
  v9 = @"keyboardHIDEvent";
  v2 = [NSString stringWithFormat:@"0x%02x", *(a1 + 32), @"usage"];
  v7[1] = @"down";
  v8[0] = v2;
  v3 = [NSNumber numberWithInt:*(a1 + 34)];
  v8[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  return v5;
}

id sub_100013248(uint64_t a1)
{
  v7 = @"volumeDownButtonEvent";
  v5 = @"down";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v6 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v8 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v3;
}

id sub_100013334(uint64_t a1)
{
  v7 = @"volumeUpButtonEvent";
  v5 = @"down";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v6 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v8 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v3;
}

id sub_100013420(uint64_t a1)
{
  v7 = @"PowerButtonEvent";
  v5 = @"down";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v6 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v8 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v3;
}

id sub_10001350C(uint64_t a1)
{
  os_unfair_lock_lock(&stru_100125E20);
  v2 = *&dword_100125E24;
  os_unfair_lock_unlock(&stru_100125E20);
  v3 = v2 == 0.0;
  v4 = +[BKDisplayBrightnessController sharedInstance];
  [v4 brightnessLevel];
  v6 = v5;

  v20 = @"cameraShutterButtonEvent";
  v18[0] = @"event";
  v7 = [NSString stringWithFormat:@"0x%02x", *(a1 + 32), @"usage"];
  v16[1] = @"down";
  v17[0] = v7;
  v8 = [NSNumber numberWithInt:*(a1 + 34)];
  v17[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v9;
  v18[1] = @"displayBrightness";
  LODWORD(v10) = v6;
  v11 = [NSNumber numberWithFloat:v10];
  v19[1] = v11;
  v18[2] = @"backlight";
  v12 = [NSNumber numberWithBool:v3];
  v19[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  return v14;
}

id sub_100013708(uint64_t a1)
{
  v2 = *(a1 + 32);
  IntegerValue = IOHIDEventGetIntegerValue();
  v4 = *(a1 + 32);
  v5 = IOHIDEventGetIntegerValue();
  v6 = *(a1 + 32);
  v7 = IOHIDEventGetIntegerValue() != 0;
  v8 = +[NSMutableDictionary dictionary];
  v9 = [NSString stringWithFormat:@"0x%02x", IntegerValue];
  [v8 setObject:v9 forKeyedSubscript:@"usagePage"];

  v10 = [NSString stringWithFormat:@"0x%02x", v5];
  [v8 setObject:v10 forKeyedSubscript:@"usage"];

  v11 = [NSNumber numberWithInt:v7];
  [v8 setObject:v11 forKeyedSubscript:@"down"];

  v12 = *(a1 + 32);
  v13 = [NSNumber numberWithInt:IOHIDEventGetIntegerValue()];
  [v8 setObject:v13 forKeyedSubscript:@"count"];

  v14 = *(a1 + 32);
  v15 = [NSNumber numberWithInt:IOHIDEventGetIntegerValue()];
  [v8 setObject:v15 forKeyedSubscript:@"longPress"];

  v16 = *(a1 + 32);
  Phase = IOHIDEventGetPhase();
  if (Phase)
  {
    v18 = [NSNumber numberWithUnsignedShort:Phase];
    [v8 setObject:v18 forKeyedSubscript:@"phase"];
  }

  v21 = @"buttonEvent";
  v22 = v8;
  v19 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  return v19;
}

id sub_100013960(uint64_t a1)
{
  v2 = *(a1 + 32);
  IOHIDEventGetFloatValue();
  v4 = v3;
  v5 = *(a1 + 32);
  IOHIDEventGetFloatValue();
  v7 = v6;
  v8 = *(a1 + 32);
  IOHIDEventGetFloatValue();
  v10 = v9;
  v11 = *(a1 + 32);
  IntegerValue = IOHIDEventGetIntegerValue();
  v22 = @"gyro";
  v20[0] = @"x";
  v13 = [NSNumber numberWithDouble:v4];
  v21[0] = v13;
  v20[1] = @"y";
  v14 = [NSNumber numberWithDouble:v7];
  v21[1] = v14;
  v20[2] = @"z";
  v15 = [NSNumber numberWithDouble:v10];
  v21[2] = v15;
  v20[3] = @"type";
  v16 = [NSNumber numberWithUnsignedInt:IntegerValue];
  v21[3] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
  v23 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  return v18;
}

id sub_100013B28(uint64_t a1)
{
  v1 = *(a1 + 32);
  IOHIDEventGetFloatValue();
  v8 = @"ambientLightSensor";
  v6 = @"level";
  v2 = [NSNumber numberWithDouble:?];
  v7 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v9 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  return v4;
}

void sub_100013FA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedLongLongValue];
  v7 = *(a1 + 32);
  v8 = [NSString stringWithFormat:@"0x%llX", v6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001409C;
  v10[3] = &unk_1000FD128;
  v11 = v5;
  v12 = *(a1 + 32);
  v9 = v5;
  [v7 appendBodySectionWithName:v8 multilinePrefix:0 block:v10];
}

void sub_10001409C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100014124;
  v2[3] = &unk_1000F9E00;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void sub_100014124(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 unsignedIntValue];
  v6 = *(a1 + 32);
  v7 = [NSString stringWithFormat:@"page:0x%X usage:0x%X", HIWORD(v5), v5];
  v8 = [v6 appendObject:v9 withName:v7];
}

void sub_1000141C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v9)
  {
    [v9 removeObjectForKey:v8];
    if (![v9 count])
    {
      [*(a1 + 8) removeObjectForKey:v7];
    }
  }
}

void sub_100014328(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) delegate];
  (*(v1 + 16))(v1, v2);
}

void sub_100014484(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"0x%x", a2];
  v3 = [v2 appendObject:v4 withName:@"port"];
}

void sub_100014644(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 16);
  v4 = (v2 + 16);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

void sub_1000148DC(uint64_t a1)
{
  v2 = BKLogDetailed();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v8 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "BKHIDEventClient died (pid): %{public}@", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014B00;
  v5[3] = &unk_1000F9E50;
  v6 = v3;
  [v6 _queue_performDelegateCallout:v5];
}

void sub_1000149E8(uint64_t a1)
{
  v2 = BKLogDetailed();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v8 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "BKHIDEventClient died (port): %{public}@", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014AF4;
  v5[3] = &unk_1000F9E50;
  v6 = v3;
  [v6 _queue_performDelegateCallout:v5];
}

void sub_100014DE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) remoteProcess];
  v5 = [v4 pid];
  v6 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___BKSSystemShellClientInterface];
  v7 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___BKSSystemShellServerInterface];
  v8 = [BSMutableServiceInterface interfaceWithIdentifier:BKSSystemShellShellServiceName];
  [v8 setServer:v7];
  [v8 setClient:v6];
  v9 = +[BSServiceQuality userInitiated];
  [v3 setServiceQuality:v9];

  [v3 setInterface:v8];
  [v3 setInterfaceTarget:*(*(a1 + 40) + 24)];
  [v3 setTargetQueue:*(*(a1 + 40) + 32)];
  objc_initWeak(&location, *(a1 + 40));
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015020;
  v13[3] = &unk_1000F9F38;
  objc_copyWeak(&v14, &location);
  v15 = v5;
  [v3 setInterruptionHandler:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000150F4;
  v10[3] = &unk_1000F9F38;
  objc_copyWeak(&v11, &location);
  v12 = v5;
  [v3 setInvalidationHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_100014FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = BKLogSystemShell();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[Shell] interrupted connection pid:%d", v5, 8u);
    }

    [WeakRetained[3] systemShellDidTerminate:*(a1 + 40)];
  }
}

void sub_1000150F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = BKLogSystemShell();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[Shell] invalidated connection pid:%d", v5, 8u);
    }

    [WeakRetained[3] systemShellDidTerminate:*(a1 + 40)];
  }
}

void sub_100015330(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 remoteProcess];
  v6 = [v5 pid];
  v7 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___BKSSystemShellDataMigrationCheckInClientInterface];
  v8 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___BKSSystemShellDataMigrationCheckInServerInterface];
  v9 = [BSMutableServiceInterface interfaceWithIdentifier:BKSSystemShellDataMigrationCheckInServiceName];
  [v9 setServer:v8];
  [v9 setClient:v7];
  v10 = +[BSServiceQuality userInitiated];
  [v4 setServiceQuality:v10];

  [v4 setInterface:v9];
  [v4 setInterfaceTarget:*(*(a1 + 40) + 24)];
  v11 = +[BKSystemShellSentinel dataMigrationQueue];
  [v4 setTargetQueue:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015514;
  v14[3] = &unk_1000F9EE8;
  v15 = v6;
  [v4 setInterruptionHandler:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000155BC;
  v12[3] = &unk_1000F9EE8;
  v13 = v6;
  [v4 setInvalidationHandler:v12];
}

void sub_100015514(uint64_t a1)
{
  v2 = BKLogSystemShell();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[DataMigrationCheckIn] connection terminated pid:%d", v4, 8u);
  }
}

void sub_1000155BC(uint64_t a1)
{
  v2 = BKLogSystemShell();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[DataMigrationCheckIn] connection invalidated pid:%d", v4, 8u);
  }
}

void sub_100015B9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setBundleIdentifier:v3];
  [v4 setBundlePath:*(a1 + 40)];
  [v4 setJobLabel:*(a1 + 48)];
  [v4 setSystemIdleSleepInterval:*(a1 + 64)];
  [v4 setWatchdogType:*(a1 + 72)];
  v5 = [*(a1 + 56) remoteProcess];
  [v4 setPid:{objc_msgSend(v5, "pid")}];
}

void sub_100016038(uint64_t a1, void *a2)
{
  v3 = BKSSystemShellServiceDomainName;
  v4 = a2;
  [v4 setDomain:v3];
  [v4 setService:BKSSystemShellShellServiceName];
  [v4 setDelegate:*(a1 + 32)];
}

void sub_1000160B0(uint64_t a1, void *a2)
{
  v3 = BKSSystemShellServiceDomainName;
  v4 = a2;
  [v4 setDomain:v3];
  [v4 setService:BKSSystemShellDataMigrationCheckInServiceName];
  [v4 setDelegate:*(a1 + 32)];
}

uint64_t _linkguard_warnlisted_image_handler(const char *a1, const char *a2)
{
  v4 = getenv("BACKBOARDD_ALLOW_RISKY_UIKIT_LINKING");
  if (!v4 || (result = atoi(v4), result < 1))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *__str = 0u;
    v11 = 0u;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v7 = a1;
      v8 = 2082;
      v9 = a2;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "you may not link <%{public}s> into backboardd (source:%{public}s)", buf, 0x16u);
    }

    snprintf(__str, 0x100uLL, "you may not link <%s> into backboardd (source:%s)", a1, a2);
    abort_with_reason();
  }

  return result;
}

void sub_100016250(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    BSContinuousMachTimeNow();
    v10 = v9;
    v11 = BKLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "start %{public}@...", &v16, 0xCu);
    }

    if (a3)
    {
      kdebug_trace();
      v8[2](v8);
      kdebug_trace();
    }

    else
    {
      v8[2](v8);
    }

    BSContinuousMachTimeNow();
    v13 = v12;
    v14 = *(a1 + 8);
    v15 = BKLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543874;
      v17 = v7;
      v18 = 2048;
      v19 = v13 - v10;
      v20 = 2048;
      v21 = v13 - v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "      %{public}@ ready in %gs. overall %gs", &v16, 0x20u);
    }
  }
}

void sub_100016410(uint64_t a1)
{
  v2 = dispatch_get_global_queue(33, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000164B4;
  block[3] = &unk_1000FD150;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1000164B4(uint64_t a1)
{
  v2 = [[RBSTerminateRequest alloc] initForAllManagedWithReason:*(a1 + 32)];
  v7 = 0;
  v3 = [v2 execute:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = BKLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "failed to clear the board for %{public}@ : %{public}@", buf, 0x16u);
    }
  }
}

id sub_1000165B4(uint64_t a1)
{
  result = [*(a1 + 32) isRequired];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000165E8(uint64_t a1)
{
  v2 = dispatch_block_create(0, &stru_1000F9F58);
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000166AC;
  v5[3] = &unk_1000F9FC0;
  v6 = v3;
  v7 = v2;
  v4 = v2;
  [v6 launchPreboardWithCompletion:v5];
  dispatch_block_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_1000166AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "LA PreBoard launch failed: %{public}@", &v5, 0xCu);
    }

    [*(a1 + 32) terminateWithCompletion:&stru_1000F9F98];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001678C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = BKLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "LA PreBoard termination failed: %{public}@", &v4, 0xCu);
  }
}

void sub_100016840(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_class())
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    +[LAPreboard sharedInstance];
    *buf = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1000165B4;
    v12 = &unk_1000FD178;
    v3 = v14 = &v15;
    v13 = v3;
    if (v2)
    {
      sub_100016250(v2, @"Check for Local Authentication", 0, buf);
    }

    if (*(v16 + 24) == 1)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000165E8;
      v7[3] = &unk_1000FD150;
      v4 = v3;
      v8 = v4;
      if (v2)
      {
        sub_100016250(v2, @"LA PreBoard launch", 0, v7);
        v4 = v8;
      }
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v5 = BKLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LA PreBoard not available", buf, 2u);
    }
  }

  sub_100016250(*(a1 + 32), @"Data Migration", 730464504, &stru_1000F9FE0);
  v6 = *(a1 + 32);
  if (v6)
  {

    sub_100016250(v6, @"Bootstrap system shells", 0, &stru_1000FA000);
  }
}

void sub_100016A80(id a1)
{
  v1 = +[BKSystemShellSentinel sharedInstance];
  [v1 dataMigratorDidComplete];
}

void sub_100016AC8(id a1)
{
  v1 = objc_alloc_init(BKMigrator);
  [(BKMigrator *)v1 migrateIfNecessary];
}

uint64_t start(uint64_t a1, CFIndex *a2)
{
  kdebug_trace();
  _set_user_dir_suffix();
  v3 = pthread_set_fixedpriority_self();
  if (v3)
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v40 = *__error();
      LODWORD(v50.version) = 67109120;
      HIDWORD(v50.version) = v40;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "pthread_set_fixedpriority_self failed: %{darwin.errno}d", &v50, 8u);
    }
  }

  *__relative_priority = 0;
  v5 = pthread_self();
  if (pthread_get_qos_class_np(v5, &__relative_priority[1], __relative_priority) || pthread_set_qos_class_self_np(QOS_CLASS_USER_INTERACTIVE, 0))
  {
    v6 = BKLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v39 = *__error();
      LODWORD(v50.version) = 67109120;
      HIDWORD(v50.version) = v39;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "pthread_set_qos failed: %{darwin.errno}d", &v50, 8u);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  if (setiopolicy_np(9, 0, 1) < 0)
  {
    v8 = BKLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v41 = *__error();
      LODWORD(v50.version) = 67109120;
      HIDWORD(v50.version) = v41;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "setiopolicy_np failed: %{darwin.errno}d", &v50, 8u);
    }
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [BKIgnition alloc];
  v11 = [NSString stringWithUTF8String:*a2];
  if (v10)
  {
    v50.version = v10;
    v50.info = BKIgnition;
    v10 = [(CFRunLoopObserverContext *)&v50 init];
    if (v10)
    {
      v12 = BKLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "starting %{public}@...", buf, 0xCu);
      }

      BSContinuousMachTimeNow();
      v10->_startTime = v13;
    }
  }

  sub_100016250(v10, @"prewarm oscard where available", 730464460, &stru_1000FA020);
  sub_100016250(v10, @"CoreAccessories", 730464464, &stru_1000FA080);
  v14 = v10;
  v15 = +[BKFirstBootDetector sharedInstance];
  v16 = [v15 isFirstBoot];

  if ((v16 & 1) == 0)
  {
    v17 = [NSString stringWithFormat:@"%s respawn", *a2];
    v18 = [NSString stringWithFormat:@"clearing the board for %@", v17];
    v50.version = _NSConcreteStackBlock;
    v50.info = 3221225472;
    v50.retain = sub_100016410;
    v50.release = &unk_1000FD150;
    v19 = v17;
    v50.copyDescription = v19;
    copyDescription = v19;
    if (v14)
    {
      sub_100016250(v14, v18, 0, &v50);
      copyDescription = v50.copyDescription;
    }
  }

  v50.version = 0;
  v50.info = &v50;
  v50.retain = 0x3032000000;
  v50.release = sub_1000175D0;
  v50.copyDescription = sub_1000175E0;
  v51 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000175E8;
  v46[3] = &unk_1000FD178;
  v21 = v14;
  v47 = v21;
  v48 = &v50;
  sub_100016250(v21, @"HID system", 730464468, v46);
  if (v21)
  {
    sub_100016250(v21, @"AttentionAwareness", 0, &stru_1000FA0A0);
  }

  sub_100016250(v21, @"GS", 730464472, &stru_1000FA0C0);
  v22 = +[BKSecurityManager sharedInstance];
  sub_100016250(v21, @"window server", 730464476, &stru_1000FA0E0);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000176D4;
  v45[3] = &unk_1000FBFB8;
  v45[4] = &v50;
  sub_100016250(v21, @"HID connection manager", 730464480, v45);
  sub_100016250(v21, @"backlight", 730464484, &stru_1000FA100);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000176E4;
  v44[3] = &unk_1000FBFB8;
  v44[4] = &v50;
  sub_100016250(v21, @"HID event processing", 730464492, v44);
  sub_100016250(v21, @"ButtonHaptics", 730464488, &stru_1000FA120);
  sub_100016250(v21, @"ALS sync", 730464496, &stru_1000FA140);
  sub_100016250(v21, @"display MiG server", 730464500, &stru_1000FA160);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000176F4;
  v43[3] = &unk_1000FBFB8;
  v43[4] = &v50;
  if (v21)
  {
    sub_100016250(v21, @"HID server", 0, v43);
    sub_100016250(v21, @"OS watchdog", 0, &stru_1000FA180);
  }

  v23 = +[BKUserEventTimer sharedInstance];
  _BKHIDSetUserEventNotifier();

  if (v21)
  {
    sub_100016250(v21, @"system shell servers", 0, &stru_1000FA1A0);
  }

  v24 = v21;
  v25 = +[BKSystemShellSentinel dataMigrationQueue];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100016840;
  v53 = &unk_1000FD150;
  v54 = v24;
  v26 = v24;
  dispatch_async(v25, buf);

  v27 = +[BKSystemShellSentinel sharedInstance];
  [v27 startServerWithDataMigration];

  sub_100016250(v26, @"Accessibility", 730464508, &stru_1000FA1C0);
  if (v21)
  {
    sub_100016250(v26, @"misc services", 0, &stru_1000FA1E0);
    sub_100016250(v26, @"light source support", 0, &stru_1000FA200);
    v28 = @"startup complete";
    v29 = BKLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      BSContinuousMachTimeNow();
      v31 = v30 - v26[1];
      *buf = 138543618;
      *&buf[4] = @"startup complete";
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@. %gs elapsed", buf, 0x16u);
    }
  }

  else
  {
    v42 = @"startup complete";
  }

  _Block_object_dispose(&v50, 8);
  objc_autoreleasePoolPop(v9);
  if (v7)
  {
    pthread_set_qos_class_self_np(__relative_priority[1], __relative_priority[0]);
  }

  if (!v3)
  {
    pthread_set_timeshare_self();
  }

  kdebug_trace();
  CFRunLoopGetCurrent();
  if (!_CFRunLoopSetPerCalloutAutoreleasepoolEnabled())
  {
    Current = CFRunLoopGetCurrent();
    Mutable = CFArrayCreateMutable(0, 0, 0);
    v50.version = 0;
    v50.info = Mutable;
    v50.retain = &_CFRetain;
    v50.release = &_CFRelease;
    v50.copyDescription = &CFCopyDescription;
    v34 = CFRunLoopObserverCreate(0, 1uLL, 1u, -2147483647, sub_100077DB8, &v50);
    v35 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0x7FFFFFFFLL, sub_100077DB8, &v50);
    CFRunLoopAddObserver(Current, v34, kCFRunLoopCommonModes);
    CFRunLoopAddObserver(Current, v35, kCFRunLoopCommonModes);
    CFRelease(Mutable);
    if (!CFRunLoopContainsObserver(Current, v34, kCFRunLoopDefaultMode))
    {
      CFRunLoopAddObserver(Current, v34, kCFRunLoopDefaultMode);
      CFRunLoopAddObserver(Current, v35, kCFRunLoopDefaultMode);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      CFRelease(v35);
    }
  }

    ;
  }

  v36 = BKLogCommon();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v38 = *a2;
    LODWORD(v50.version) = 136446210;
    *(&v50.version + 4) = v38;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}s exiting...\n", &v50, 0xCu);
  }

  return 0;
}

uint64_t sub_1000175D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000175E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017E54;
  v5[3] = &unk_1000FBFB8;
  v3 = *(a1 + 40);
  v5[4] = v3;
  if (v2)
  {
    sub_100016250(v2, @"HID system open", 0, v5);
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017EA4;
  v4[3] = &unk_1000FBFB8;
  v4[4] = v3;
  if (v2)
  {
    sub_100016250(v2, @"HID system start", 0, v4);
  }
}

void sub_100017704(id a1)
{
  if (&_LSSStartServer)
  {
    LSSStartServer();
  }
}

void sub_10001772C(id a1)
{
  v1 = +[BKSecureDrawingMonitor sharedInstance];
  [v1 startMonitoringSecureDrawing];

  v2 = +[BKTouchDeliveryPolicyServer sharedServer];
  [v2 run];

  v3 = +[BKTouchDeliveryObservationManager sharedInstance];
}

void sub_100017794(id a1)
{
  if (qword_100126030 != -1)
  {
    dispatch_once(&qword_100126030, &stru_1000FC138);
  }
}

void sub_1000177BC(id a1)
{
  v1 = +[BKSystemShellSentinel sharedInstance];
  [v1 startServerWithoutDataMigration];

  v2 = +[BKAlternateSystemAppServer sharedInstance];
  [v2 run];
}

void sub_100017828(id a1)
{
  wd_endpoint_set_platform_controller();
  v1 = objc_alloc_init(BKWatchdogService);
  wd_endpoint_register();
  [(BKWatchdogService *)v1 registerClientsForMonitoring];
  v10 = v1;
  v2 = v1;
  wd_endpoint_set_alive_func();
  wd_endpoint_activate();

  v3 = GSRegisterPurpleNamedPort();
  v4 = [BSDispatchQueueAttributes serial:_NSConcreteStackBlock];
  v5 = [v4 serviceClass:25];
  v6 = BSDispatchQueueCreate();

  v7 = dispatch_source_create(&_dispatch_source_type_mach_recv, v3, 0, v6);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10008C184;
  handler[3] = &unk_1000FCB40;
  v12 = v3;
  dispatch_source_set_cancel_handler(v7, handler);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008C1A4;
  v9[3] = &unk_1000FD150;
  v10 = v7;
  v8 = v7;
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(v8);
}

void sub_100017A08(id a1)
{
  v1 = sub_1000300C0("BKDisplayServices MiG Server");
  v2 = qword_100125DB0;
  qword_100125DB0 = v1;
}

void sub_100017A58(id a1)
{
  v1 = +[BKDisplayBrightnessUpdateTransactionManager sharedInstance];
  [v1 synchronizeALSPreferencesAndSystemDisplayBrightness];
}

void sub_100017AC8(id a1)
{
  v1 = +[BKDisplayBrightnessController sharedInstance];
  v2 = qword_100125E18;
  qword_100125E18 = v1;
  v3 = v1;

  v4 = [v3 propertyForKey:@"DisplayBrightnessFactor"];
  v5 = objc_opt_class();

  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    os_unfair_lock_lock(&stru_100125E20);
    [v8 floatValue];
    dword_100125E24 = v9;
    os_unfair_lock_unlock(&stru_100125E20);
  }

  v20[0] = BKDefaultKeyALSEnabled;
  v20[1] = @"BKALSWeightMax";
  v21[0] = @"DisplayBrightnessAuto";
  v21[1] = @"DisplayBrightnessAutoWeightMax";
  v20[2] = @"BKALSWeightMin";
  v20[3] = @"BKALSIntPeriod";
  v21[2] = @"DisplayBrightnessAutoWeightMin";
  v21[3] = @"ALSIntPeriod";
  v20[4] = @"BKALSIntPeriodOrientationEnabled";
  v20[5] = @"BKALSIntPeriodOrientationLandscape";
  v21[4] = @"ALSIntPeriodOrientationEnabled";
  v21[5] = @"ALSIntPeriodOrientationLandscape";
  v20[6] = @"BKALSIntPeriodOrientationPortrait";
  v20[7] = @"BKALSIntPeriodOrientationPortraitInv";
  v21[6] = @"ALSIntPeriodOrientationPortrait";
  v21[7] = @"ALSIntPeriodOrientationPortraitInv";
  v20[8] = @"BKHIDSessionLogLevel";
  v20[9] = @"BKALSFadeSlope";
  v21[8] = @"LogLevel";
  v21[9] = @"DisplayBrightnessFadeSlope";
  v20[10] = @"BKHIDALSInternalSettings";
  v21[10] = @"ALSInternalSettings";
  v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:11];
  v11 = qword_100126090;
  qword_100126090 = v10;

  v12 = +[BKSDefaults localDefaults];
  v13 = [v12 ALSEpoch];
  if (v13 <= 0)
  {
    v14 = v13;
    v15 = BKLogDetailed();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v23 = v14;
      v24 = 2048;
      v25 = 1;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Resetting ALS preferences on upgrade from epoch %ld to %ld", buf, 0x16u);
    }

    [v12 setALSUserPreferences:0];
    [v12 setALSEnabled:1];
    [v12 setALSEpoch:1];
    sub_100077C1C();
  }

  sub_100077D2C();
  sub_100077A98(0);
  v16 = +[BKSDefaults localDefaults];
  v17 = [NSString stringWithUTF8String:"ALSEnabled"];
  v18 = [v16 observeDefault:v17 onQueue:&_dispatch_main_q withBlock:&stru_1000FC5C8];

  v19 = +[BKDisplayBrightnessController sharedInstance];
}

void sub_100017E24(id a1)
{
  if (qword_100125DD8 != -1)
  {
    dispatch_once(&qword_100125DD8, &stru_1000FA8B0);
  }
}

void sub_100017E54(uint64_t a1)
{
  v2 = +[BKHIDSystemInterface sharedInstance];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100017EB8(id a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.oscard", 0, 2uLL);
  if (mach_service)
  {
    connection = mach_service;
    xpc_connection_set_event_handler(mach_service, &stru_1000FA060);
    xpc_connection_activate(connection);
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_connection_send_message(connection, v2);

    mach_service = connection;
  }
}

void sub_100017F44(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = BKLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "oscard connection event: %{public}@", &v4, 0xCu);
  }
}

void sub_1000181E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v99 = v3;
    v5 = +[NSUserDefaults standardUserDefaults];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v123[0] = @"com.apple.backboardd.trackpadPreferences";
    v123[1] = @"com.apple.backboardd.magicMousePreferences";
    v123[2] = @"com.apple.backboardd.ordinaryMousePreferences";
    obj = [NSArray arrayWithObjects:v123 count:3];
    v103 = a1;
    v106 = [obj countByEnumeratingWithState:&v112 objects:v124 count:16];
    if (v106)
    {
      v104 = *v113;
      do
      {
        for (i = 0; i != v106; i = i + 1)
        {
          if (*v113 != v104)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v112 + 1) + 8 * i);
          v8 = [v7 componentsSeparatedByString:@"."];
          v9 = [v8 lastObject];
          v10 = [NSString stringWithFormat:@"BKAnalytics-LastSentDate-%@", v9];

          v11 = [v5 objectForKey:v10];
          v12 = objc_opt_class();
          v13 = v11;
          if (v12)
          {
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if (v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = +[NSDate distantPast];
          }

          v17 = v16;

          [v17 timeIntervalSinceNow];
          if (v18 > 31540000.0)
          {
            [v5 removeObjectForKey:v10];
            sub_100018DE0(a1, 0, v7);
          }

          v19 = sub_100018F6C(v7);
          v20 = [v5 objectForKey:v19];
          v21 = objc_opt_class();
          v22 = v20;
          if (v21)
          {
            if (objc_opt_isKindOfClass())
            {
              v23 = v22;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;

          if (v24)
          {
            v25 = v5;
            v26 = [*(a1 + 16) dateByAddingUnit:16 value:92 toDate:v17 options:1024];
            if ([*(a1 + 16) compareDate:v26 toDate:v24 toUnitGranularity:16] == -1)
            {
              v100 = sub_100018EE0(v7);
              v27 = [v25 objectForKey:?];
              v28 = objc_opt_class();
              v29 = v27;
              if (v28)
              {
                if (objc_opt_isKindOfClass())
                {
                  v30 = v29;
                }

                else
                {
                  v30 = 0;
                }
              }

              else
              {
                v30 = 0;
              }

              v31 = v30;

              if (v31)
              {
                AnalyticsSendEvent();
                [v25 setObject:v24 forKey:v10];
              }

              a1 = v103;
            }

            v5 = v25;
          }
        }

        v106 = [obj countByEnumeratingWithState:&v112 objects:v124 count:16];
      }

      while (v106);
    }

    v32 = [*(a1 + 24) availableDevices];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v33 = [v32 countByEnumeratingWithState:&v108 objects:v122 count:16];
    v4 = v99;
    if (v33)
    {
      v34 = v33;
      v35 = *v109;
      obja = v32;
      v105 = *v109;
      do
      {
        v36 = 0;
        v107 = v34;
        do
        {
          if (*v109 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v108 + 1) + 8 * v36);
          if ([v37 eventSource] == 12)
          {
            if (!AnalyticsIsEventUsed())
            {
              goto LABEL_88;
            }

            v38 = [NSMutableDictionary dictionaryWithCapacity:8];
            v39 = [v37 propertyForKey:@"ProductID"];
            v40 = objc_opt_class();
            v41 = v39;
            if (v40)
            {
              if (objc_opt_isKindOfClass())
              {
                v42 = v41;
              }

              else
              {
                v42 = 0;
              }
            }

            else
            {
              v42 = 0;
            }

            v51 = v42;

            [v38 bs_setSafeObject:v51 forKey:@"devicePid"];
            v52 = [v37 propertyForKey:@"VendorID"];
            v53 = objc_opt_class();
            v54 = v52;
            if (v53)
            {
              if (objc_opt_isKindOfClass())
              {
                v55 = v54;
              }

              else
              {
                v55 = 0;
              }
            }

            else
            {
              v55 = 0;
            }

            v56 = v55;

            [v38 bs_setSafeObject:v56 forKey:@"deviceVid"];
            v120[0] = @"pointerAcceleration";
            [v4 pointerAccelerationFactor];
            v58 = [NSNumber numberWithDouble:round(v57 * 10.0) / 10.0];
            v121[0] = v58;
            v120[1] = @"scrollAcceleration";
            [v4 scrollAccelerationFactor];
            v60 = [NSNumber numberWithDouble:round(v59 * 10.0) / 10.0];
            v121[1] = v60;
            v120[2] = @"naturalScrolling";
            v61 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 enableNaturalScrolling]);
            v121[2] = v61;
            v120[3] = @"tapToClick";
            v62 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 enableTapToClick]);
            v121[3] = v62;
            v120[4] = @"twoFingerSecondaryClick";
            v63 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 enableTwoFingerSecondaryClick]);
            v121[4] = v63;
            v120[5] = @"doubleTapDragMode";
            v64 = [v4 doubleTapDragMode];
            v65 = @"Disabled";
            if (v64 == 1)
            {
              v65 = @"Enabled";
            }

            if (v64 == 2)
            {
              v65 = @"WithDragLockEnabled";
            }

            v121[5] = v65;
            v66 = v65;
            v67 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:6];

            v4 = v99;
            [v38 addEntriesFromDictionary:v67];

            sub_100018DE0(v103, v38, @"com.apple.backboardd.trackpadPreferences");
            v32 = obja;
          }

          else
          {
            if ([v37 claimsToConformToUsagePage:13 usage:12])
            {
              if (!AnalyticsIsEventUsed())
              {
                goto LABEL_88;
              }

              v38 = [NSMutableDictionary dictionaryWithCapacity:6];
              v43 = [v37 propertyForKey:@"ProductID"];
              v44 = objc_opt_class();
              v45 = v43;
              if (v44)
              {
                if (objc_opt_isKindOfClass())
                {
                  v46 = v45;
                }

                else
                {
                  v46 = 0;
                }
              }

              else
              {
                v46 = 0;
              }

              v68 = v46;

              [v38 bs_setSafeObject:v68 forKey:@"devicePid"];
              v69 = [v37 propertyForKey:@"VendorID"];
              v70 = objc_opt_class();
              v71 = v69;
              if (v70)
              {
                if (objc_opt_isKindOfClass())
                {
                  v72 = v71;
                }

                else
                {
                  v72 = 0;
                }
              }

              else
              {
                v72 = 0;
              }

              v78 = v72;

              [v38 bs_setSafeObject:v78 forKey:@"deviceVid"];
              v118[0] = @"pointerAcceleration";
              [v4 pointerAccelerationFactor];
              v80 = [NSNumber numberWithDouble:round(v79 * 10.0) / 10.0];
              v119[0] = v80;
              v118[1] = @"scrollAcceleration";
              [v4 scrollAccelerationFactor];
              v82 = [NSNumber numberWithDouble:round(v81 * 10.0) / 10.0];
              v119[1] = v82;
              v118[2] = @"naturalScrolling";
              v83 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 enableNaturalScrolling]);
              v119[2] = v83;
              v118[3] = @"buttonConfiguration";
              v84 = [v4 buttonConfigurationForVirtualButtonMice];
              v85 = @"Unspecified";
              if ((v84 - 1) <= 2)
              {
                v85 = *(&off_1000FA220 + (v84 - 1));
              }

              v119[3] = v85;
              v86 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:4];
              [v38 addEntriesFromDictionary:v86];

              v87 = v103;
              v88 = v38;
              v89 = @"com.apple.backboardd.magicMousePreferences";
            }

            else
            {
              if (!AnalyticsIsEventUsed())
              {
                goto LABEL_88;
              }

              v38 = [NSMutableDictionary dictionaryWithCapacity:6];
              v47 = [v37 propertyForKey:@"ProductID"];
              v48 = objc_opt_class();
              v49 = v47;
              if (v48)
              {
                if (objc_opt_isKindOfClass())
                {
                  v50 = v49;
                }

                else
                {
                  v50 = 0;
                }
              }

              else
              {
                v50 = 0;
              }

              v73 = v50;

              [v38 bs_setSafeObject:v73 forKey:@"devicePid"];
              v74 = [v37 propertyForKey:@"VendorID"];
              v75 = objc_opt_class();
              v76 = v74;
              if (v75)
              {
                if (objc_opt_isKindOfClass())
                {
                  v77 = v76;
                }

                else
                {
                  v77 = 0;
                }
              }

              else
              {
                v77 = 0;
              }

              v90 = v77;

              [v38 bs_setSafeObject:v90 forKey:@"deviceVid"];
              v116[0] = @"pointerAcceleration";
              [v4 pointerAccelerationFactor];
              v92 = [NSNumber numberWithDouble:round(v91 * 10.0) / 10.0];
              v117[0] = v92;
              v116[1] = @"scrollAcceleration";
              [v4 scrollAccelerationFactor];
              v94 = [NSNumber numberWithDouble:round(v93 * 10.0) / 10.0];
              v117[1] = v94;
              v116[2] = @"naturalScrolling";
              v95 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 enableNaturalScrolling]);
              v117[2] = v95;
              v116[3] = @"buttonConfiguration";
              v96 = [v4 buttonConfigurationForHardwareButtonMice];
              v97 = @"Unspecified";
              if ((v96 - 1) <= 2)
              {
                v97 = *(&off_1000FA220 + (v96 - 1));
              }

              v117[3] = v97;
              v98 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:4];
              [v38 addEntriesFromDictionary:v98];

              v87 = v103;
              v88 = v38;
              v89 = @"com.apple.backboardd.ordinaryMousePreferences";
            }

            sub_100018DE0(v87, v88, v89);
          }

          v35 = v105;
          v34 = v107;
LABEL_88:
          v36 = v36 + 1;
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v108 objects:v122 count:16];
      }

      while (v34);
    }
  }
}

void sub_100018DE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v12 = +[NSUserDefaults standardUserDefaults];
  if (v6)
  {
    v7 = *(a1 + 16);
    v8 = +[NSDate date];
    v9 = [v7 startOfDayForDate:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_100018EE0(v5);
  [v12 setObject:v6 forKey:v10];

  v11 = sub_100018F6C(v5);

  [v12 setObject:v9 forKey:v11];
}

id sub_100018EE0(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 lastObject];
  v3 = [NSString stringWithFormat:@"BKAnalytics-MostRecentPayload-%@", v2];

  return v3;
}

id sub_100018F6C(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 lastObject];
  v3 = [NSString stringWithFormat:@"BKAnalytics-MostRecentPayloadDate-%@", v2];

  return v3;
}

void sub_10001A05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogTouchEvents();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found a new touchpad %{public}@", &v8, 0xCu);
  }

  v5 = [[BKTouchPadInfo alloc] initWithService:v3];
  v6 = *(*(a1 + 32) + 16);
  v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 senderID]);
  [v6 setObject:v5 forKey:v7];

  [v3 addDisappearanceObserver:*(a1 + 32) queue:*(*(a1 + 32) + 8)];
}

id sub_10001A420(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001A494;
  v4[3] = &unk_1000FA2B0;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_10001A534(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001A5CC;
  v5[3] = &unk_1000FA288;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_10001A5CC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 senderInfo];
  v5 = [v4 displayUUID];

  if (v5 == *(a1 + 32) || [v5 isEqual:?])
  {
    [*(a1 + 40) _queue_sendCancelEventForTouchPad:v6];
  }
}

void sub_10001A758(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) senderID]);
  v4 = [v2 objectForKey:v3];

  if (v4 || ([*(*(a1 + 32) + 16) allValues], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    v6 = *(a1 + 48);
    v7 = [v4 overrideSenderDescriptor];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 associatedDisplay];
      v10 = *(a1 + 48);
      v11 = BSEqualObjects();

      if ((v11 & 1) == 0)
      {
        v12 = [*(a1 + 40) senderDescriptor];
        v13 = [v12 mutableCopy];

        [v13 setAssociatedDisplay:*(a1 + 48)];
        [v4 setOverrideSenderDescriptor:v13];
      }
    }

    else
    {

      if (v8)
      {
        [v4 setOverrideSenderDescriptor:0];
      }
    }

    [*(a1 + 32) _queue_handleEvent:*(a1 + 64) fromTouchPad:v4 dispatcher:*(a1 + 56)];
  }

  else
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 40) senderID];
      v15 = 134217984;
      v16 = v14;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "unknown touch pad sender 0x%llX", &v15, 0xCu);
    }
  }
}

void sub_10001AB1C(id a1)
{
  v1 = objc_alloc_init(BKTouchPadManager);
  v2 = qword_100125D70;
  qword_100125D70 = v1;
}

void sub_10001AC7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 appendUnsignedInteger:v4 withName:@"contextID" format:1];
  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  if (v7)
  {
    [*(a1 + 32) appendString:v7 withName:@"displayUUID"];
    v6 = *(a1 + 40);
  }

  v8 = *(a1 + 32);
  v9 = *(v6 + 32);
  v10 = BSProcessDescriptionForPID();
  [v8 appendString:v10 withName:@"process"];
}

void sub_10001ADD4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_10001ADEC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

id sub_10001AE04(CGFloat a1, CGFloat a2, uint64_t a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  objc_opt_self();
  v18 = [v14 uniqueId];
  v19 = [v16 displayController];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v50 = v16;
  v20 = [v16 touchEventServer];
  v55 = v15;
  v51 = sub_10003F6B8(v20, [v15 senderID], 1);

  v21 = 0;
  v22 = 0;
  v54 = a4;
  if (a4)
  {
    v22 = sub_10000ED90(BKDisplayController, 0, 1, 0, v51);
    v21 = &v59;
  }

  obj = 0;
  if (v21)
  {
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
  }

  v24 = [v19 contextIDAtCAScreenLocation:v18 displayUUID:v22 options:p_obj securityAnalysis:v58 results:{a1, a2}];
  if (v21)
  {
    objc_storeStrong(v21, obj);
  }

  if (v24)
  {
    v46 = v22;
    v25 = LODWORD(v58[0]);
    if (a4)
    {
      v26 = DWORD1(v58[0]);
      v27 = BKLogMousePointer();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v62[0]) = 67109120;
        DWORD1(v62[0]) = v26;
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "hit slot %X", v62, 8u);
      }
    }

    else
    {
      v26 = 0;
    }

    v52 = objc_alloc_init(NSMutableArray);
    if (v25)
    {
      *&v29 = 138543362;
      v45 = v29;
      v48 = v18;
      v49 = v17;
      v47 = v19;
      do
      {
        v30 = [v19 taskPortForContextID:v25 displayUUID:{v18, v45}];
        if ((v30 - 1) >= 0xFFFFFFFE)
        {
          v41 = BKLogMousePointer();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v62[0]) = 67109120;
            DWORD1(v62[0]) = v25;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "invalid client port for contextID %X", v62, 8u);
          }

          break;
        }

        v31 = [(BKCAContextDestination *)[BKMouseDestination alloc] initWithContextID:v25 clientPort:v30];
        v32 = [v17 member:v31];
        if (!v32)
        {
          v32 = v31;
          sub_10001B418(v32, v50);
          sub_10001ADD4(v32, v18);
        }

        if (v25 == LODWORD(v58[0]))
        {
          v33 = v59;
          if (!v59)
          {
            goto LABEL_25;
          }

          v34 = v32;
        }

        else
        {
          v34 = v32;
          v33 = 0;
        }

        sub_10001B430(v34, v33);
LABEL_25:
        if (v54)
        {
          if (v32)
          {
            v32->_slotID = v26;
LABEL_29:
            v32->_hitTestPoint.x = a1;
            v32->_hitTestPoint.y = a2;
          }
        }

        else if (v32)
        {
          goto LABEL_29;
        }

        sub_10001ADEC(v32, v55);
        if (v26)
        {
          v56 = 0;
          v35 = +[BKHIDEventProcessorRegistry sharedInstance];
          v36 = [v35 eventProcessorOfClass:objc_opt_class()];

          v53 = v36;
          v37 = [v36 authenticationSpecificationForSlotID:v26 registrantEntitled:&v56];
          v38 = sub_10000ED90(BKDisplayController, 0, 0, v37, v51);
          memset(v62, 0, sizeof(v62));
          [v19 contextIDAtCAScreenLocation:v18 displayUUID:v38 options:0 securityAnalysis:v62 results:{a1, a2}];
          if (DWORD1(v62[0]) == v26)
          {
            v39 = sub_10000EBFC(v62);
            if (v32)
            {
              objc_storeStrong(&v32->_hitTestInformationAtButtonDown, v39);
            }

            v40 = BKLogMousePointer();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              buf = v45;
              v61 = v39;
              _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "hit test info at down %{public}@", &buf, 0xCu);
            }
          }

          v18 = v48;
          v17 = v49;
          v19 = v47;
        }

        [v52 addObject:v32];
        v25 = [v19 hostContextIDForEmbeddedContextID:v25 displayUUID:v18];

        v26 = 0;
      }

      while (v25);
    }

    [v19 applySceneHostSettingsToHostingChain:v52];
    if ([v52 count] < 1)
    {
      v28 = +[NSSet set];
    }

    else
    {
      v42 = [v50 touchDeliveryPolicyServer];
      v43 = [v42 filterDestinations:v52];
      v28 = [NSSet setWithArray:v43];
    }

    v22 = v46;
  }

  else
  {
    v28 = +[NSSet set];
  }

  return v28;
}

void sub_10001B418(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_10001B430(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

uint64_t sub_10001B448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    if (v5 <= 0)
    {
      v6 = [v3 clientForTaskPort:*(a1 + 12)];
      *(a1 + 32) = [v6 pid];

      v5 = *(a1 + 32);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10001B610(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 48) count];
    v3[2](v3);
    v5 = [*(a1 + 48) count];
    v6 = v5 > 0;
    if (v4 < 1 == v6)
    {
      v7 = v5;
      if (![*(a1 + 40) count])
      {
        v8 = sub_100008528();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = NSStringFromBKSHIDTouchSensitiveButtonIdentifier();
          *buf = 67109378;
          v21 = v6;
          v22 = 2114;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setScanningActive:%{BOOL}u button:%{public}@-- no services (yet?), pending", buf, 0x12u);
        }
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = *(a1 + 40);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            sub_10001B7E0(a1, v7 > 0, *(*(&v15 + 1) + 8 * i));
          }

          v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }
    }
  }
}

void sub_10001B7E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_100008528();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromBKSHIDTouchSensitiveButtonIdentifier();
      *buf = 67109634;
      v13 = a2;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setScanningActive:%{BOOL}u button:%{public}@ posting to service %{public}@", buf, 0x1Cu);
    }

    v8 = [NSNumber numberWithBool:a2, @"CameraButtonScanActive"];
    v11 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v5 asyncSetProperty:v9 forKey:@"HostStateNotification"];
  }
}

void sub_10001BAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001BB08(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  if (([v7 containsObject:a2] & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10001C024(uint64_t a1)
{
  v2 = *(a1 + 44);
  v3 = *(*(a1 + 32) + 48);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    if (([v3 containsIndex:v4] & 1) == 0)
    {
      [*(*(a1 + 32) + 48) addIndex:*(a1 + 40)];
      v5 = [BSProcessDeathWatcher alloc];
      v6 = *(*(a1 + 32) + 16);
      v15 = *(a1 + 40);
      v7 = [v5 initWithPID:? queue:? deathHandler:?];
      v8 = *(*(a1 + 32) + 32);
      v9 = [NSNumber numberWithInt:*(a1 + 40)];
      [v8 setObject:v7 forKey:v9];
    }
  }

  else
  {
    [v3 removeIndex:v4];
    v10 = *(*(a1 + 32) + 32);
    v11 = [NSNumber numberWithInt:*(a1 + 40)];
    v12 = [v10 objectForKey:v11];
    [v12 invalidate];

    v13 = *(*(a1 + 32) + 32);
    v14 = [NSNumber numberWithInt:*(a1 + 40)];
    [v13 removeObjectForKey:v14];
  }
}

void sub_10001C370(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [BSProtobufSerialization buildSchemaForClass:objc_opt_class() builder:&stru_1000FA3A0];
  v3 = qword_100125D80;
  qword_100125D80 = v2;
}

void sub_10001C3EC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    os_unfair_lock_lock(&stru_100125E20);
    v2 = dword_100125E24;
    os_unfair_lock_unlock(&stru_100125E20);
    **(a1 + 32) = v2;
  }
}

uint64_t sub_10001C46C(uint64_t a1, int a2, __int128 *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v3 = a3[1];
  v10 = *a3;
  v6 = sub_100005DF4;
  v7 = &unk_1000FAB18;
  v9 = a2;
  v8 = a1;
  v11 = v3;
  if (!sub_1000025C8("_BKHIDXXSetBacklightFeatures", BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v6(v5);
  return 0;
}

void sub_10001C520(uint64_t a1)
{
  v2 = +[BKDisplayBrightnessController sharedInstance];
  **(a1 + 32) = [v2 isAutoBrightnessAvailable];
}

void sub_10001C57C(uint64_t a1)
{
  v2 = +[BKDisplayBrightnessController sharedInstance];
  **(a1 + 32) = [v2 isBrightnessLevelControlAvailable];
}

void sub_10001C5D8(uint64_t a1)
{
  v2 = +[BKDisplayBrightnessController sharedInstance];
  **(a1 + 32) = [v2 isALSSupported];
}

uint64_t sub_10001C634(_BYTE *a1, int a2)
{
  v4 = BSPIDForAuditToken();
  if (!*a1)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [NSString stringWithUTF8String:a1];
  if (v5)
  {
LABEL_7:
    v8 = +[BKTouchDeliveryGenericGestureFocusObserver sharedInstance];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10001C7A0;
    v14 = &unk_1000FA360;
    v15 = v5;
    v16 = v4;
    v17 = a2;
    v6 = v5;
    v9 = [BKSHIDEventDeferringResolution build:&v11];
    [v8 setEventDestination:v9 forDisplayUUID:{v6, v11, v12, v13, v14}];

    v7 = 0;
    goto LABEL_8;
  }

  v6 = BKLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "ClaimGenericGestureFocus: could not convert UUID to UTF-8", buf, 2u);
  }

  v7 = 5;
LABEL_8:

  return v7;
}

void sub_10001C7A0(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setPid:*(a1 + 40)];
  if (*(a1 + 32))
  {
    [BKSHIDEventDisplay displayWithHardwareIdentifier:?];
  }

  else
  {
    +[BKSHIDEventDisplay builtinDisplay];
  }
  v3 = ;
  [v5 setDisplay:v3];
  if (*(a1 + 44))
  {
    v4 = [BKSHIDEventDeferringToken tokenForIdentifierOfCAContext:?];
    [v5 setToken:v4];
  }
}

uint64_t sub_10001C850(uint64_t a1, int a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_100005C10;
  v6 = &unk_1000FAAF8;
  v8 = a2;
  v7 = a1;
  if (!sub_1000027D4(BKSetAuthenticatedKeyCommandsEntitlement, a3))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

uint64_t sub_10001C8F4(uint64_t a1, int a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_1000064D4;
  v6 = &unk_1000FAAF8;
  v8 = a2;
  v7 = a1;
  if (!sub_1000025C8("_BKHIDXXApplyButtonDefinitions", BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

void sub_10001C99C(uint64_t a1)
{
  v2 = +[BKButtonHapticsController sharedInstance];
  [v2 playHapticForClickState:*(a1 + 32) clickSpeed:*(a1 + 36)];
}

void sub_10001C9F4(uint64_t a1, unsigned int a2)
{
  if (a1 && a2)
  {
    v2 = [[NSData alloc] initWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v3 = objc_opt_class();
    v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
    v5 = [NSObject bs_secureObjectFromData:v2 ofClasses:v4];

    if (v5)
    {
      v6 = BSPIDForAuditToken();
      v7 = +[BKHIDEventProcessorRegistry sharedInstance];
      v8 = [v7 eventProcessorOfClass:objc_opt_class()];

      [v8 postTouchAnnotations:v5 sourcePID:v6];
    }

    else
    {
      v9 = BKLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v11 = "_BKHIDXXPostTouchAnnotations";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Error unarchiving touch annotations", buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = BKLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "_BKHIDXXPostTouchAnnotations";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: no data received", buf, 0xCu);
    }
  }
}

uint64_t sub_10001CC04(int a1, uint64_t a2, int a3, char a4, uint64_t a5, __int128 *a6)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v6 = a6[1];
  v14 = *a6;
  v9 = sub_10001CCD4;
  v10 = &unk_1000FA3C0;
  v11 = a2;
  v12 = a5;
  v13 = a1;
  v15 = v6;
  v16 = a3;
  v17 = a4;
  if (!sub_100006994("_BKHIDXXTouchStreamCreate", BKTouchStreamsEntitlement, BKBackBoardClientEntitlement, a6))
  {
    return 5;
  }

  v9(v8);
  return 0;
}

void sub_10001CCD4(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = +[BKHIDEventProcessorRegistry sharedInstance];
  v4 = [v3 eventProcessorOfClass:objc_opt_class()];

  **(a1 + 40) = [v4 addTouchStreamForContextID:*(a1 + 48) display:v2 versionedPID:BSVersionedPIDForAuditToken() identifier:*(a1 + 84) shouldSendAmbiguityRecommendations:{*(a1 + 88) != 0, *(a1 + 52), *(a1 + 60), *(a1 + 68), *(a1 + 76)}];
}

void sub_10001CDB0(uint64_t a1)
{
  v2 = +[BKHIDEventProcessorRegistry sharedInstance];
  v3 = [v2 eventProcessorOfClass:objc_opt_class()];

  [v3 invalidateTouchStreamReference:*(a1 + 32)];
}

uint64_t sub_10001CE30(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, float a8, float a9)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_10001CEF8;
  v12 = &unk_1000FAB18;
  v13 = a4;
  v14 = a6;
  v15 = a1;
  v16 = a5;
  v17 = a2;
  v18 = a3;
  v19 = a8;
  v20 = a9;
  if (!sub_100006994("_BKHIDXXDigitizerTouchDetach", BKDetachTouchesEntitlement, BKBackBoardClientEntitlement, a7))
  {
    return 5;
  }

  v11(v10);
  return 0;
}

void sub_10001CEF8(uint64_t a1)
{
  if (*(a1 + 56) && *(a1 + 32))
  {
    v2 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 32) length:*(a1 + 56) freeWhenDone:0];
    v3 = [BKSHIDTouchRoutingPolicy bs_secureDecodedFromData:v2];
    if (v3)
    {
      v4 = +[BKHIDEventProcessorRegistry sharedInstance];
      v5 = [v4 eventProcessorOfClass:objc_opt_class()];

      **(a1 + 40) = [v5 detachTouchIdentifiers:*(a1 + 48) count:*(a1 + 60) assignUserIdentifier:*(a1 + 64) policy:v3 offset:{*(a1 + 68), *(a1 + 72)}];
    }

    else
    {
      v7 = BKLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315138;
        v9 = "_BKHIDXXDigitizerTouchDetach_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: Error unarchiving policy", &v8, 0xCu);
      }
    }
  }

  else
  {
    v6 = BKLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "_BKHIDXXDigitizerTouchDetach_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: no policy data received", &v8, 0xCu);
    }

    **(a1 + 40) = 0;
  }
}

void sub_10001D0DC(uint64_t a1)
{
  v2 = +[BKHIDEventProcessorRegistry sharedInstance];
  v3 = [v2 eventProcessorOfClass:objc_opt_class()];

  [v3 setOffset:*(a1 + 40) forTouchesWithUserIdentifier:{*(a1 + 32), *(a1 + 36)}];
}

uint64_t sub_10001D168(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_10001D220;
  v7 = &unk_1000FAA58;
  v8 = a2;
  v9 = a3;
  v10 = a1;
  if (!sub_100006994("_BKHIDXXDigitizerTouchSetRoutingPolicy", BKDetachTouchesEntitlement, BKBackBoardClientEntitlement, a4))
  {
    return 5;
  }

  v6(v5);
  return 0;
}

void sub_10001D220(uint64_t a1)
{
  if (*(a1 + 40) && *(a1 + 32))
  {
    v2 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 32) length:*(a1 + 40) freeWhenDone:0];
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = [NSSet setWithObjects:v3, v4, objc_opt_class(), 0];
    v6 = [NSObject bs_secureObjectFromData:v2 ofClasses:v5];

    if (v6)
    {
      v7 = +[BKHIDEventProcessorRegistry sharedInstance];
      v8 = [v7 eventProcessorOfClass:objc_opt_class()];

      [v8 setRoutingPolicy:v6 forTouchesWithUserIdentifier:*(a1 + 44)];
    }

    else
    {
      v9 = BKLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v11 = "_BKHIDXXDigitizerTouchSetRoutingPolicy_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Error unarchiving policy", buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = BKLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "_BKHIDXXDigitizerTouchSetRoutingPolicy_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: no policy data received", buf, 0xCu);
    }
  }
}

void sub_10001D438(uint64_t a1)
{
  v2 = +[BKUserEventTimer sharedInstance];
  [v2 resetTimer:*(a1 + 40) mode:*(a1 + 32)];
}

void sub_10001D494(uint64_t a1)
{
  v2 = sub_100005110();
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(v2 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100091788;
    block[3] = &unk_1000FCF78;
    block[4] = v3;
    block[5] = v4;
    v6 = v3;
    dispatch_async(v5, block);
    v3 = v6;
  }
}

void sub_10001D544(uint64_t a1)
{
  v2 = sub_100005110();
  sub_100092450(v2, *(a1 + 32));
}

uint64_t sub_10001D59C(uint64_t a1, char a2, __int128 *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v3 = a3[1];
  v9 = *a3;
  v6 = sub_10001D650;
  v7 = &unk_1000FAAB8;
  v8 = a1;
  v11 = a2;
  v10 = v3;
  if (!sub_1000025C8("_BKHIDXXSetOrientationClient", BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v6(v5);
  return 0;
}

void sub_10001D650(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v3 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v3 = 0;
  }

  v2 = +[BKAccelerometerInterface sharedInstance];
  [v2 systemAppSetOrientationEventsClient:v3 wantsOrientationEvents:*(a1 + 72) != 0 auditToken:a1 + 40];
}

void sub_10001D6E4(uint64_t a1)
{
  if (*(a1 + 68))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = sub_100005110();
  v4 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a1 + 52);
  v5 = BSVersionedPIDForAuditToken();
  sub_100091D58(v3, v2, v4, v5);
}

void sub_10001D768(uint64_t a1)
{
  v2 = sub_100005110();
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v3 = BSVersionedPIDForAuditToken();
  sub_1000923C0(v2, 3, v3);
}

void sub_10001D7C8(uint64_t a1)
{
  v3 = 0;
  v2 = sub_100005110();
  **(a1 + 32) = sub_100091C58(v2, &v3);

  **(a1 + 40) = v3;
}

uint64_t sub_10001D828(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  *buf = *a2;
  v21 = v3;
  v4 = [BSAuditToken tokenFromAuditToken:buf];
  v5 = [BSProcessHandle processHandleForAuditToken:v4];

  v6 = [[BSMachPortSendRight alloc] initWithPort:a1];
  v7 = [v6 isUsable];
  v8 = BKLogBacklight();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Beginning explicit brightness transaction on behalf of %{public}@", buf, 0xCu);
    }

    v10 = [v5 name];
    v11 = v10;
    if (!v10)
    {
      v11 = [v5 bundleIdentifier];
    }

    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%d", v11, [v5 pid]);
    if (!v10)
    {
    }

    v12 = [BKDisplayBrightnessUpdateTransaction alloc];
    v13 = +[BKDisplayBrightnessUpdateTransactionManager sharedInstance];
    v14 = [(BKDisplayBrightnessUpdateTransaction *)v12 initWithIdentifier:v9 transactionManager:v13];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001DAB0;
    v18[3] = &unk_1000FD150;
    v19 = v14;
    v15 = v14;
    [BSPortDeathSentinel monitorSendRight:v6 withHandler:v18];

    v16 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Ignoring explicit brightness transaction request because sender is invalid: %{public}@", buf, 0xCu);
    }

    v16 = 5;
  }

  return v16;
}

void sub_10001DAB8(uint64_t a1)
{
  v3 = +[BKDisplayBrightnessUpdateTransactionManager sharedInstance];
  LODWORD(v2) = *(a1 + 32);
  [v3 setDisplayBrightness:*(a1 + 36) != 0 permanently:v2];
}

void sub_10001DB1C(uint64_t a1)
{
  v2 = +[BKDisplayBrightnessController sharedInstance];
  [v2 setDisplayBrightnessCurve:*(a1 + 32)];
}

void sub_10001DB74(uint64_t a1)
{
  v2 = +[BKDisplayBrightnessController sharedInstance];
  [v2 setAutoBrightnessEnabled:*(a1 + 32) != 0];
}

uint64_t sub_10001DBD4(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _OWORD *a5)
{
  v10 = sub_10001DFD4(a5);
  if ([v10 count])
  {
    v11 = objc_opt_class();
    v12 = sub_10001E0A0("SetPersistentServiceProperties", v11, a1, a2);
    if (v12)
    {
      v30 = objc_opt_class();
      v31 = a4;
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = [NSSet setWithObjects:v13, v14, v15, v16, v17, v18, objc_opt_class(), 0];
      v20 = sub_10001E2AC("SetPersistentServiceProperties", v30, v19, a3, v31);

      if (v20 && CFPropertyListIsValid(v20, kCFPropertyListXMLFormat_v1_0))
      {
        v21 = sub_1000526D8();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = a5[1];
          *buf = *a5;
          BSVersionedPIDForAuditToken();
          v23 = BSProcessDescriptionForPID();
          *buf = 138543874;
          *&buf[4] = v23;
          *&buf[12] = 2114;
          *&buf[14] = v20;
          v38 = 2114;
          v39 = v12;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SetPersistentServiceProperties process:%{public}@ set:%{public}@ for senders matching:%{public}@", buf, 0x20u);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v24 = v10;
        v25 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v25)
        {
          v26 = *v33;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v33 != v26)
              {
                objc_enumerationMutation(v24);
              }

              [*(*(&v32 + 1) + 8 * i) setPersistentProperties:v20 forSenderDescriptor:v12];
            }

            v25 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v25);
        }
      }

      else
      {
        v24 = sub_1000526D8();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v20;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "SetPersistentServiceProperties: bad properties %{public}@", buf, 0xCu);
        }

        v25 = 5;
      }
    }

    else
    {
      v20 = sub_1000526D8();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "SetPersistentServiceProperties failed to decode sender descriptor", buf, 2u);
      }

      v25 = 5;
    }
  }

  else
  {
    v12 = sub_1000526D8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      BSPIDForAuditToken();
      v29 = BSProcessDescriptionForPID();
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "SetPersistentServiceProperties: %{public}@ is not entitled", buf, 0xCu);
    }

    v25 = 5;
  }

  return v25;
}

id sub_10001DFD4(uint64_t a1)
{
  v2 = +[BKIOHIDServicePersistentPropertyController sharedInstances];
  if ((sub_100002858(BKBackBoardClientEntitlement, a1) & 1) == 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001E494;
    v5[3] = &unk_1000FA460;
    v5[4] = a1;
    v3 = [v2 bs_filter:v5];

    v2 = v3;
  }

  return v2;
}

id sub_10001E0A0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a3 && a4)
  {
    v6 = [[NSData alloc] initWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
    if (v6)
    {
      v11 = 0;
      v7 = [BSProtobufSerialization decodeObjectOfClass:a2 fromData:v6 error:&v11];
      v8 = v11;
      if (v7)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = sub_1000526D8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v13 = a1;
        v14 = 2114;
        v15 = a2;
        v16 = 2114;
        v17 = v8;
        v18 = 2114;
        v19 = v6;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@ failed to protobuf decode (error:%{public}@) %{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v9 = sub_1000526D8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v13 = a1;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: could not get data", buf, 0xCu);
      }

      v8 = 0;
    }

    v7 = 0;
    goto LABEL_14;
  }

  v8 = sub_1000526D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v13 = a1;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s: not specified", buf, 0xCu);
  }

  v7 = 0;
LABEL_15:

  return v7;
}

id sub_10001E2AC(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v9 = a3;
  if (!a4 || !a5)
  {
    v10 = sub_1000526D8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446210;
      v19 = a1;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}s: not specified", &v18, 0xCu);
    }

    goto LABEL_12;
  }

  v10 = [[NSData alloc] initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  if (v10)
  {
    v11 = [a2 bs_secureDecodedFromData:v10 withAdditionalClasses:v9];
    if (v11)
    {
      v12 = v11;
      goto LABEL_13;
    }

    v13 = sub_1000526D8();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v18 = 136446722;
    v19 = a1;
    v20 = 2114;
    v21 = a2;
    v22 = 2114;
    v23 = v10;
    v14 = "%{public}s: %{public}@ failed to secure decode %{public}@";
    v15 = v13;
    v16 = 32;
    goto LABEL_17;
  }

  v13 = sub_1000526D8();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v18 = 136446210;
    v19 = a1;
    v14 = "%{public}s: could not get data";
    v15 = v13;
    v16 = 12;
LABEL_17:
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, &v18, v16);
  }

LABEL_11:

LABEL_12:
  v12 = 0;
LABEL_13:

  return v12;
}

BOOL sub_10001E494(uint64_t a1, void *a2)
{
  v3 = [a2 clientEntitlement];
  v4 = sub_1000027D4(v3, *(a1 + 32));

  return v4;
}

uint64_t sub_10001E4D8(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5, _DWORD *a6, uint64_t a7)
{
  v13 = sub_10001DFD4(a7);
  if ([v13 count])
  {
    v38 = a6;
    v14 = objc_opt_class();
    v15 = sub_10001E0A0("GetPersistentServiceProperties", v14, a1, a2);
    v16 = objc_opt_class();
    v17 = [NSSet setWithObject:objc_opt_class()];
    v18 = sub_10001E2AC("GetPersistentServiceProperties", v16, v17, a3, a4);

    v19 = [v18 count];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v43 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_26;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    if (v19)
    {
      if (!v15)
      {
LABEL_29:

        v34 = 0;
        goto LABEL_33;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v26 = v13;
      v27 = [v26 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v40;
        while (2)
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v40 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [*(*(&v39 + 1) + 8 * j) persistentPropertiesForKeys:v20 forSenderDescriptor:v15];
            if ([v31 count])
            {
              v32 = [v31 bs_secureEncoded];
              if (v32)
              {
                v36 = v32;
                *a5 = [v32 bs_bytesForMIG];
                *v38 = [v36 bs_lengthForMIG];

                goto LABEL_28;
              }

              v33 = sub_1000526D8();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "GetPersistentServiceProperties failed to encode properties", buf, 2u);
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
LABEL_26:
      v26 = sub_1000526D8();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v50 = v20;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "GetPersistentServiceProperties: bad property keys %{public}@", buf, 0xCu);
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v15 = sub_1000526D8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    BSPIDForAuditToken();
    v37 = BSProcessDescriptionForPID();
    *buf = 138543362;
    v50 = v37;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "GetPersistentServiceProperties: %{public}@ is not entitled", buf, 0xCu);
  }

  v34 = 5;
LABEL_33:

  return v34;
}

void sub_10001E8C4(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v6 = [BKSecurityManager hasEntitlement:BKSetAuthenticatedTouchesEntitlement forAuditToken:a3];
  v7 = a3[1];
  *buf = *a3;
  *&buf[16] = v7;
  BSVersionedPIDForAuditToken();
  if (!a1 || !a2)
  {
    v8 = BKLogTouchEvents();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "_BKHIDXXTouchAddAuthenticationSpecifications";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: nil authspec data", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v8 = [[NSData alloc] initWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
  if (!v8)
  {
    v11 = BKLogTouchEvents();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "_BKHIDXXTouchAddAuthenticationSpecifications";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s: invalid authentication spec data received", buf, 0xCu);
    }

    goto LABEL_24;
  }

  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  v11 = [NSObject bs_secureObjectFromData:v8 ofClasses:v10];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v11 count])
  {
    v20 = BKLogTouchEvents();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "_BKHIDXXTouchAddAuthenticationSpecifications";
      *&buf[12] = 2114;
      *&buf[14] = v11;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: error corrupt authspec structure (%{public}@)", buf, 0x16u);
    }

LABEL_24:
    goto LABEL_25;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = objc_opt_class();
        v19 = v17;
        if (!v18 || (objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_27;
        }

        if (!v19)
        {
          goto LABEL_27;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  v21 = +[BKHIDEventProcessorRegistry sharedInstance];
  v22 = [v21 eventProcessorOfClass:objc_opt_class()];

  v23 = BKLogTouchEvents();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = NSStringFromBSVersionedPID();
    *buf = 138543874;
    *&buf[4] = v24;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    *&buf[18] = 2114;
    *&buf[20] = v12;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "pid:%{public}@ adding (entitled:%{BOOL}u) slot registrations %{public}@", buf, 0x1Cu);
  }

  [v22 addTouchAuthenticationSpecifications:v12 registrantEntitled:v6];
  v8 = v12;
LABEL_25:
}

void sub_10001ECDC(uint64_t a1)
{
  v2 = +[BKHIDUISensorController sharedInstance];
  v3 = [v2 sensorCharacteristics];
  v4 = [v3 copy];
  v8 = 0;
  v5 = [BSProtobufSerialization encodeObject:v4 error:&v8];
  v6 = v8;

  if (v5)
  {
    **(a1 + 32) = [v5 bs_bytesForMIG];
    **(a1 + 40) = [v5 bs_lengthForMIG];
  }

  else
  {
    **(a1 + 32) = 0;
    **(a1 + 40) = 0;
    v7 = sub_1000526D8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cannot encode: %{public}@", buf, 0xCu);
    }
  }
}

void sub_10001EE34(uint64_t a1)
{
  v2 = BSPIDForAuditToken();
  if (v2 >= 2)
  {
    v3 = v2;
    v4 = +[BKHIDEventProcessorRegistry sharedInstance];
    v5 = [v4 eventProcessorOfClass:objc_opt_class()];

    [v5 setScanningActive:*(a1 + 64) != 0 buttonIdentifier:*(a1 + 68) forPID:v3];
  }
}

void sub_10001EEF0(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4)
{
  if (sub_1000027D4(BKMessageAuthenticationVerificationEntitlement, a4) || sub_1000027D4(BKMessageAuthenticationKeyEntitlement, a4))
  {
    if (a1 && a2)
    {
      v8 = [[NSData alloc] initWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
      if (v8)
      {
        v16 = 0;
        v9 = [BSProtobufSerialization decodeObjectOfClass:objc_opt_class() fromData:v8 error:&v16];
        v10 = v16;
        if (v9)
        {
          v11 = +[BKHIDSystemInterface sharedInstance];
          v12 = [v11 deliveryManager];

          v13 = [v12 authenticationOriginator];
          v14 = [v13 validateMessage:v9];
        }

        else
        {
          v15 = BKLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v18 = "_BKHIDXXVerifyEventAuthenticationMessage";
            v19 = 2114;
            v20 = v10;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Error decoding message (%{public}@)", buf, 0x16u);
          }

          v14 = 0;
        }
      }

      else
      {
        v10 = BKLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "_BKHIDXXVerifyEventAuthenticationMessage";
          v19 = 2114;
          v20 = 0;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Cannot create data from message (%{public}@)", buf, 0x16u);
        }

        v14 = 0;
      }
    }

    else
    {
      v8 = BKLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v18 = "_BKHIDXXVerifyEventAuthenticationMessage";
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: no data received", buf, 0xCu);
      }

      v14 = 0;
    }

    if (a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v14 = 0;
    if (a3)
    {
LABEL_22:
      *a3 = v14;
    }
  }
}

void sub_10001F1AC(uint64_t a1, unsigned int a2, int a3, unsigned __int8 *a4)
{
  if (!a1 || !a2)
  {
    v6 = BKLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "_BKHIDXXVerifyEventProvenance";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s: no data received", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v6 = [[NSData alloc] initWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
  if (!v6)
  {
    v9 = BKLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "_BKHIDXXVerifyEventProvenance";
      v22 = 2114;
      v23 = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: Cannot create data (%{public}@)", buf, 0x16u);
    }

    v8 = 0;
    goto LABEL_24;
  }

  if (a3 == 1)
  {
    v7 = BKSHIDEventSimpleProvenance_ptr;
  }

  else
  {
    if (a3 != 2)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_25;
    }

    v7 = BKSHIDEventAuthenticationMessage_ptr;
  }

  v10 = *v7;
  v11 = objc_opt_class();
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v13 = +[BKHIDSystemInterface sharedInstance];
  v14 = [v13 deliveryManager];

  v19 = 0;
  v15 = [BSProtobufSerialization decodeObjectOfClass:v12 fromData:v6 error:&v19];
  v9 = v19;
  if (!v15)
  {
    v16 = BKLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "_BKHIDXXVerifyEventProvenance";
      v22 = 2114;
      v23 = v9;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: Error decoding (%{public}@)", buf, 0x16u);
    }

    v8 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v14 simpleProvenanceOriginator];
    v8 = [v16 verifyAuthentic:v15];
LABEL_23:

LABEL_24:
LABEL_25:

    if (a4)
    {
      *a4 = v8;
    }

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v14 authenticationOriginator];
    v8 = [v16 validateMessage:v15]> 1;
    goto LABEL_23;
  }

  v17 = [NSString stringWithFormat:@"you forgot something: %@ not handled", v12];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v18 = [NSString stringWithUTF8String:"kern_return_t _BKHIDXXVerifyEventProvenance(mach_port_t, bks_bytes_t, mach_msg_type_number_t, uint32_t, uint8_t *, audit_token_t)"];
    *buf = 138544130;
    v21 = v18;
    v22 = 2114;
    v23 = @"BKHIDServer_server.m";
    v24 = 1024;
    v25 = 1215;
    v26 = 2114;
    v27 = v17;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v17 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

__CFString *sub_1000209DC(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"tone1";
    }

    else
    {
      v2 = [NSString stringWithFormat:@"unknown:%lX", a1];
    }
  }

  else
  {
    v2 = @"silent";
  }

  return v2;
}

void sub_100021B0C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObserver:*(a1 + 32) forKeyPath:@"bounds"];
  [*(*(a1 + 32) + 16) setLayer:0];
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void sub_100021D80(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObserver:*(a1 + 32) forKeyPath:@"bounds" options:0 context:0];
  v15[0] = kCAContextDisplayable;
  v15[1] = kCAContextSecure;
  v16[0] = kCFBooleanTrue;
  v16[1] = kCFBooleanTrue;
  v15[2] = kCAContextDisplayId;
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(*(a1 + 32) + 8) displayId]);
  v16[2] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  v4 = [CAContext remoteContextWithOptions:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  LODWORD(v7) = 2139095039;
  [*(*(a1 + 32) + 16) setLevel:v7];
  v8 = +[CALayer layer];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v13 = xmmword_1000BFA10;
  v14 = unk_1000BFA20;
  if (DeviceRGB)
  {
    v10 = DeviceRGB;
    v11 = CGColorCreate(DeviceRGB, &v13);
    if (v11)
    {
      v12 = v11;
      [v8 setBackgroundColor:{v11, v13, v14}];
      CFRelease(v12);
    }

    CFRelease(v10);
  }

  [*(*(a1 + 32) + 16) setLayer:{v8, v13, v14}];
  [*(a1 + 32) _updateBounds];
}

void sub_10002217C(void *a1)
{
  v2 = sub_100008528();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    if (v3 > 0x10)
    {
      v4 = @"<unknown>";
    }

    else
    {
      v4 = off_1000FA580[v3];
    }

    v5 = v4;
    v6 = [NSNumber numberWithUnsignedInteger:a1[6]];
    *buf = 138543618;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "playing clickState:%{public}@ clickSpeed:%{public}@", buf, 0x16u);
  }

  v7 = a1[5];
  v8 = *(a1[4] + 40);
  v9 = a1[6];
  v17 = 0;
  v10 = [v8 playState:v7 forSpeed:v9 error:&v17];
  v11 = v17;
  if ((v10 & 1) == 0)
  {
    v12 = sub_100008528();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[5];
      if (v13 > 0x10)
      {
        v14 = @"<unknown>";
      }

      else
      {
        v14 = off_1000FA580[v13];
      }

      v15 = v14;
      v16 = [NSNumber numberWithUnsignedInteger:a1[6]];
      *buf = 138543874;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      v22 = 2114;
      v23 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "error playing clickState:%{public}@ clickSpeed:%{public}@ -- %{public}@", buf, 0x20u);
    }
  }
}

void sub_1000223D0(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setEnabled:{0, v7}];
        [*(a1 + 32) _queue_applyConfigurationChanges];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_1000225E4(uint64_t a1)
{
  dispatch_group_wait(*(*(a1 + 32) + 56), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _queue_applyDefinitions:v3];
}

void sub_100022870(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  if (a2 <= 12)
  {
    switch(a2)
    {
      case 10:
        v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:0];
        v6 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:1];
        v9 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:2];
        v10 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:3];
        v11 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:4];
        v15 = *(*(a1 + 32) + 16);
        v16 = 5;
        break;
      case 11:
        v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:6];
        v6 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:7];
        v9 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:8];
        v10 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:9];
        v11 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:10];
        v15 = *(*(a1 + 32) + 16);
        v16 = 11;
        break;
      case 12:
        [v23 doubleValue];
        v8 = v7;
        v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:2];
        v6 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:4];
        v9 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:8];
        v10 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:10];
        [v5 setMinimumTimeInterval:v8];
        [v6 setMinimumTimeInterval:v8];
        [v9 setMinimumTimeInterval:v8];
        [v10 setMinimumTimeInterval:v8];
        goto LABEL_20;
      default:
        goto LABEL_22;
    }

    v12 = [v15 objectAtIndexedSubscript:v16];
    v20 = [v23 integerValue];
    v21 = v20 > 0;
    [v5 setEnabled:v21];
    [v6 setEnabled:v21];
    [v9 setEnabled:v20 > 1];
    [v10 setEnabled:v20 > 1];
    v22 = v20 > 2;
    [v11 setEnabled:v22];
    [v12 setEnabled:v22];
    goto LABEL_19;
  }

  if (a2 > 14)
  {
    if (a2 == 15)
    {
      v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:14];
      v6 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:15];
      [v23 doubleValue];
      [v5 setMaximumTimeInterval:?];
LABEL_15:
      if ([*(a1 + 40) isLongPressEnabled] != 0x7FFFFFFFFFFFFFFFLL)
      {
        IsYes = BSSettingFlagIsYes();
        [v5 setEnabled:IsYes];
        [v6 setEnabled:IsYes];
      }

      goto LABEL_21;
    }

    if (a2 != 16)
    {
      goto LABEL_22;
    }

    v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:0];
    v6 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:1];
    v9 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:2];
    v10 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:3];
    v11 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:4];
    v12 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:5];
    v13 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:15];
    v14 = [v23 integerValue];
    [v5 setAssetType:v14];
    [v6 setAssetType:v14];
    [v9 setAssetType:v14];
    [v10 setAssetType:v14];
    [v11 setAssetType:v14];
    [v12 setAssetType:v14];
    [v13 setAssetType:v14];

LABEL_19:
    goto LABEL_20;
  }

  if (a2 != 13)
  {
    v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:14];
    v6 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:15];
    [v23 doubleValue];
    [v5 setMinimumTimeInterval:?];
    goto LABEL_15;
  }

  [v23 doubleValue];
  v18 = v17;
  v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:2];
  v6 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:4];
  v9 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:8];
  v10 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:10];
  [v5 setMaximumTimeInterval:v18];
  [v6 setMaximumTimeInterval:v18];
  [v9 setMaximumTimeInterval:v18];
  [v10 setMaximumTimeInterval:v18];
LABEL_20:

LABEL_21:
LABEL_22:
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

id sub_1000233B4(id a1, id a2)
{
  v2 = [a2 integerValue];
  if (v2 > 0x10)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1000FA580[v2];
  }
}

id sub_1000233F0(id a1, id a2)
{
  v2 = [a2 integerValue];
  if (v2 > 0x10)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1000FA580[v2];
  }
}

id sub_10002342C(id a1, id a2)
{
  v2 = [a2 integerValue];
  if (v2 > 0x10)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1000FA580[v2];
  }
}

void sub_1000236F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_100023724(uint64_t a1, uint64_t a2)
{
  if ((a2 - 4) < 2)
  {
    v3 = *(a1 + 56);
    goto LABEL_6;
  }

  v2 = a2;
  if (a2 == 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) isEnabled];
  }

  else
  {
    if (a2 == 3)
    {
      v3 = *(a1 + 48);
LABEL_6:
      *(*(v3 + 8) + 24) = 1;
      return;
    }

    v4 = sub_100008528();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[BKButtonHapticsController _queue_addChangesForPendingState:configuredState:toStates:configs:assets:enable:disable:]_block_invoke";
      v7 = 1024;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s did you really intend to change setting %d?", &v5, 0x12u);
    }
  }
}

const __CFString *sub_100023DAC(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      result = @"<default>";
      break;
    case 1:
      result = @"variant1/single/normal";
      break;
    case 2:
      result = @"variant1/single/soft";
      break;
    case 3:
      result = @"variant1/double/normal";
      break;
    case 4:
      result = @"variant1/double/soft";
      break;
    case 5:
      result = @"variant2/single/normal";
      break;
    case 6:
      result = @"variant2/single/soft";
      break;
    case 7:
      result = @"variant2/double/normal";
      break;
    case 8:
      result = @"variant2/double/soft";
      break;
    case 9:
      result = @"variant3/single/normal";
      break;
    case 10:
      result = @"variant3/single/soft";
      break;
    case 11:
      result = @"variant3/double/normal";
      break;
    case 12:
      result = @"variant3/double/soft";
      break;
    case 13:
      result = @"variant1/single/semisoft";
      break;
    case 14:
      result = @"variant1/double/semisoft";
      break;
    case 15:
      result = @"variant2/single/semisoft";
      break;
    case 16:
      result = @"variant2/double/semisoft";
      break;
    case 17:
      result = @"variant3/single/semisoft";
      break;
    case 18:
      result = @"variant3/double/semisoft";
      break;
    default:
      if (a1 == 100)
      {
        result = @"latch";
      }

      else
      {
        result = @"<unknown>";
      }

      break;
  }

  return result;
}

uint64_t sub_10002419C(uint64_t a1)
{
  dispatch_group_wait(*(*(a1 + 32) + 56), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 32) + 40);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_1000242E0(uint64_t a1)
{
  dispatch_group_wait(*(*(a1 + 32) + 56), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 32) + 40);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000246EC(uint64_t a1)
{
  dispatch_group_leave(*(*(a1 + 32) + 56));
  v2 = [*(*(a1 + 32) + 40) maxAssetSlots];
  v3 = sub_100008528();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_BRController ready: device haptic asset slot count:%d", v4, 8u);
  }
}

void sub_1000247AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:16];
  [v2 setEnabled:1];
  [*(a1 + 32) _queue_applyConfigurationChanges];
}

void sub_1000248FC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100125D98;
  qword_100125D98 = v1;
}

void sub_100026258(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        if (v6)
        {
          if (*(v6 + 32))
          {
            v7 = [*(a1 + 40) _pidForClientPort:{*(v6 + 12), v9}];
            if (v7 != -1)
            {
              v8 = objc_alloc_init(BKSTouchDeliveryUpdate);
              [v8 setType:2];
              [v8 setPid:v7];
              [v8 setContextID:*(v6 + 8)];
              [v8 setIsDetached:1];
              [*(a1 + 40) _queue_postUpdate:v8 forTouchIdentifier:*(a1 + 48)];
            }
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

void sub_100026480(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if ([v3 count])
  {
    v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];

    if (v2)
    {
      return;
    }

    v3 = objc_alloc_init(BKSTouchDeliveryUpdate);
    [v3 setType:1];
    [v3 setPid:0xFFFFFFFFLL];
    [v3 setTouchIdentifier:*(a1 + 40)];
    [v3 setIsDetached:*(a1 + 44)];
    [*(a1 + 32) _queue_pendUpdate:v3];
  }
}

void sub_100026AC8(uint64_t a1)
{
  v2 = [*(a1 + 32) _pidForClientPort:*(a1 + 40)];
  if (v2 != -1)
  {
    v3 = v2;
    v4 = objc_alloc_init(BKSTouchDeliveryUpdate);
    [v4 setType:1];
    [v4 setTouchIdentifier:*(a1 + 44)];
    [v4 setPid:v3];
    [v4 setContextID:*(a1 + 48)];
    [v4 setIsDetached:*(a1 + 52)];
    [*(a1 + 32) _queue_pendUpdate:v4];
  }
}

void sub_100026D44(id a1)
{
  v1 = objc_alloc_init(BKTouchDeliveryObservationManager);
  v2 = qword_100125DA0;
  qword_100125DA0 = v1;
}

__CFString *sub_100026D80(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_1000FA780[a1];
  }

  return v2;
}

void sub_100026DF0(uint64_t a1, void *a2)
{
  v3 = **(a1 + 32);
  v4 = a2;
  v5 = sub_100026D80(v3);
  [v4 appendFormat:@"%@ (%d)", v5, **(a1 + 32)];
}

uint64_t sub_100026FBC()
{
  TouchSensitiveButtonEvent = IOHIDEventCreateTouchSensitiveButtonEvent();
  IOHIDEventSetSenderID();
  ForceStageEvent = IOHIDEventCreateForceStageEvent();
  IOHIDEventSetSenderID();
  IOHIDEventAppendEvent();
  CFRelease(ForceStageEvent);
  return TouchSensitiveButtonEvent;
}

void sub_100027088(uint64_t a1)
{
  v2 = [*(a1 + 32) appendDouble:@"positionDelta" withName:4 decimalPrecision:***(a1 + 40)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100026DF0;
  v12[3] = &unk_1000FA990;
  v12[4] = v3;
  [v4 appendCustomFormatWithName:@"stage" block:v12];
  v5 = *(v3 + 4);
  v6 = NSStringFromBKSHIDForceStageTransition();
  [v4 appendString:v6 withName:@"transition"];

  v7 = [v4 appendDouble:@"nextThreshold" withName:4 decimalPrecision:*(v3 + 8)];
  v8 = [v4 appendDouble:@"pressedThreshold" withName:4 decimalPrecision:*(v3 + 16)];
  v9 = [v4 appendDouble:@"releasedThreshold" withName:4 decimalPrecision:*(v3 + 24)];
  v10 = [v4 appendDouble:@"forceProgress" withName:4 decimalPrecision:*(v3 + 32)];
  v11 = [v4 appendDouble:@"forceProgressVelocity" withName:4 decimalPrecision:*(v3 + 40)];
}

id sub_10002723C(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 32);
  if (v2 == 42)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000273F8;
    v13[3] = &unk_1000FA990;
    v13[4] = *(a1 + 40);
    [v3 appendCustomFormatWithName:0 block:v13];
  }

  else
  {
    v4 = [v3 appendInteger:*(a1 + 40) withName:@"stage"];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = NSStringFromBKSHIDForceStageTransition();
  [v5 appendString:v7 withName:@"transition"];

  if ((*(a1 + 100) & 1) == 0)
  {
    v8 = [*(a1 + 32) appendDouble:@"nextThreshold" withName:4 decimalPrecision:*(a1 + 56)];
  }

  if ((*(a1 + 101) & 1) == 0)
  {
    v9 = [*(a1 + 32) appendDouble:@"pressedThreshold" withName:4 decimalPrecision:*(a1 + 64)];
  }

  if ((*(a1 + 102) & 1) == 0)
  {
    v10 = [*(a1 + 32) appendDouble:@"releasedThreshold" withName:4 decimalPrecision:*(a1 + 72)];
  }

  v11 = [*(a1 + 32) appendDouble:@"progress" withName:4 decimalPrecision:*(a1 + 80)];
  return [*(a1 + 32) appendDouble:@"progressVelocity" withName:4 decimalPrecision:*(a1 + 88)];
}

void sub_1000273F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = sub_100026D80(v3);
  [v4 appendFormat:@"%@ (%d)", v5, *(a1 + 32)];
}

id sub_100027474(uint64_t a1)
{
  v2 = *(a1 + 40);
  SenderID = IOHIDEventGetSenderID();
  v4 = *(a1 + 40);
  IntegerValue = IOHIDEventGetIntegerValue();
  v6 = *(a1 + 40);
  v7 = IOHIDEventGetIntegerValue();
  v8 = *(a1 + 32);

  return sub_100026E74(SenderID, IntegerValue, v7, v8);
}

uint64_t sub_1000274E4(uint64_t a1, uint64_t a2)
{
  if (IOHIDEventGetType() != 1 || IOHIDEventGetIntegerValue() < a2)
  {
    return 0;
  }

  return IOHIDEventGetDataValue();
}

__CFString *sub_100027568(uint64_t a1)
{
  if (IOHIDEventGetType() == 42)
  {
    v2 = objc_alloc_init(BSDescriptionStream);
    SenderID = IOHIDEventGetSenderID();
    IntegerValue = IOHIDEventGetIntegerValue();
    v5 = IOHIDEventGetIntegerValue();
    sub_100026E74(SenderID, IntegerValue, v5, v2);
    v6 = IOHIDEventGetIntegerValue();
    IOHIDEventGetDoubleValue();
    v8 = v7;
    IOHIDEventGetDoubleValue();
    v10 = v9;
    IOHIDEventGetDoubleValue();
    v12 = v11;
    IOHIDEventGetDoubleValue();
    v14 = v13;
    v15 = IOHIDEventGetIntegerValue();
    if (v6)
    {
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100027D10;
      v57[3] = &unk_1000FA970;
      v58 = v6;
      [v2 appendCustomFormatWithName:@"eventMask" block:v57];
    }

    else
    {
      [v2 appendString:@"()" withName:@"eventMask"];
    }

    v27 = [v2 appendPoint:@"position" withName:{v12, v14}];
    v28 = [v2 appendPoint:@"positionDelta" withName:{v8, v10}];
    v29 = [v2 appendBool:v15 > 0 withName:@"touch"];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v30 = IOHIDEventGetChildren();
    v31 = [v30 countByEnumeratingWithState:&v61 objects:&v66 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v62;
LABEL_22:
      v34 = 0;
      while (1)
      {
        if (*v62 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v61 + 1) + 8 * v34);
        if (IOHIDEventGetType() == 41)
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v30 countByEnumeratingWithState:&v61 objects:&v66 count:16];
          if (v32)
          {
            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }

      if (!v35)
      {
        goto LABEL_32;
      }

      v36 = v2;
      if (IOHIDEventGetType() == 41)
      {
        IOHIDEventGetDoubleValue();
        v38 = v37;
        IOHIDEventGetDoubleValue();
        v40 = v39;
        IOHIDEventGetDoubleValue();
        v42 = v41;
        IOHIDEventGetDoubleValue();
        v44 = v43;
        IOHIDEventGetDoubleValue();
        v46 = v45;
        v47 = IOHIDEventGetIntegerValue();
        v48 = IOHIDEventGetIntegerValue();
        v66 = _NSConcreteStackBlock;
        v67 = 3221225472;
        v68 = sub_10002723C;
        v69 = &unk_1000FA760;
        v78 = 42;
        v49 = v36;
        v70 = v49;
        v71 = v48;
        v72 = v47;
        v79 = 0;
        v80 = 0;
        v73 = v38;
        v74 = v40;
        v81 = 0;
        v75 = v42;
        v76 = v44;
        v77 = v46;
        v50 = objc_retainBlock(&v66);
        [v49 appendBodySectionWithName:@"force" block:v50];
      }

      else
      {
        [v36 appendString:@"not a ForceStage event" withName:0];
      }
    }

    else
    {
LABEL_28:

LABEL_32:
      [v2 appendString:@"<missing force subevent>" withName:0];
    }

    v52 = [v2 description];
LABEL_41:

    goto LABEL_42;
  }

  v59 = 0;
  v60 = 0;
  v16 = sub_1000274E4(a1, 8);
  if (v16)
  {
    v17 = v16;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = IOHIDEventGetChildren();
    v19 = [v18 countByEnumeratingWithState:&v61 objects:&v66 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v62;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v62 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v61 + 1) + 8 * i);
          v24 = IOHIDEventGetIntegerValue();
          v25 = IOHIDEventGetIntegerValue();
          if (v24 == 65280 && v25 == 17)
          {
            v20 = sub_1000274E4(v23, 48);
            goto LABEL_18;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v61 objects:&v66 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_18:

      v59 = v17;
      v60 = v20;
    }

    else
    {

      v59 = v17;
      v60 = 0;
    }

    v53 = objc_alloc_init(BSDescriptionStream);
    *&v61 = _NSConcreteStackBlock;
    *(&v61 + 1) = 3221225472;
    *&v62 = sub_100027474;
    *(&v62 + 1) = &unk_1000FCF78;
    *&v63 = v53;
    *(&v63 + 1) = a1;
    v54 = v53;
    [v54 appendProem:0 block:&v61];
    v55 = v54;
    v66 = _NSConcreteStackBlock;
    v67 = 3221225472;
    v68 = sub_100027088;
    v69 = &unk_1000FCF78;
    v70 = v55;
    v71 = &v59;
    v2 = v55;
    [v2 appendBodySectionWithName:0 block:&v66];

    v52 = [v2 description];

    goto LABEL_41;
  }

  v51 = sub_100008528();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "data for TouchSensitiveButton event is corrupt", buf, 2u);
  }

  v52 = @"<not a TouchSensitiveButton event>";
LABEL_42:

  return v52;
}

void sub_100027D10(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_msgSend(v6, "appendString:", @"(");
  v3 = *(a1 + 32);
  if (v3)
  {
    [v6 appendString:@"fastSwipe"];
    v5 = *(a1 + 32);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 4) == 0)
      {
LABEL_12:
        v4 = v6;
        if ((v5 & 8) == 0)
        {
          goto LABEL_15;
        }

        [v6 appendString:@"|"];
        goto LABEL_14;
      }

      [v6 appendString:@"|"];
      v4 = v6;
LABEL_11:
      [v4 appendString:@"liftOffPredicted"];
      v5 = *(a1 + 32);
      goto LABEL_12;
    }

    [v6 appendString:@"|"];
LABEL_8:
    [v6 appendString:@"lowSNRSwipe"];
    v5 = *(a1 + 32);
    goto LABEL_9;
  }

  if ((v3 & 2) != 0)
  {
    goto LABEL_8;
  }

  v4 = v6;
  if ((v3 & 4) != 0)
  {
    goto LABEL_11;
  }

  if ((v3 & 8) != 0)
  {
LABEL_14:
    [v6 appendString:@"clickDownPredicted"];
    v4 = v6;
  }

LABEL_15:
  [v4 appendString:@""]);
}

id sub_100027F18(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [NSString stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = *(&off_1000FA910 + a1);
  }

  return v2;
}

void sub_10002815C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100028174(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002818C(uint64_t a1, void *a2)
{
  v3 = [a2 context];
  v4 = [*(*(*(a1 + 32) + 8) + 40) mutableCopy];
  [v4 minusSet:v3];
  v5 = [v3 mutableCopy];
  [v5 minusSet:*(*(*(a1 + 32) + 8) + 40)];
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        sub_100028378(*(*(&v20 + 1) + 8 * v10), 1);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        sub_100028378(*(*(&v16 + 1) + 8 * v15), 0);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}