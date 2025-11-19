void start()
{
  v0 = objc_autoreleasePoolPush();
  LogControl();
  if (dword_10001A0C8 <= 30 && (dword_10001A0C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = +[ASMResourceManagerDaemon sharedInstance];
  [v1 activate];

  v2 = +[ASMServicesDaemon sharedInstance];
  [v2 activate];

  objc_autoreleasePoolPop(v0);
  dispatch_main();
}

void sub_1000018C4(uint64_t a1)
{
  v2 = (a1 + 48);
  v1 = *(a1 + 48);
  if (v1 == 1)
  {
    v4 = *(*(a1 + 32) + 24);
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = *(a1 + 32);
      v7 = *(v6 + 24);
      *(v6 + 24) = v5;

      v4 = *(*(a1 + 32) + 24);
    }

    v15 = v4;
    v8 = (a1 + 52);
    v9 = [NSNumber numberWithUnsignedChar:*(a1 + 52)];
    v10 = [v15 objectForKeyedSubscript:v9];

    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableArray);
      v11 = [NSNumber numberWithUnsignedChar:*v8];
      [v15 setObject:v10 forKeyedSubscript:v11];
    }

    v13 = *(a1 + 40);
    v12 = (a1 + 40);
    if (([v10 containsObject:v13] & 1) == 0)
    {
      if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        sub_100008584(v12, v8, v2);
      }

      [v10 addObject:*v12];
    }
  }

  else
  {
    if (dword_10001A198 > 90)
    {
      return;
    }

    if (dword_10001A198 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v1 = *v2;
    }

    if (v1 <= 2)
    {
      v14 = off_1000143E8[v1];
    }

    LogPrintF();
  }
}

void sub_100001B68(uint64_t a1)
{
  v2 = (a1 + 48);
  v1 = *(a1 + 48);
  if (v1 == 1)
  {
    v4 = *(*(a1 + 32) + 24);
    if (v4)
    {
      v11 = v4;
      v5 = (a1 + 52);
      v6 = [NSNumber numberWithUnsignedChar:*(a1 + 52)];
      v7 = [v11 objectForKeyedSubscript:v6];

      v9 = *(a1 + 40);
      v8 = (a1 + 40);
      if ([v7 containsObject:v9])
      {
        [v7 removeObject:*v8];
        if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
        {
          sub_100008620(v8, v5, v2);
        }

        [v7 removeObject:*v8];
      }
    }
  }

  else
  {
    if (dword_10001A198 > 90)
    {
      return;
    }

    if (dword_10001A198 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v1 = *v2;
    }

    if (v1 <= 2)
    {
      v10 = off_1000143E8[v1];
    }

    LogPrintF();
  }
}

void sub_100002208(NSObject *a1, int a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a4;
  dispatch_assert_queue_V2(v8[7]);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (dword_10001A198 <= 60 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        sub_100008890();
      }

      goto LABEL_28;
    }

    if (a2 != 3)
    {
      goto LABEL_14;
    }

    if (dword_10001A198 <= 60 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_100008850();
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
        {
          sub_1000088B0();
        }

LABEL_28:
        v8[4] = 0;
        *(v8 + 40) = 0;
        BTSessionDetachWithQueue();
        CFRelease(v8);
        goto LABEL_29;
      }

LABEL_14:
      if (dword_10001A198 <= 40 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_29;
    }

    if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_1000088F0();
    }

    if (!v8[4] && dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_100008930();
    }

    v8[4] = a1;
    *(v8 + 40) = 0;
    [(dispatch_queue_t *)v8 subscribeToImagePackets];
  }

LABEL_29:

  objc_autoreleasePoolPop(v7);
}

void sub_100002420(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3 == 0x1000000)
  {
    v8 = a6[7];
    v9 = a6;
    dispatch_assert_queue_V2(v8);
    v10 = [[NSData alloc] initWithBytes:a4 length:a5];
    [v9 handleDataRx:v10 dataSize:a5];
  }

  else if (dword_10001A198 <= 90 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
  {
    sub_10000894C();
  }
}

void sub_100002F68(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 32) + 40);
  v15 = v7;
  v9 = [v7 identifier];
  v10 = [v9 UUIDString];
  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

LABEL_6:
    if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
    {
      sub_100008AE8();
    }

    objc_storeStrong((*(a1 + 32) + 56), a2);
    [*(*(a1 + 32) + 16) connectPeripheral:v15 options:0];
    *a4 = 1;
    goto LABEL_11;
  }

  if ((v11 != 0) == (v12 == 0))
  {

    goto LABEL_11;
  }

  v14 = [v11 isEqual:v12];

  if (v14)
  {
    goto LABEL_6;
  }

LABEL_11:
}

void sub_100003D5C(void *a1)
{
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v4 = [*(a1[4] + 56) identifier];
    v5 = NSErrorF();

    v3 = a1[5];
    if (v3)
    {
      (*(v3 + 16))(v3, v5);
    }
  }
}

void sub_1000045C4(id a1)
{
  qword_10001A608 = objc_alloc_init(ASMPeripheralControl);

  _objc_release_x1();
}

void sub_1000048D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _invalidateSecureSensorGATTServiceForPeripheral:v6];
  v4 = [v6 lowPowerDataLinkHandle];

  if (v4)
  {
    v5 = [v6 lowPowerDataLinkHandle];
    [v5 invalidate];

    [v6 setLowPowerDataLinkHandle:0];
  }
}

uint64_t sub_100004E90(uint64_t a1, void *a2)
{
  v6 = a2;
  if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
  {
    v5 = *(a1 + 32);
    LogPrintF();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v6);
  }

  return _objc_release_x1();
}

id sub_100005190(uint64_t a1)
{
  if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
  {
    sub_100008F20();
  }

  result = [*(a1 + 32) _restartIfNeeded];
  if (dword_10001A398 <= 30)
  {
    if (dword_10001A398 != -1)
    {
      return sub_100008F3C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100008F3C();
    }
  }

  return result;
}

void sub_100005224(id a1)
{
  if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
  {
    sub_100008F94();
  }
}

void sub_10000527C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_10001A398 <= 30)
  {
    if (dword_10001A398 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100008FB0();
      v3 = v5;
    }
  }

  [*(a1 + 32) _deviceLost:v3];
}

void sub_10000530C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
    {
      sub_100008FF0();
    }

    [*(*(a1 + 32) + 16) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  if (dword_10001A398 <= 30 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
  {
    sub_100009030(a1);
  }
}

void sub_100005780(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (dword_10001A398 <= 90 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
    {
      sub_1000092EC(a1);
    }

    [*(a1 + 40) invalidate];
    v3 = v4;
  }
}

void sub_1000059C8(id a1)
{
  qword_10001A618 = objc_alloc_init(ASMResourceManagerDaemon);

  _objc_release_x1();
}

id sub_100005B08(uint64_t a1)
{
  if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
  {
    sub_100009380();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

id sub_100005C48(uint64_t a1)
{
  if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
  {
    sub_10000939C();
  }

  v2 = *(a1 + 32);

  return [v2 _prefsChanged];
}

id sub_100005D24(uint64_t a1)
{
  if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
  {
    sub_1000093B8();
  }

  v2 = *(a1 + 32);

  return [v2 _invalidate];
}

void sub_1000061AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006248;
  v7[3] = &unk_1000144A0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100006248(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) objectAtIndexedSubscript:0];
    [v2 _polarisResourceStart:v3];
  }
}

void sub_1000062C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000635C;
  v7[3] = &unk_1000144A0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10000635C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) objectAtIndexedSubscript:0];
    [v2 _polarisResourceStop:v3];
  }
}

void sub_100006574(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_10001A408 <= 30)
  {
    v4 = v2;
    if (dword_10001A408 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      sub_100009604();
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_100006A90(id a1)
{
  v1 = objc_alloc_init(ASMServicesDaemon);
  v2 = qword_10001A628;
  qword_10001A628 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100006F2C(uint64_t a1)
{
  if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_100009680();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

id sub_1000070E8(uint64_t a1)
{
  if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_10000969C();
  }

  v2 = *(a1 + 32);

  return [v2 _prefsChanged];
}

void sub_1000071E0(uint64_t a1)
{
  if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_1000096B8();
  }

  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    os_state_remove_handler();
    *(*(a1 + 32) + 24) = 0;
    v2 = *(a1 + 32);
  }

  [*(v2 + 48) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;
}

void sub_100007B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007B64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100007B7C(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_10001A478 <= 90)
  {
    if (dword_10001A478 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(*(*(v1 + 40) + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100007E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007E88(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_10001A478 <= 90)
  {
    if (dword_10001A478 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(*(*(v1 + 40) + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100008070(uint64_t result)
{
  v1 = result;
  if (dword_10001A478 <= 30)
  {
    if (dword_10001A478 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_100009928(v1);
    }
  }

  *(*(v1 + 32) + 16) = 0;
  return result;
}

uint64_t sub_100008584(uint64_t *a1, _BYTE *a2, unsigned int *a3)
{
  if ((*a2 - 1) <= 3u)
  {
    v3 = off_100014400[(*a2 - 1)];
  }

  v4 = *a3;
  if (v4 <= 2)
  {
    v5 = off_1000143E8[v4];
  }

  v7 = *a1;
  return LogPrintF();
}

uint64_t sub_100008620(uint64_t *a1, _BYTE *a2, unsigned int *a3)
{
  if ((*a2 - 1) <= 3u)
  {
    v3 = off_100014400[(*a2 - 1)];
  }

  v4 = *a3;
  if (v4 <= 2)
  {
    v5 = off_1000143E8[v4];
  }

  v7 = *a1;
  return LogPrintF();
}

void sub_100008700(void *a1)
{
  v1 = [a1 buffer];
  [v1 length];
  LogPrintF();
}

void sub_1000089D0(void *a1)
{
  v1 = [a1 bluetoothUUID];
  LogPrintF();
}

void sub_100008C40(void *a1)
{
  v1 = [a1 characteristics];
  LogPrintF();
}

void sub_100008CAC(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

void sub_100008D24(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

uint64_t sub_1000090B4()
{
  if (dword_10001A398 <= 90)
  {
    if (dword_10001A398 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_100009170()
{
  if (dword_10001A398 <= 90)
  {
    if (dword_10001A398 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1000091EC(uint64_t a1, uint64_t a2, void *a3)
{
  if (dword_10001A398 <= 90)
  {
    if (dword_10001A398 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a3 = a2;
  return result;
}

void sub_10000927C()
{
  if (dword_10001A398 <= 90 && (dword_10001A398 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_100009604()
{
  v0 = CUPrintXPC();
  LogPrintF();
}

void sub_100009718(void *a1)
{
  v1 = [a1 xpcCnx];
  [v1 processIdentifier];
  LogPrintF();
}

void sub_10000977C(void *a1)
{
  v2 = [a1 xpcCnx];
  [v2 processIdentifier];
  [a1 connectionID];
  LogPrintF();
}

uint64_t sub_1000098D0(uint64_t a1, unsigned int *a2)
{
  [*(a1 + 48) processIdentifier];
  v4 = *a2;
  return LogPrintF();
}

uint64_t sub_100009928(uint64_t a1)
{
  [*(*(a1 + 32) + 48) processIdentifier];
  v3 = *(*(a1 + 32) + 16);
  return LogPrintF();
}