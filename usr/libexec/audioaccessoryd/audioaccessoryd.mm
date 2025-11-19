void sub_100002EF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 368);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003070;
  v8[3] = &unk_1002B6D18;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void sub_100002F8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003210;
  v7[3] = &unk_1002B6D18;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void *sub_10000304C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[9] == *(a1 + 40))
  {
    return [result _shareAudioActionScannerDeviceFound:a2];
  }

  return result;
}

void sub_100003070(uint64_t a1)
{
  if (*(*(a1 + 32) + 1312))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(a1 + 40) elements];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v11;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) identifier];
          v9 = v8;
          if (v8)
          {
            v5 |= [v8 isEqual:@"com.apple.HeadphoneProxService"];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    if (*(*(a1 + 32) + 1320) != (v5 & 1))
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E83BC();
      }

      *(*(a1 + 32) + 1320) = v5 & 1;
      [*(a1 + 32) _update];
    }
  }
}

void sub_100003210(uint64_t a1)
{
  v2 = [*(a1 + 32) systemUIMonitor];

  if (v2 && *(a1 + 40))
  {
    v3 = *(a1 + 32);

    [v3 _systemUIUpdatedWithLayout:?];
  }
}

void sub_10000327C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) cbDiscovery];

  if (v3 == v4)
  {
    v5 = [v6 bleAppleManufacturerData];

    if (v5)
    {
      [*(a1 + 40) _cbDeviceFound:v6];
    }
  }
}

void *sub_100003498(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[9] == *(a1 + 40))
  {
    return [result _shareAudioActionScannerDeviceLost:a2];
  }

  return result;
}

void sub_1000034BC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) cbDiscovery];

  if (v3 == v4)
  {
    [*(a1 + 40) _cbDeviceLost:v5];
  }
}

uint64_t sub_100003530()
{
  if (qword_1002FA030 != -1)
  {
    sub_1001D2264();
  }

  return atomic_fetch_add(&unk_1002FA038, 1u) + 1;
}

uint64_t sub_1000038B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000038C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000038D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000038E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000038F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003918(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003928(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003968(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003978(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003998(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003A08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003A18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = *(a1 + 40);
  v7 = a1 + 40;
  v6 = v8;
  v12 = v5;
  if (*(v7 - 8) == *(v8 + 1160))
  {
    if (a2)
    {
      v9 = a2 < 11;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    *(v6 + 1152) = v10;
    *(*v7 + 1168) = a2;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_100003AFC(a2, v7);
    }

    v11 = *v7;
    if (*(*v7 + 1152) == 1)
    {
      [v11 _clearAllDisconnectTicks];
      v11 = *v7;
    }

    [v11 _update];
    v5 = v12;
  }

  if (v5)
  {
    v5[2](v12);
    v5 = v12;
  }
}

uint64_t sub_100004DFC()
{
  sub_100072F64();
  [*v2 firstUnlocked];
  *(v0 + 1152);
  [*v1 screenOn];
  [*v1 screenState];
  [*v1 screenActive];
  [*v1 screenLocked];
  *(v0 + 1112);
  return LogPrintF();
}

void sub_1000053C0(uint64_t a1, void *a2)
{
  v14 = *(a1 + 96);
  v13 = *(a1 + 100);
  v12 = *(a1 + 104);
  v15 = [*(a1 + 16) srDiscoveredDeviceMap];
  [v15 count];
  v4 = [*(a1 + 16) nearbyInfoDevices];
  [v4 count];
  if (*a2 <= 0xAuLL)
  {
    v5 = off_1002BA268[*a2];
  }

  v6 = *(a1 + 40);
  if (v6 <= 4)
  {
    v7 = off_1002BA2C0[v6];
  }

  v8 = *(a1 + 44);
  if (v8 <= 0xF)
  {
    v9 = off_1002BA2E8[v8];
  }

  *(a1 + 24);
  [*(a1 + 48) intValue];
  *(a1 + 65);
  v10 = *(a1 + 72);
  if (v10 <= 3)
  {
    v11 = (&off_1002BA400)[v10];
  }

  LogPrintF();
}

void sub_100005700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100005AB8(void *result)
{
  v1 = result[5];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6E08 <= 30)
  {
    if (dword_1002F6E08 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[5];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = v2[5];
  }

LABEL_7:
  v4 = *(v2[4] + 16);
  v5 = *(*(v1 + 8) + 40);

  return [v4 logConnectionBackoffReason:v5 wxAddress:0];
}

void sub_100005B80(void *a1)
{
  [a1 btAddress];
  objc_claimAutoreleasedReturnValue();
  v1 = [sub_10007315C() tipiConnectType];
  if (v1 <= 0xA)
  {
    v2 = off_1002B8FD0[v1];
  }

  LogPrintF();
}

id sub_100005C14(const char *a1)
{
  if (qword_1002FA130 != -1)
  {
    sub_100005D00();
  }

  pthread_mutex_lock(&stru_1002F6BA8);
  v2 = [NSString stringWithUTF8String:a1];
  v3 = [qword_1002FA128 objectForKey:v2];
  if (!v3)
  {
    v3 = os_log_create("com.apple.bluetoothcloud", a1);
    [qword_1002FA128 setObject:v3 forKey:v2];
  }

  pthread_mutex_unlock(&stru_1002F6BA8);

  return v3;
}

void *sub_100005CDC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[5] == *(a1 + 40))
  {
    return [result _wxDeviceLost:a2];
  }

  return result;
}

void *sub_100005D84(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[5] == *(a1 + 40))
  {
    return [result _wxDeviceFound:a2];
  }

  return result;
}

BOOL sub_100005EE8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100005F40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100005F70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100005FC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[12];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000060EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_100006260()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006298()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000062D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000631C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000649C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for URL();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

char *sub_100006614(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    *(result + 1) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for URL();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100006788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100006834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000068DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 12)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100006A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 12)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_100006B48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006B80()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006BB8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100006C84()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006CE0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006D20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006D70()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006DA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006EA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 120);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100007078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 120);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000071A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000072CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000074A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000075D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000076FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 12)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100007830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 12)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1000079A8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000079E0()
{
  if (v0[3])
  {

    v1 = v0[5];
  }

  v2 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007A2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007A64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007AB4()
{
  if (v0[3])
  {

    v1 = v0[5];
  }

  v2 = v0[6];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100007B0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007B2C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007B68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007BA4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100007C84()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100007D5C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100007E34()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007E98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007F18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007F58()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007FA8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007FF8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100008030(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10000803C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008074()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000080C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100008118()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008198()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100008218()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008260()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000082B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000082F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100008350()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000083A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000083E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008428()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_100008478()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_1000084C8()
{
  v1 = *(v0 + 16);

  sub_100162F68(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 58, 7);
}

uint64_t sub_10000851C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008660()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000869C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000086F8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008748()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008780()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000087C0()
{
  sub_1000EF870(v0[2], v0[3]);
  v1 = v0[5];

  v2 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008808()
{
  sub_1000EF870(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000884C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008884()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000088BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008908()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008964()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000899C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000089D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008A20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008A7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008AB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B08()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008B40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008B80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 48))
  {

    v3 = *(v0 + 64);
  }

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100008BE4()
{
  v1 = (type metadata accessor for SoundProfileRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  sub_1000EF870(*(v0 + v3), *(v0 + v3 + 8));
  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v1[8];
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  v12 = v1[9];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v7 + v12, v13);
  v14 = *(v0 + v4);

  v15 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v6 + 8, v2 | 7);
}

uint64_t sub_100008D88()
{
  v1 = (type metadata accessor for MagicPairingSettingsRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000EF870(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v7 = *(v5 + v1[8] + 8);

  sub_1000EF870(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_1000EF870(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  sub_1000EF870(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_1000EF870(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_1000EF870(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  sub_1000EF870(*(v5 + v1[14]), *(v5 + v1[14] + 8));
  v8 = *(v5 + v1[15] + 8);

  v9 = *(v5 + v1[16] + 8);

  v10 = *(v5 + v1[17] + 8);

  v11 = *(v5 + v1[18] + 8);

  v12 = *(v5 + v1[19] + 8);

  v13 = *(v5 + v1[20] + 8);

  v14 = *(v5 + v1[21] + 8);

  v15 = *(v5 + v1[22] + 8);

  v16 = *(v5 + v1[23] + 8);

  v17 = *(v5 + v1[24] + 8);

  v18 = *(v5 + v1[25] + 8);

  v19 = *(v5 + v1[26] + 8);

  v20 = *(v5 + v1[27] + 8);

  v21 = *(v5 + v1[28] + 8);

  v22 = *(v5 + v1[29] + 8);

  v23 = *(v5 + v1[30] + 8);

  v24 = *(v5 + v1[31] + 8);

  v25 = v1[32];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  v27 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10000904C()
{
  v1 = (type metadata accessor for MagicPairingSettingsRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_1000EF870(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v7 = *(v0 + v3 + v1[8] + 8);

  sub_1000EF870(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_1000EF870(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  sub_1000EF870(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_1000EF870(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_1000EF870(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  sub_1000EF870(*(v5 + v1[14]), *(v5 + v1[14] + 8));
  v8 = *(v0 + v3 + v1[15] + 8);

  v9 = *(v0 + v3 + v1[16] + 8);

  v10 = *(v0 + v3 + v1[17] + 8);

  v11 = *(v0 + v3 + v1[18] + 8);

  v12 = *(v0 + v3 + v1[19] + 8);

  v13 = *(v0 + v3 + v1[20] + 8);

  v14 = *(v0 + v3 + v1[21] + 8);

  v15 = *(v0 + v3 + v1[22] + 8);

  v16 = *(v0 + v3 + v1[23] + 8);

  v17 = *(v0 + v3 + v1[24] + 8);

  v18 = *(v0 + v3 + v1[25] + 8);

  v19 = *(v0 + v3 + v1[26] + 8);

  v20 = *(v0 + v3 + v1[27] + 8);

  v21 = *(v0 + v3 + v1[28] + 8);

  v22 = *(v0 + v3 + v1[29] + 8);

  v23 = *(v0 + v3 + v1[30] + 8);

  v24 = *(v0 + v3 + v1[31] + 8);

  v25 = v1[32];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v0 + v3 + v25, v26);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100009300()
{
  v1 = (type metadata accessor for DeviceRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_1000EF870(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v1[8] + 8);

  v9 = *(v5 + v1[9] + 8);

  v10 = *(v5 + v1[10] + 8);

  v11 = *(v5 + v1[11] + 8);

  v12 = *(v5 + v1[12] + 8);

  v13 = *(v5 + v1[13] + 8);

  v14 = v1[14];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100009498()
{
  v1 = (type metadata accessor for BTDeferredRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 16);

  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[9] + 8);

  v9 = (v0 + v3 + v1[11]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_1000EF870(*v9, v10);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v2 | 7);
}

uint64_t sub_1000095D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009618()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100009734()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100009958(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AudioDeviceManager);
    v2 = qword_1002FA010;
    qword_1002FA010 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_100009B04(uint64_t a1)
{
  if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D0FD0(a1);
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

void sub_100009D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009D9C(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_value(xdict, "kBTAudioMsgArgAllPublishedUIDs");
    v7 = v6;
    if (v6 && xpc_get_type(v6) == &_xpc_type_array && xpc_array_get_count(v7))
    {
      v8 = 0;
      do
      {
        string = xpc_array_get_string(v7, v8);
        if (string)
        {
          v10 = string;
          if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D1108(v10);
          }

          v11 = *(*(*(a1 + 40) + 8) + 40);
          v12 = [NSString stringWithUTF8String:v10];
          [v11 addObject:v12];
        }

        ++v8;
      }

      while (xpc_array_get_count(v7) > v8);
    }

    goto LABEL_30;
  }

  if (xdict == &_xpc_error_connection_interrupted)
  {
    if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D10EC();
    }
  }

  else
  {
    if (xdict != &_xpc_error_connection_invalid)
    {
      v3 = CUXPCDecodeNSErrorIfNeeded();
      v4 = v3;
      if (v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = CBErrorF();
      }

      v7 = v5;

      if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1048();
      }

LABEL_30:

      goto LABEL_31;
    }

    if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D10D0();
    }
  }

LABEL_31:
  v13 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(*(a1 + 32) + 16))();
}

id sub_10000AAD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[3] bluetoothState];

  return [v1 _bluetoothStateUpdate:v2];
}

uint64_t sub_10000AB24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[3];
  if (v5 == *(a1 + 40))
  {
    v9 = v3;
    if (v3)
    {
      if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1740();
      }

      [*(*(a1 + 32) + 24) invalidate];
      v6 = *(a1 + 32);
      v7 = *(v6 + 24);
      *(v6 + 24) = 0;
    }

    else
    {
      v5 = [v4 _bluetoothStateUpdate:{objc_msgSend(v5, "bluetoothState")}];
    }

    v3 = v9;
  }

  return _objc_release_x1(v5, v3);
}

id sub_10000C184(uint64_t a1)
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1E9C();
  }

  v2 = *(a1 + 32);

  return [v2 activate:1];
}

uint64_t sub_10000C314()
{

  return LogPrintF();
}

void sub_10000C62C(uint64_t a1)
{
  *(*(a1 + 32) + 24) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (*(v2 + 28) == 1)
  {
    v3 = qword_100300AE0;

    [v3 updateAudioSessionControl:?];
  }

  else
  {
    v5 = [*(v2 + 32) remoteObjectProxy];
    [v5 audioSessionControlUpdate:*(a1 + 32)];
  }
}

void sub_10000C86C(uint64_t a1)
{
  if (*(*(a1 + 32) + 28) == 1)
  {
    if (dword_1002F5E10 <= 90 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D1F50();
    }
  }

  else
  {
    if (dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D1F34();
    }

    v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = *(a1 + 68);
    v6[0] = *(a1 + 52);
    v6[1] = v5;
    [v2 setMuteAction:v3 auditToken:v6 bundleIdentifier:v4];
  }
}

void sub_10000C9D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v7 = NSErrorF();
    if (dword_1002F5E10 <= 90 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D1F70();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = *(a1 + 32);

    [v6 _activate:0];
  }
}

void sub_10000CCCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3;
    if (dword_1002F5E10 <= 90)
    {
      if (dword_1002F5E10 != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
      {
        sub_1001D1FFC();
        v4 = v9;
      }
    }

    [*(a1 + 32) _reportError:v4];
    goto LABEL_17;
  }

  if (*(a1 + 40) == 1)
  {
    if (dword_1002F5E10 > 30 || dword_1002F5E10 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }
  }

  else if (dword_1002F5E10 > 30 || dword_1002F5E10 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_14;
  }

  sub_1001D203C(a1);
LABEL_14:
  v6 = objc_retainBlock(*(*(a1 + 32) + 16));
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  if (v6)
  {
    v6[2](v6, 0);
  }

LABEL_17:
}

void sub_10000CF04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000CFBC;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_10000CFBC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10000D1D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    if (dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D215C();
    }
  }

  else if (dword_1002F5E10 <= 90 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D211C();
  }

  (*(*(a1 + 32) + 16))();
}

id sub_10000D45C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void sub_10000D5E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 29) & 1) == 0)
  {
    *(v2 + 29) = 1;
    if ((*(*(a1 + 32) + 30) & 1) == 0 && dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D21B8();
    }

    v4 = *(a1 + 32);
    if (*(v4 + 28) == 1)
    {
      [v4 _invalidateDirect];
      v4 = *(a1 + 32);
    }

    if (*(v4 + 32))
    {
      [*(v4 + 32) invalidate];
      v4 = *(a1 + 32);
    }

    v8 = objc_retainBlock(*(v4 + 16));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    if (v8)
    {
      v7 = BTErrorF();
      v8[2](v8, v7);
    }

    [*(a1 + 32) _invalidated];
  }
}

void sub_10000D784(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D7F8;
  block[3] = &unk_1002B6880;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t sub_10000DAF8()
{
  if (qword_1002FA020 != -1)
  {
    sub_1001D2250();
  }

  return atomic_fetch_add(&unk_1002FA028, 1u) + 1;
}

void *sub_10000E278(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[4])
  {
    return [result xpcReceivedMessage:a2];
  }

  return result;
}

char *sub_10000E3B8(char *result)
{
  v2 = (result + 32);
  v1 = *(result + 4);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D23F4(v2);
    }

    v3 = *v2;
    objc_sync_enter(v3);
    v4 = *(*v2 + 4);
    v5 = v4;
    if (v4)
    {
      xpc_connection_cancel(v4);
    }

    objc_sync_exit(v3);
    v6 = *v2;

    return [v6 _invalidated];
  }

  return result;
}

id sub_10000E6C0(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2458(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:2 destinationIdentifier:v3 completionHandler:v5];
}

id sub_10000E818(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2498(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:12 destinationIdentifier:v3 completionHandler:v5];
}

id sub_10000E970(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D24D8(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:4 destinationIdentifier:v3 completionHandler:v5];
}

id sub_10000EAC8(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2518(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:5 destinationIdentifier:v3 completionHandler:v5];
}

id sub_10000EC20(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2558(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendDeviceConfig:v4 destinationIdentifier:v3 completionHandler:v5];
}

void sub_10000ED54(uint64_t a1)
{
  v2 = [@"Send getTipiTable message" dataUsingEncoding:4];
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2598(a1);
  }

  [*(a1 + 40) _sendAccessoryEventMessage:v2 eventType:6 destinationIdentifier:*(a1 + 32) completionHandler:*(a1 + 48)];
}

id sub_10000EED8(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D25D8(a1);
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:8 destinationIdentifier:v3 completionHandler:v5];
}

void sub_10000F230(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

void sub_10000F4E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CUXPCDecodeNSErrorIfNeeded();
  (*(v1 + 16))(v1, v2);
}

void sub_10000FD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FD48(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_10000FF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  (*(v7 + 16))(v7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FFB4(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_10001024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010284(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_10001051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010554(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000108E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  (*(v8 + 16))(v8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010924(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_100010BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010BF4(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_100010EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010EDC(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_100011174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000111AC(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_10001144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011484(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_10001171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011754(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000119F8(id a1)
{
  v1 = objc_alloc_init(AAPairedDeviceDaemon);
  v2 = qword_1002FA040;
  qword_1002FA040 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100011CB0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_100012484(uint64_t a1)
{
  v2 = [*(a1 + 32) _deviceWithIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    if ([v2 updateWithAADeviceConfig:*(a1 + 48)])
    {
      [*(a1 + 32) _saveDeviceRecordForDevice:v3];
      if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D32E8();
      }

      [*(a1 + 32) _pairedDeviceUpdated:v3];
    }

    else if (dword_1002F6070 <= 90 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D32A8();
    }
  }

  else
  {
    sub_1001D3328();
  }
}

uint64_t sub_1000126E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F6070 > 90)
    {
      goto LABEL_11;
    }

    v7 = v3;
    if (dword_1002F6070 == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v7;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v6 = *(a1 + 32);
    v3 = LogPrintF();
LABEL_5:
    v4 = v7;
    goto LABEL_11;
  }

  if (dword_1002F6070 <= 30)
  {
    v7 = 0;
    if (dword_1002F6070 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = sub_1001D33A4(a1);
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

void sub_1000128F8(id a1)
{
  if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D33E8();
  }
}

uint64_t sub_100012950(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F6070 <= 90 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3404();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6070 <= 30)
    {
      v8 = 0;
      if (dword_1002F6070 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001D3444();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

id sub_100012B1C(uint64_t a1)
{
  if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3460(a1);
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _aaDeviceRecordsRemovedWithRecords:v3];
}

void sub_100012F5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001302C;
  block[3] = &unk_1002B6CF0;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

id sub_10001302C(id result)
{
  v1 = result;
  if (dword_1002F6070 <= 30)
  {
    if (dword_1002F6070 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D35E8(v1);
    }
  }

  if (!*(v1 + 32))
  {
    v2 = *(v1 + 48);

    return [v2 setCloudRecordInfoLoaded:1];
  }

  return result;
}

void sub_10001318C(id a1)
{
  if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D362C();
  }
}

uint64_t sub_1000131D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 32))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F6070 <= 90 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3648();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 32);
      *(v5 + 32) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6070 <= 30)
    {
      v8 = 0;
      if (dword_1002F6070 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001D3688();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void *sub_100013554(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _coreBluetoothDeviceFound:a2];
  }

  return result;
}

void *sub_100013570(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _coreBluetoothDeviceLost:a2];
  }

  return result;
}

uint64_t sub_10001358C(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 24) && dword_1002F6070 <= 30)
  {
    if (dword_1002F6070 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(v1 + 40) + 24);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_100013624(uint64_t result)
{
  if (dword_1002F6070 <= 30)
  {
    v1 = result;
    if (dword_1002F6070 != -1)
    {
      return sub_1001D36A4(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D36A4(v1);
    }
  }

  return result;
}

uint64_t sub_100013680(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  if (*(a1 + 32) == v6)
  {
    if (v3)
    {
      v14 = v3;
      if (dword_1002F6070 <= 90)
      {
        if (dword_1002F6070 == -1)
        {
          v7 = _LogCategory_Initialize();
          v5 = *(a1 + 40);
          if (!v7)
          {
            goto LABEL_10;
          }

          v6 = *(v5 + 24);
          v3 = v14;
        }

        v12 = v6;
        v13 = v3;
        LogPrintF();
        v5 = *(a1 + 40);
      }

LABEL_10:
      [*(v5 + 24) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 24);
      *(v8 + 24) = 0;

      goto LABEL_11;
    }

    if (dword_1002F6070 > 30)
    {
      goto LABEL_12;
    }

    v14 = 0;
    if (dword_1002F6070 != -1)
    {
LABEL_8:
      v3 = LogPrintF();
LABEL_11:
      v4 = v14;
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      v10 = *(*(a1 + 40) + 24);
      goto LABEL_8;
    }
  }

LABEL_12:

  return _objc_release_x1(v3, v4);
}

void sub_1000145AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    v2 = *(*(a1 + 32) + 64);
  }

  v6 = (a1 + 40);
  if (([v2 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
    if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D39E4((a1 + 40));
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [*(a1 + 32) pairedDevices];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*v6 pairedDeviceUpdated:*(*(&v13 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

void sub_1000147D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    if ([v2 containsObject:*(a1 + 40)])
    {
      [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
      if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3A44((a1 + 40));
      }
    }
  }
}

uint64_t sub_1000148D4()
{

  return LogPrintF();
}

uint64_t sub_1000148F4()
{

  return _LogCategory_Initialize();
}

void sub_100014984(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAConversationDetectSessionManager);
    v2 = qword_1002FA050;
    qword_1002FA050 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_100014E60(uint64_t a1)
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3B08();
  }

  v2 = *(a1 + 32);

  return [v2 _prefsChanged];
}

void *sub_100014EC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[13])
  {
    return [result _deviceFound:a2];
  }

  return result;
}

void *sub_100014EE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[13])
  {
    return [result _deviceLost:a2];
  }

  return result;
}

uint64_t sub_100014F00(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 104) && dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 32);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_100014F94(uint64_t result)
{
  if (dword_1002F61A0 <= 30)
  {
    v1 = result;
    if (dword_1002F61A0 != -1)
    {
      return sub_1001D3B24(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D3B24(v1);
    }
  }

  return result;
}

uint64_t sub_100014FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(v5 + 104);
  if (*(a1 + 32) == v6)
  {
    if (v3)
    {
      v14 = v3;
      if (dword_1002F61A0 <= 90)
      {
        if (dword_1002F61A0 == -1)
        {
          v7 = _LogCategory_Initialize();
          v5 = *(a1 + 40);
          if (!v7)
          {
            goto LABEL_10;
          }

          v6 = *(v5 + 104);
          v3 = v14;
        }

        v12 = v6;
        v13 = v3;
        LogPrintF();
        v5 = *(a1 + 40);
      }

LABEL_10:
      [*(v5 + 104) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 104);
      *(v8 + 104) = 0;

      goto LABEL_11;
    }

    if (dword_1002F61A0 > 30)
    {
      goto LABEL_12;
    }

    v14 = 0;
    if (dword_1002F61A0 != -1)
    {
LABEL_8:
      v3 = LogPrintF();
LABEL_11:
      v4 = v14;
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      v10 = *(*(a1 + 40) + 104);
      goto LABEL_8;
    }
  }

LABEL_12:

  return _objc_release_x1(v3, v4);
}

void sub_1000152A4(id a1)
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3BA8();
  }
}

void *sub_1000152F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[1])
  {
    return [result _conversationDetectMessageReceived:a3 fromDeviceIdentifier:a2];
  }

  return result;
}

uint64_t sub_10001530C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3BC4();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F61A0 <= 30)
    {
      v8 = 0;
      if (dword_1002F61A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001D3C04();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_1000158A8(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = v2;
  if (v2)
  {
    v7 = v2;
    v4 = [v2 objectForKeyedSubscript:@"AAConversationDetectKeyIdentifier"];
    v5 = [v7 objectForKeyedSubscript:@"AAConversationDetectKeyData"];
    [*(a1 + 40) _conversationDetectMessageReceived:v5 fromDeviceIdentifier:v4];

LABEL_3:
    v3 = v7;
    goto LABEL_7;
  }

  if (dword_1002F61A0 <= 90)
  {
    v7 = 0;
    if (dword_1002F61A0 != -1 || (v2 = _LogCategory_Initialize(), v3 = 0, v2))
    {
      v2 = sub_1001D3DB8();
      goto LABEL_3;
    }
  }

LABEL_7:

  return _objc_release_x1(v2, v3);
}

uint64_t sub_1000163E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    if (dword_1002F61A0 > 90)
    {
      goto LABEL_11;
    }

    if (dword_1002F61A0 == -1)
    {
      v5 = _LogCategory_Initialize();
      v3 = v9;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    v8 = *(a1 + 32);
    LogPrintF();
LABEL_5:
    v3 = v9;
    goto LABEL_11;
  }

  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (v4 = _LogCategory_Initialize(), v3 = 0, v4))
    {
      sub_1001D3FC8(a1);
      goto LABEL_5;
    }
  }

LABEL_11:
  v6 = *(a1 + 48);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v9);
    v3 = v9;
  }

  return _objc_release_x1(v6, v3);
}

id sub_10001661C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  v5 = *(a1 + 48);
  v4 = *(a1 + 52);
  v7 = *(a1 + 56);
  v6 = *(a1 + 60);
  v9 = *(a1 + 64);
  v8 = *(a1 + 68);
  v10 = *(a1 + 72);
  v11 = *(a1 + 76);
  v12 = *(a1 + 77);
  v13 = *(a1 + 81);
  v14 = *(a1 + 85);
  v15 = *(a1 + 89);
  v16 = *(a1 + 93);
  v17 = *(a1 + 97);
  v18 = *(a1 + 101);
  v19 = *(a1 + 105);
  v20 = *(a1 + 109);
  v21 = *(a1 + 113);
  v22 = *(a1 + 114);
  v23 = *(a1 + 116);
  v24 = *(a1 + 122);
  v25 = *(a1 + 118);
  v26 = *(a1 + 139);
  v55 = *(a1 + 123);
  v56 = v26;
  v27 = *(a1 + 171);
  v57 = *(a1 + 155);
  v58 = v27;
  if (dword_1002F61A0 <= 30)
  {
    v53 = v23;
    if (dword_1002F61A0 != -1 || _LogCategory_Initialize())
    {
      *&v54[0] = 0;
      NSAppendPrintF();
      v76 = 0;
      NSAppendPrintF();
      v28 = v76;

      v75 = v28;
      NSAppendPrintF();
      v29 = v28;

      v74 = v29;
      NSAppendPrintF();
      v30 = v29;

      v73 = v30;
      NSAppendPrintF();
      v31 = v30;

      v72 = v31;
      NSAppendPrintF();
      v32 = v31;

      v71 = v32;
      NSAppendPrintF();
      v33 = v32;

      v70 = v33;
      NSAppendPrintF();
      v34 = v33;

      v69 = v34;
      NSAppendPrintF();
      v35 = v34;

      v68 = v35;
      NSAppendPrintF();
      v36 = v35;

      v67 = v36;
      NSAppendPrintF();
      v37 = v36;

      v66 = v37;
      NSAppendPrintF();
      v38 = v37;

      v65 = v38;
      NSAppendPrintF();
      v39 = v38;

      v64 = v39;
      NSAppendPrintF();
      v40 = v39;

      v63 = v40;
      NSAppendPrintF();
      v41 = v40;

      v62 = v41;
      NSAppendPrintF();
      v42 = v41;

      v61 = v42;
      NSAppendPrintF();
      v43 = v42;

      v60 = v43;
      v52 = v53;
      NSAppendPrintF();
      v44 = v43;

      v59 = v44;
      NSAppendPrintF();
      v45 = v44;

      v51 = v45;
      LogPrintF();
    }

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      *&v54[0] = 0;
      NSAppendPrintF();
      v76 = 0;
      NSAppendPrintF();
      v46 = v76;

      v75 = v46;
      NSAppendPrintF();
      v47 = v46;

      v74 = v47;
      NSAppendPrintF();
      v48 = v47;

      v51 = v48;
      LogPrintF();
    }
  }

  v49 = *(a1 + 32);
  v54[0] = v55;
  v54[1] = v56;
  v54[2] = v57;
  v54[3] = v58;
  return [v49 _setCDSignalAudioTunings:{v54, v11, v51, v52}];
}

void sub_100017280(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [a3 identifier];
  [v3 _sendConversationDetectMessage:v4 destinationIdentifier:v5 completion:0];
}

void sub_1000173E4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [a3 identifier];
  [v3 _sendConversationDetectMessage:v4 destinationIdentifier:v5 completion:0];
}

void sub_100017548(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [a3 identifier];
  [v3 _sendConversationDetectMessage:v4 destinationIdentifier:v5 completion:0];
}

void sub_100018B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  (*(v14 + 16))(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100018BCC(void *result)
{
  v1 = *(*(result[5] + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F61A0 <= 90)
  {
    if (dword_1002F61A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(v2[5] + 8) + 40);
    }

    v4 = v1;
    LogPrintF();
  }

LABEL_7:
  *(v2[4] + 177) = 0;
  [v2[4] _audioSessionEnsureStopped];
  v3 = v2[4];

  return [v3 _cdSessionEnsureDeactivated:0];
}

id sub_100018C94(uint64_t a1, char a2)
{
  *(*(a1 + 32) + 177) = 0;
  *(*(a1 + 32) + 209) = a2;
  if (*(*(a1 + 32) + 209))
  {
    v3 = &kCFBooleanTrue;
  }

  else
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  CFPrefs_SetValue();
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D4330();
  }

  [*(a1 + 32) _audioSessionEnsureStopped];
  v5 = *(a1 + 32);

  return [v5 _cdSessionEnsureDeactivated:0];
}

void sub_100018E1C(uint64_t a1)
{
  v2 = a1 + 32;
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v3 = *v2;
  if ((*(*v2 + 17) & 1) == 0)
  {
    if (dword_1002F61A0 > 30 || dword_1002F61A0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (*(v3 + 224))
  {
    objc_sync_exit(obj);

    if (dword_1002F61A0 <= 10 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4388(a1, v2);
    }

    v4 = +[AVAudioSession sharedInstance];
    v5 = [NSNumber numberWithDouble:*(*v2 + 200)];
    v6 = [NSNumber numberWithDouble:*(*v2 + 200)];
    v15 = 0;
    [v4 setDuckingFadeOutDuration:v5 fadeInDuration:v6 error:&v15];
    v7 = v15;

    if (!v7)
    {
      v8 = +[AVAudioSession sharedInstance];
      v9 = *(a1 + 40);
      v14 = 0;
      [v8 setDuckToLevelScalar:0 unduckToLevelScalar:v9 error:&v14];
      v7 = v14;
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, v7);
    }

    return;
  }

  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1)
    {
      goto LABEL_16;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *v2;
LABEL_16:
      v11 = *(v3 + 20);
      if (v11 <= 0xB)
      {
        v12 = (&off_1002B7018)[v11];
      }

LABEL_22:
      LogPrintF();
    }
  }

LABEL_23:
  objc_sync_exit(obj);
}

id sub_100019120(uint64_t a1)
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D43D8();
  }

  [*(a1 + 32) _deregisterFromAVAudioSessionSpeechDetectionStyleChanges];
  v2 = *(a1 + 32);

  return [v2 _registerForAVAudioSessionSpeechDetectionStyleChanges];
}

id sub_100019654(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100019688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v5 = *(*(*(a1 + 48) + 8) + 24);
    v12 = 0;
    v3 = [*(a1 + 32) floatValue];
    v4 = 0;
    if (v5 >= v6)
    {
      goto LABEL_11;
    }

    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 48) + 8) + 24);
    v7 = *(*(*(a1 + 48) + 8) + 24);
    [*(a1 + 32) floatValue];
    if (v7 > *&v8)
    {
      [*(a1 + 32) floatValue];
      *(*(*(a1 + 48) + 8) + 24) = LODWORD(v8);
    }

    v9 = *(a1 + 40);
    LODWORD(v8) = *(*(*(a1 + 48) + 8) + 24);
    v10 = [NSNumber numberWithFloat:v8];
    [v9 _asyncAudioSessionDuckWithLevel:v10 completion:*(*(*(a1 + 64) + 8) + 40)];

    goto LABEL_10;
  }

  if (dword_1002F61A0 <= 30)
  {
    v12 = v3;
    if (dword_1002F61A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v12, v3))
    {
      v3 = sub_1001D442C(a1);
LABEL_10:
      v4 = v12;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

id sub_100019894(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:@"speechDetectionStyle"];
  if (result)
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v4 = [v3 unsignedIntValue];

    v5 = *(a1 + 48);

    return [v5 _speechDetectionStyleChanged:v4];
  }

  return result;
}

void sub_10001A14C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 184))
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v7, v5);
    }

    if (!v5)
    {
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D485C();
      }

      [*(a1 + 32) clearFence:@"com.apple.audioaccessoryd.cdFence"];
      [*(a1 + 40) _setPedestrianFenceWithHandler:*(a1 + 48)];
    }
  }
}

void sub_10001A3B8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D491C();
    }

    [*(a1 + 32) _stopPedestrianFenceSession];
  }

  else
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D495C();
    }

    [*(a1 + 32) _updateAccessoriesWithMotionState:1];
  }
}

id sub_10001A7B0(uint64_t a1)
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D4A18(a1);
  }

  result = [*(a1 + 32) headGesture];
  if (result == 1)
  {
    v3 = *(a1 + 40);

    return [v3 _updateAccessoriesWithMotionState:2];
  }

  return result;
}

uint64_t sub_10001A8AC(uint64_t result)
{
  if (dword_1002F61A0 <= 30)
  {
    v1 = result;
    if (dword_1002F61A0 != -1)
    {
      return sub_1001D4AB0(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D4AB0(v1);
    }
  }

  return result;
}

id sub_10001A9D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 228);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64 != 0;
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D4B28();
  }

  *(*(a1 + 32) + 178) = v3;
  v4 = *(a1 + 32);
  if (v4[178] == 1)
  {
    v4[116] = 1;
    v4 = *(a1 + 32);
  }

  return [v4 _updatePauseState];
}

void sub_10001B624(id a1)
{
  v1 = objc_alloc_init(AADeviceManagerDaemon);
  v2 = qword_1002FA060;
  qword_1002FA060 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10001B920(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

id sub_10001BC54(uint64_t a1)
{
  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D5898();
  }

  v2 = *(a1 + 32);

  return [v2 _prefsChanged];
}

void sub_10001BF74(id a1)
{
  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D594C();
  }
}

uint64_t sub_10001BFCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D5968();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F62E0 <= 30)
    {
      v8 = 0;
      if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001D59A8();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10001C430(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    if (dword_1002F62E0 <= 90)
    {
      if (dword_1002F62E0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
        sub_1001D59E0();
LABEL_15:
        v3 = v8;
      }
    }
  }

  else if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_1001D5A20(a1);
      goto LABEL_15;
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v8);
    v3 = v8;
  }

  return _objc_release_x1(v6, v3);
}

void sub_10001D120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  (*(v27 + 16))(v27);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D15C(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (!result)
  {
    return result;
  }

  if (dword_1002F62E0 <= 90)
  {
    if (dword_1002F62E0 != -1)
    {
LABEL_4:
      v3 = a1[4];
      v7 = CUPrintNSError();
      LogPrintF();

      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(*(a1[6] + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = a1[5];
  if (result)
  {
    v4 = *(*(a1[6] + 8) + 40);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_10001D254(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = v3;
    v4 = v4[2]();
  }

  else
  {
    v6 = 0;
    v4 = [*(a1 + 32) _sendConfigOverAAController:*(a1 + 40) device:*(a1 + 48) completion:*(a1 + 56)];
  }

  v3 = v6;
LABEL_6:

  return _objc_release_x1(v4, v3);
}

void sub_10001E178(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(*(a1 + 32) + 40) allValues];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(a1 + 40) uppercaseString];
        v9 = [v7 bluetoothAddress];
        v10 = [v9 uppercaseString];
        v11 = [v8 isEqualToString:v10];

        if (v11)
        {
          if (*(a1 + 48) != [v7 farFieldSessionOnGoing])
          {
            if (dword_1002F62E0 <= 50 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
            {
              sub_1001D5F3C((a1 + 40));
            }

            [v7 setFarFieldSessionOnGoing:*(a1 + 48)];
            v12 = +[AAServicesDaemon sharedAAServicesDaemon];
            [v12 reportDeviceFound:v7];
          }

          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void sub_10001E508(id a1)
{
  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D5FC0();
  }
}

uint64_t sub_10001E554(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 32))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D5FDC();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 32);
      *(v5 + 32) = 0;

      goto LABEL_7;
    }

    if (dword_1002F62E0 <= 30)
    {
      v8 = 0;
      if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001D601C();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void *sub_10001E8C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _coreBluetoothDeviceFound:a2];
  }

  return result;
}

void *sub_10001E8E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _coreBluetoothDeviceLost:a2];
  }

  return result;
}

uint64_t sub_10001E8FC(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 24) && dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(v1 + 40) + 24);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_10001E994(uint64_t result)
{
  if (dword_1002F62E0 <= 30)
  {
    v1 = result;
    if (dword_1002F62E0 != -1)
    {
      return sub_1001D6038(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D6038(v1);
    }
  }

  return result;
}

uint64_t sub_10001E9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  if (*(a1 + 32) == v6)
  {
    if (v3)
    {
      v14 = v3;
      if (dword_1002F62E0 <= 90)
      {
        if (dword_1002F62E0 == -1)
        {
          v7 = _LogCategory_Initialize();
          v5 = *(a1 + 40);
          if (!v7)
          {
            goto LABEL_10;
          }

          v6 = *(v5 + 24);
          v3 = v14;
        }

        v12 = v6;
        v13 = v3;
        LogPrintF();
        v5 = *(a1 + 40);
      }

LABEL_10:
      [*(v5 + 24) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 24);
      *(v8 + 24) = 0;

      goto LABEL_11;
    }

    if (dword_1002F62E0 > 30)
    {
      goto LABEL_12;
    }

    v14 = 0;
    if (dword_1002F62E0 != -1)
    {
LABEL_8:
      v3 = LogPrintF();
LABEL_11:
      v4 = v14;
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      v10 = *(*(a1 + 40) + 24);
      goto LABEL_8;
    }
  }

LABEL_12:

  return _objc_release_x1(v3, v4);
}

void sub_10001EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001EF28(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 coreBluetoothDevice];
  v7 = [v6 deviceFlags];

  if ((v7 & 0x40) != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

uint64_t sub_10001EFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F62E0 > 90)
    {
      goto LABEL_11;
    }

    v7 = v3;
    if (dword_1002F62E0 == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v7;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v5 = [v4 localizedDescription];
    LogPrintF();
LABEL_5:

    v4 = v7;
    goto LABEL_11;
  }

  if (dword_1002F62E0 <= 30)
  {
    v7 = 0;
    if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      sub_1001D60FC(a1, &v8);
      v5 = v8;
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10001F0B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D61B4(a1);
    }

    [*(a1 + 32) setDynamicEndOfChargeEnabled:1];
    v3 = [*(a1 + 40) _sendDEOCTempDisableIntervalIfNeeded:*(a1 + 32)];
    goto LABEL_10;
  }

  if (dword_1002F62E0 <= 90)
  {
    v6 = v3;
    if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      sub_1001D6158(v4);
LABEL_10:
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10001F484(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    if (dword_1002F62E0 <= 90)
    {
      if (dword_1002F62E0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
        v7 = *(a1 + 32);
        LogPrintF();
        v3 = v8;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v8);
    v3 = v8;
  }

  return _objc_release_x1(v5, v3);
}

void sub_10001F698(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) headGesture] == 1)
  {
    v3 = 2;
    v4 = 1;
  }

  else
  {
    v5 = [*v2 headGesture];
    v4 = v5 == 2;
    if (v5 == 2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v8 = [v7 _getCurrentAudioOwner];
  v9 = v8;
  if (v4 && v8)
  {
    v12 = v8;
    if (dword_1002F62E0 <= 30)
    {
      if (dword_1002F62E0 != -1 || (v10 = _LogCategory_Initialize(), v9 = v12, v10))
      {
        sub_1001D6214(v2, v6, v3);
        v9 = v12;
      }
    }

    [v9 setDetectedHeadGesture:v3];
    v11 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v11 reportHeadGestureDetected:v12];

    v9 = v12;
    *(*v6 + 76) = v3;
  }
}

uint64_t sub_10001F81C(uint64_t result)
{
  if (dword_1002F62E0 <= 30)
  {
    v1 = result;
    if (dword_1002F62E0 != -1)
    {
      return sub_1001D62F8(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D62F8(v1);
    }
  }

  return result;
}

uint64_t sub_10001FD2C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  v8 = [v3 _deviceWithIdentifier:v4];

  v6 = v8;
  if (v8)
  {
    [v8 updateWithPairedAADevice:*v2];
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D6400();
    }

    v5 = [*(a1 + 32) _accessoryDeviceLost:v8];
    goto LABEL_6;
  }

  if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (v5 = _LogCategory_Initialize(), v6 = 0, v5))
    {
      v5 = sub_1001D6440(v2);
LABEL_6:
      v6 = v8;
    }
  }

  return _objc_release_x1(v5, v6);
}

void sub_10001FEE0(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _deviceWithIdentifier:*(a1 + 40)];
  v7 = v3;
  if (v3)
  {
    v5 = *(a1 + 48);
    v4 = (a1 + 48);
    if (v5 != [v3 smartRoutingStateFlags])
    {
      if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D6484(v2, v7, v4);
      }

      [v7 setSmartRoutingStateFlags:*v4];
      v6 = +[AAServicesDaemon sharedAAServicesDaemon];
      [v6 reportDeviceFound:v7];
    }
  }

  else
  {
    sub_1001D6530(v2);
  }
}

uint64_t sub_100020118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F62E0 <= 90)
    {
      v6 = v3;
      if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        v3 = sub_1001D65B0();
LABEL_13:
        v4 = v6;
      }
    }
  }

  else if (dword_1002F62E0 <= 30)
  {
    v6 = 0;
    if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      sub_1001D65F0(a1);
      goto LABEL_13;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_100020268(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020304;
  v7[3] = &unk_1002B6D18;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100020304(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D6664();
    }
  }

  else
  {
    [*(a1 + 40) _setHRTFAssetDownloadOTA];
    v5 = 0;
    v6 = &v5;
    v7 = 0x2050000000;
    v1 = qword_1002FA070;
    v8 = qword_1002FA070;
    if (!qword_1002FA070)
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100020680;
      v4[3] = &unk_1002B6C00;
      v4[4] = &v5;
      sub_100020680(v4);
      v1 = v6[3];
    }

    v2 = v1;
    _Block_object_dispose(&v5, 8);
    v3 = [[v1 alloc] initWithCameraSession:0];
    [v3 downloadHRTFAsset:0 withCompletion:&stru_1002B7270];
  }
}

void sub_100020424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002043C(id a1, BOOL a2, NSString *a3, NSError *a4)
{
  v6 = a3;
  v5 = a4;
  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

Class sub_100020680(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002FA078)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000207C4;
    v4[4] = &unk_1002B72D0;
    v4[5] = v4;
    v5 = off_1002B72B8;
    v6 = 0;
    qword_1002FA078 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002FA078)
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
  result = objc_getClass("HRTFEnrollmentSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001D6680();
  }

  qword_1002FA070 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000207C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002FA078 = result;
  return result;
}

void sub_10002096C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    if (dword_1002F6410 <= 90 && (dword_1002F6410 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D66A8();
    }

LABEL_11:
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, v7);
    }

    goto LABEL_24;
  }

  v8 = [v5 currentCampaign];

  if (v8)
  {
    if (dword_1002F6410 <= 30 && (dword_1002F6410 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D66E8();
    }

    v7 = [NSError errorWithDomain:@"AAFeedbackErrorDomain" code:1 userInfo:0];
    goto LABEL_11;
  }

  v10 = [v5 errors];
  v11 = [v10 lastObject];

  if ([v5 declineCount] < 1)
  {
    v13 = [[FBKSForm alloc] initWithIdentifier:*(a1 + 32)];
    [v13 setAuthenticationMethod:2];
    v14 = [[FBKSDraftLauncher alloc] initWithFeedbackForm:v13];
    v15 = objc_alloc_init(FBKSLaunchConfiguration);
    v16 = v15;
    if (*(a1 + 40))
    {
      [v15 setLocalizedPromptTitle:?];
    }

    else
    {
      v17 = [*(a1 + 48) _feedbackCampainLocalizedTitleForCampain:*(a1 + 72)];
      [v16 setLocalizedPromptTitle:v17];
    }

    [v16 setPromptStyle:*(a1 + 64)];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100020C40;
    v18[3] = &unk_1002B6A10;
    v19 = *(a1 + 56);
    [v14 collectFeedbackWithLaunchConfiguration:v16 completion:v18];

    v7 = 0;
  }

  else
  {
    if (dword_1002F6410 <= 30 && (dword_1002F6410 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D6708(v5);
    }

    v7 = [NSError errorWithDomain:@"AAFeedbackErrorDomain" code:2 userInfo:0];
    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, v7);
    }
  }

LABEL_24:
}

uint64_t sub_100020C40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 16);
    v9 = 0;
    goto LABEL_9;
  }

  v9 = v3;
  if (dword_1002F6410 <= 90)
  {
    if (dword_1002F6410 != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
    {
      sub_1001D674C();
      v4 = v9;
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 16);
LABEL_9:
    v6 = v7();
    v4 = v9;
  }

LABEL_10:

  return _objc_release_x1(v6, v4);
}

void sub_100020DDC(id a1)
{
  v1 = objc_alloc_init(AAServicesDaemon);
  v2 = qword_1002FA080;
  qword_1002FA080 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100021828(uint64_t a1)
{
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D6E04();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

id sub_100021F54(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  state64 = 0;
  notify_get_state(v2, &state64);
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D6E70();
  }

  return [*(a1 + 32) _muteStateChanged];
}

id sub_100021FD4(uint64_t a1)
{
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D6EB0();
  }

  v2 = *(a1 + 32);

  return [v2 _prefsChanged];
}

void *sub_100022058(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[8])
  {
    return [result _deviceFound:a2];
  }

  return result;
}

void *sub_100022074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[8])
  {
    return [result _deviceLost:a2];
  }

  return result;
}

uint64_t sub_100022090(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 64) && dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 32);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_100022124(uint64_t result)
{
  if (dword_1002F6480 <= 30)
  {
    v1 = result;
    if (dword_1002F6480 != -1)
    {
      return sub_1001D6ECC(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D6ECC(v1);
    }
  }

  return result;
}

uint64_t sub_100022180(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(v5 + 64);
  if (*(a1 + 32) == v6)
  {
    if (v3)
    {
      v14 = v3;
      if (dword_1002F6480 <= 90)
      {
        if (dword_1002F6480 == -1)
        {
          v7 = _LogCategory_Initialize();
          v5 = *(a1 + 40);
          if (!v7)
          {
            goto LABEL_10;
          }

          v6 = *(v5 + 64);
          v3 = v14;
        }

        v12 = v6;
        v13 = v3;
        LogPrintF();
        v5 = *(a1 + 40);
      }

LABEL_10:
      [*(v5 + 64) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 64);
      *(v8 + 64) = 0;

      goto LABEL_11;
    }

    if (dword_1002F6480 > 30)
    {
      goto LABEL_12;
    }

    v14 = 0;
    if (dword_1002F6480 != -1)
    {
LABEL_8:
      v3 = LogPrintF();
LABEL_11:
      v4 = v14;
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      v10 = *(*(a1 + 40) + 64);
      goto LABEL_8;
    }
  }

LABEL_12:

  return _objc_release_x1(v3, v4);
}

void sub_100022334(uint64_t a1)
{
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D6F0C();
  }

  v2 = +[AAConversationDetectSessionManager sharedCDSessionManager];
  [v2 invalidate];

  v3 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  [v3 invalidate];

  v4 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  [v4 invalidate];

  v5 = +[AASensorServiceDaemon sharedAASensorServiceDaemon];
  [v5 invalidate];

  if (_os_feature_enabled_impl())
  {
    v6 = +[AAManagedSettingsDaemon sharedAAManagedSettingsDaemon];
    [v6 invalidate];
  }

  if (_os_feature_enabled_impl())
  {
    v7 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [v7 unsubscribeFromBatteryInfoUpdates:*(a1 + 32)];
  }

  v8 = +[AAXPCEventPublisherDaemon sharedAAXPCEventPublisherDaemon];
  [v8 invalidate];

  v9 = *(a1 + 32);
  if (*(v9 + 216))
  {
    v10 = *(v9 + 216);
    os_state_remove_handler();
    *(*(a1 + 32) + 216) = 0;
    v9 = *(a1 + 32);
  }

  if (*(v9 + 200) != -1)
  {
    notify_cancel(*(v9 + 200));
    *(*(a1 + 32) + 200) = -1;
    v9 = *(a1 + 32);
  }

  [v9 _deregisterFromAVSystemControllerDeathNotifications];
  [*(a1 + 32) _deregisterFromAVSystemControllerStateNotifications];
  v11 = *(a1 + 32);
  if (*(v11 + 232) == 1)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D6F28();
    }

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 removeObserver:*(a1 + 32) name:TUBargeCallStatusChangedNotification object:0];

    *(*(a1 + 32) + 232) = 0;
    v11 = *(a1 + 32);
  }

  [*(v11 + 64) invalidate];
  v13 = *(a1 + 32);
  v14 = *(v13 + 64);
  *(v13 + 64) = 0;

  v15 = +[AAContextManager sharedContextManager];
  [v15 invalidate];

  [*(*(a1 + 32) + 272) invalidate];
  v16 = *(a1 + 32);
  v17 = *(v16 + 272);
  *(v16 + 272) = 0;
}

id sub_100023DF0(uint64_t a1)
{
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7370(a1);
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 deviceManagerFoundBatteryInfo:v3];
}

void sub_100025A68(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v9 = [v2 objectForKey:AVSystemController_CallIsActiveNotificationParameter];

  if (v9)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKey:AVSystemController_CallIsHighPriorityNotificationParameter];

    if (v4)
    {
      v5 = [v9 BOOLValue];
      v6 = [v4 BOOLValue];
      v8 = *(a1 + 40);
      v7 = (a1 + 40);
      *(v8 + 176) = v5;
      *(*v7 + 177) = v6;
      if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D7640(v7);
      }

      [*v7 _updateBannerChimeSuppressionState];
    }

    else if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D76AC();
    }
  }

  else if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D76C8();
  }
}

void sub_100025CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100025CFC(void *result)
{
  v1 = result;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D76E4(v1);
    }
  }

  v2 = *(*(v1[5] + 8) + 24) == 1 && *(*(v1[6] + 8) + 24) == 1;
  v3 = v1[4];
  if (*(v3 + 178) != v2)
  {
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 == -1)
      {
        v4 = _LogCategory_Initialize();
        v3 = v1[4];
        if (!v4)
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 178);
      }

      LogPrintF();
      v3 = v1[4];
    }

LABEL_12:
    *(v3 + 178) = v2;
    v5 = v1[4];

    return [v5 _updateBannerChimeSuppressionState];
  }

  return result;
}

void sub_100026250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100026270(uint64_t a1, signed int a2, void *a3)
{
  v5 = a3;
  if (*(*(*(a1 + 40) + 8) + 40) == *(*(a1 + 32) + 192))
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D776C(a2, a1);
    }

    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        if ((*(a1 + 48) - 1) <= 1)
        {
          if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D7884();
          }

          v6 = *(a1 + 32);
          v7 = *(a1 + 84);
          v8 = *(a1 + 68);
          v9[0] = *(a1 + 52);
          v9[1] = v8;
          [v6 _reverseMuteActionForToken:v9 shouldMute:v7];
        }
      }

      else if (a2 == 2 && dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D7868();
      }
    }

    else if (a2 == 3)
    {
      if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D7830();
      }
    }

    else if (a2 == 4)
    {
      if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D77F0();
      }
    }

    else if (a2 == 6 && dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D784C();
    }

    [*(a1 + 32) _invalidateMuteBanner];
  }
}

const char *sub_10002645C(unsigned int a1)
{
  if (a1 > 6)
  {
    return "?";
  }

  else
  {
    return (&off_1002B7748)[a1];
  }
}

void sub_1000269E0(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 256))
  {
    v10 = v1;
    v11 = v2;
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7960();
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 80);
    v6 = *(a1 + 64);
    v9[0] = *(a1 + 48);
    v9[1] = v6;
    [v4 _reverseMuteActionForToken:v9 shouldMute:v5];
    [*(a1 + 32) invalidate];
    v7 = *(a1 + 40);
    v8 = *(v7 + 256);
    *(v7 + 256) = 0;
  }
}

uint64_t sub_100026A84(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32) == *(*(a1 + 40) + 256))
  {
    v8 = v5;
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (v5 = _LogCategory_Initialize(), v6 = v8, v5))
      {
        v5 = sub_1001D797C(a2);
        v6 = v8;
      }
    }

    if (a2 == 5 || a2 == 2)
    {
      v5 = [*(a1 + 40) _invalidateMuteBanner];
      v6 = v8;
    }
  }

  return _objc_release_x1(v5, v6);
}

void sub_100026ED8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 240) uiDataSource];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(v3 + 240) uiDataSource];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100027014;
    v10[3] = &unk_1002B7480;
    v5 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v6 = &v11;
    v11 = v5;
    [v4 fetchInCallUIState:v10];
  }

  else
  {
    v7 = *(v3 + 168);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000272C8;
    v8[3] = &unk_1002B6948;
    v8[4] = v3;
    v6 = &v9;
    v9 = *(a1 + 40);
    dispatch_async(v7, v8);
  }
}

void sub_100027014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100003908;
  v17[4] = sub_100003830;
  v18 = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 168);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027148;
  block[3] = &unk_1002B7458;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v16 = v17;
  v15 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);

  _Block_object_dispose(v17, 8);
}

uint64_t sub_100027148(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = [*(a1 + 40) isMicIndicatorVisible];
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7B68((a1 + 40));
      if (v3)
      {
        goto LABEL_9;
      }
    }

    else if (v3)
    {
LABEL_9:
      v4 = NSErrorF();
      v5 = *(*(a1 + 64) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      goto LABEL_14;
    }

    v8 = *(a1 + 48);
    v9 = *(v8 + 104);
    v10 = *(v8 + 112);
    v11 = *(v8 + 160);
    v12 = *(v8 + 136);
    v14[0] = *(v8 + 120);
    v14[1] = v12;
    [v8 _createBannerSessionMuteActionForIOS:v9 auditToken:v14 appName:v10 appBundleID:v11];
    goto LABEL_14;
  }

  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1 || (v7 = _LogCategory_Initialize(), v2 = *(a1 + 32), v7))
    {
      LogPrintF();
      v2 = *(a1 + 32);
    }
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
LABEL_14:
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 48) + 152), *(*(a1 + 48) + 112), *(*(a1 + 48) + 160), *(*(*(a1 + 64) + 8) + 40));
  }

  return result;
}

uint64_t sub_1000272C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  v5 = *(v2 + 160);
  v6 = *(v2 + 136);
  v8[0] = *(v2 + 120);
  v8[1] = v6;
  [v2 _createBannerSessionMuteActionForIOS:v3 auditToken:v8 appName:v4 appBundleID:v5];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 152), *(*(a1 + 32) + 112), *(*(a1 + 32) + 160), 0);
  }

  return result;
}

void sub_100027FA8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v26 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v26;
    goto LABEL_17;
  }

  v12 = *(a1 + 40);
  v13 = v12;
  if (v12 - 1 <= 2)
  {
    v13 = dword_100225E34[v12 - 1];
  }

  v14 = v26;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_6:
      if (v12 > 6)
      {
        v15 = "?";
      }

      else
      {
        v15 = (&off_1002B7748)[v12];
      }

      if (v13 > 6)
      {
        v20 = "?";
      }

      else
      {
        v20 = (&off_1002B76B0)[v13];
      }

      v24 = v20;
      v25 = v11;
      v23 = v15;
      LogPrintF();
      v14 = v26;
      goto LABEL_16;
    }

    v19 = _LogCategory_Initialize();
    v14 = v26;
    if (v19)
    {
      v12 = *(a1 + 40);
      goto LABEL_6;
    }
  }

LABEL_16:
  v16 = *(a1 + 32);
  v17 = v13;
  v18 = v14;
LABEL_17:
  [v16 _submitMetricsForMuteAction:v17 auditTokenBundleID:v18 appName:v9 appBundleID:{v10, v23, v24, v25}];
  v21 = *(a1 + 32);
  v22 = *(v21 + 184);
  *(v21 + 184) = 0;
}

id sub_1000281A4(uint64_t a1)
{
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7D5C();
  }

  [*(a1 + 32) _deregisterFromAVSystemControllerStateNotifications];
  v2 = *(a1 + 32);

  return [v2 _registerForAVSystemControllerStateNotifications];
}

void sub_100029510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029548(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_1000297F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029834(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(v1[5] + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = v1[4];
  if (result)
  {
    v2 = *(*(v1[6] + 8) + 24);
    v3 = *(*(v1[5] + 8) + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_100029A94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100029CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029D1C(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    LogPrintF();
  }

LABEL_7:
  result = *(a1 + 32);
  if (!result)
  {
    return result;
  }

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v3 = *(result + 16);
LABEL_9:

  return v3();
}

void sub_10002A024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A05C(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_10002A374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A3B0(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_10002A614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A648(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_10002A8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A900(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_10002AC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002AC3C(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_10002AF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002AFA4(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(v1[5] + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = v1[4];
  if (result)
  {
    v2 = *(*(v1[6] + 8) + 24);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002B354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B3A0(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_10002B47C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7F5C();
  }

  if ([v5 heartRateMonitorCapability] == 2)
  {
    [*(a1 + 32) addObject:v5];
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7F9C();
    }
  }
}

void sub_10002B740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B774(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_10002B84C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7FDC();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D801C(a1);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_10002BDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  (*(a14 + 16))();
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002BE28(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_10002C104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C140(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_10002C4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C4E8(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

uint64_t sub_10002C5C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002C91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  (*(a10 + 16))();
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C968(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(result + 16);

    return v2();
  }

  return result;
}

void sub_10002CC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002CC88(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(result + 16);

    return v2();
  }

  return result;
}

void sub_10002CF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002CFD4(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(v1[5] + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = v1[4];
  if (result)
  {
    v2 = *(*(v1[6] + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002D280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002D2B4(uint64_t result)
{
  if (!*(*(*(result + 48) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(v1[6] + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = v1[5];
  if (result)
  {
    v2 = v1[4];
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002D6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002D708(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_10002D9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DA10(void *a1)
{
  if (!*(*(a1[5] + 8) + 40))
  {
    v2 = a1[4];
    v3 = *(*(a1[6] + 8) + 24);
    v4 = *(a1[4] + 16);
    goto LABEL_9;
  }

  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v8 = *(*(a1[5] + 8) + 40);
    }

    LogPrintF();
  }

LABEL_7:
  result = a1[4];
  if (!result)
  {
    return result;
  }

  v6 = *(*(a1[6] + 8) + 24);
  v7 = *(*(a1[5] + 8) + 40);
  v4 = *(result + 16);
LABEL_9:

  return v4();
}

uint64_t sub_10002DC1C(uint64_t result)
{
  v1 = result;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D80B4(v1);
    }
  }

  *(*(v1 + 32) + 8) = 0;
  return result;
}

void sub_10002DF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DF40(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
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

void sub_10002E018(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D8114();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8154(a1);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_10002E2C8(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AASleepDetectionManager);
    v2 = qword_1002FA090;
    qword_1002FA090 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_10002E664(uint64_t a1)
{
  [*(a1 + 32) _aaControllerEnsureStopped];
  [*(a1 + 32) _activityMonitorEnsureStopped];
  [*(a1 + 32) _cleanMonitoringSourceMotion];
  [*(a1 + 32) _connectedDeviceDiscoveryEnsureStopped];
  [*(a1 + 32) _deregisterMediaPlaybackStateChangedNotifications];
  [*(a1 + 32) _stopCoolOffTimer];
  [*(a1 + 32) _stopRewindMediaTimer];
  result = [*(a1 + 32) _userNotificationCenterEnsureStopped];
  *(*(a1 + 32) + 104) = 0;
  return result;
}

void sub_10002E840(id a1)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D85F0();
  }
}

void sub_10002E88C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (*(a1 + 32) == *(v7 + 8))
  {
    if (v12)
    {
      objc_storeStrong((v7 + 160), a2);
      v8 = *(a1 + 40);
      if (*(v8 + 16))
      {
        v9 = [*(v8 + 16) deviceWithIdentifier:*(v8 + 160)];
        v10 = *(a1 + 40);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = *(a1 + 40);
      }

      [v8 _sleepDetectionMessageReceived:v6];
    }

    else
    {
      sub_1001D860C();
    }
  }
}

uint64_t sub_10002E950(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D866C();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6550 <= 30)
    {
      v8 = 0;
      if (dword_1002F6550 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001D86AC();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_10002EC60(id a1)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D86E4();
  }
}

void sub_10002ECAC(id a1)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8700();
  }
}

void sub_10002ED10(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D871C();
    }

    [*(*(a1 + 32) + 32) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D875C(a1);
  }
}

_BYTE *sub_10002F604(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64 != 0;
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D88D0();
  }

  *(*(a1 + 32) + 80) = v3;
  result = [*(a1 + 32) _shouldRunPauseMediaOnSleep];
  if (result)
  {
    result = *(a1 + 32);
    if (result[136] == 1)
    {
      return [result _sendMediaRemoteCommand:1 startRewindMediaTimer:1];
    }
  }

  return result;
}

void sub_10002F878(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D898C(a1, v3);
    }

    v5 = *(a1 + 48);
    if (v5 == 24)
    {
      [*(a1 + 40) _sendSleepDetectionMediaMetricWithMediaPaused:*(*(a1 + 40) + 104) rewoundMediaInSeconds:&off_1002CB690 mediaStreamingAfterRewinding:0];
      *(*(a1 + 40) + 104) = 0;
    }

    else if (v5 == 1)
    {
      v6 = *(a1 + 40);
      v7 = &off_1002CB690;
      v8 = 0;
      v9 = 0;
LABEL_21:
      [v6 _sendSleepDetectionMediaMetricWithMediaPaused:v8 rewoundMediaInSeconds:v7 mediaStreamingAfterRewinding:v9];
    }
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10 == 24)
    {
      if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D89FC(a1);
      }

      *(*(a1 + 40) + 104) = 0;
      v11 = *(*(a1 + 40) + 64);
      MRMediaRemoteGetNowPlayingApplicationIsPlaying();
    }

    else if (v10 == 1)
    {
      if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D8A84();
      }

      *(*(a1 + 40) + 104) = 1;
      v6 = *(a1 + 40);
      v7 = v6[15];
      v8 = 1;
      if (*(a1 + 52) != 1)
      {
        v9 = 1;
        goto LABEL_21;
      }

      [v6 _sendSleepDetectionMediaMetricWithMediaPaused:1 rewoundMediaInSeconds:v7 mediaStreamingAfterRewinding:0];
      [*(a1 + 40) _startRewindMediaTimer];
    }
  }
}

id sub_10002FA78(id result, int a2)
{
  v3 = result;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D8AA0(v3);
    }
  }

  v4 = *(v3 + 32);
  if (*(v4 + 81) == a2)
  {
    if ((a2 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    *(v4 + 81) = a2 != 0;
    if ((*(*(v3 + 32) + 81) & 1) == 0)
    {
      return result;
    }
  }

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8AE0();
  }

  v5 = *(v3 + 32);

  return [v5 _sendMediaRemoteCommand:1 startRewindMediaTimer:0];
}

uint64_t sub_10002FFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F6550 > 90)
    {
      goto LABEL_11;
    }

    v7 = v3;
    if (dword_1002F6550 == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v7;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v6 = *(a1 + 32);
    v3 = LogPrintF();
LABEL_5:
    v4 = v7;
    goto LABEL_11;
  }

  if (dword_1002F6550 <= 30)
  {
    v7 = 0;
    if (dword_1002F6550 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = sub_1001D8BF4(a1);
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

uint64_t sub_1000301A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F6550 > 90)
    {
      goto LABEL_11;
    }

    v7 = v3;
    if (dword_1002F6550 == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v7;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v6 = *(a1 + 32);
    v3 = LogPrintF();
LABEL_5:
    v4 = v7;
    goto LABEL_11;
  }

  if (dword_1002F6550 <= 30)
  {
    v7 = 0;
    if (dword_1002F6550 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = sub_1001D8C64(a1);
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

id sub_10003042C(uint64_t a1, int a2)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8E5C(a1);
  }

  v4 = *(a1 + 32);
  if (v4[81] != a2)
  {
    v4[81] = a2 != 0;
    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 40);

  return [v4 _updateSleepStatus:v5 deviceLost:0];
}

id sub_1000305F8(uint64_t a1)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8EDC();
  }

  [*(a1 + 32) _setSleepDetectionState:1];
  [*(a1 + 32) _sendMediaRemoteCommand:1 startRewindMediaTimer:1];
  v2 = *(a1 + 32);

  return [v2 _stopCoolOffTimer];
}

id sub_1000307E4(uint64_t a1)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8F14();
  }

  [*(a1 + 32) _processRewindMediaRequest];
  [*(a1 + 32) _stopRewindMediaTimer];
  v2 = *(a1 + 32);

  return [v2 _sendSleepDetectionUserResumedMedia:0];
}

void sub_100030F08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030FA4;
  v7[3] = &unk_1002B6D18;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

_DWORD *sub_100031100(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[7] != -1)
  {
    return [result _processUserActivity];
  }

  return result;
}

uint64_t sub_1000311A4(uint64_t a1, __int16 a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    *(v8 + 24) = a2;
    v10 = 0;
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || (v5 = _LogCategory_Initialize(), v6 = 0, v5)))
    {
      v5 = sub_1001D9210(v7);
      v6 = 0;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ((a2 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D9294();
    }

    [*v7 _sendSleepDetectionFailureMetric:2];
    [*v7 _stopCoolOffTimer];
    v5 = [*v7 _sendSleepDetectionReset:*(*v7 + 20) withResetReason:1];
    goto LABEL_14;
  }

  if (dword_1002F6550 <= 90)
  {
    v10 = v5;
    if (dword_1002F6550 != -1 || (v5 = _LogCategory_Initialize(), v6 = v10, v5))
    {
      v5 = sub_1001D91D0();
LABEL_14:
      v6 = v10;
    }
  }

LABEL_15:

  return _objc_release_x1(v5, v6);
}

uint64_t sub_100031C98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1001D95A4(dword_1002F6550);
  }

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D9588();
  }

  MRMediaRemoteGetLocalOrigin();
  v3 = *(*(a1 + 32) + 64);
  return MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();
}

void sub_100031D60(uint64_t a1, void *a2)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D95FC();
  }

  v4 = [NSNumber numberWithInt:5];
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v5 = v7;
  if (v7[18])
  {
    v8 = v5[15];
    if (v8)
    {
      v9 = v8;

      v5 = *v6;
      v4 = v9;
    }
  }

  v10 = v5[9];
  if (v10)
  {
    v11 = [v10 integerValue];
  }

  else
  {
    v11 = 600;
  }

  obj = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 integerValue] + v11);

  objc_storeStrong(*v6 + 15, obj);
  v12 = [a2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoElapsedTime];
  [v12 doubleValue];
  v14 = v13;

  [obj doubleValue];
  v15 = 0.0;
  if (v14 > v16)
  {
    [obj doubleValue];
    v15 = v14 - v17;
  }

  *(*v6 + 16) = v15;
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D963C(v6);
  }

  [*v6 _sendMediaRemoteCommand:24 startRewindMediaTimer:0];
}

uint64_t sub_100031F88(uint64_t result, int a2)
{
  v3 = result;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D96E4(v3);
    }
  }

  v4 = *(v3 + 32);
  if (*(v4 + 81) != a2)
  {
    *(v4 + 81) = a2 != 0;
  }

  return result;
}

void sub_100032014(id a1, __CFString *a2)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D9724();
  }
}

void sub_1000323AC(uint64_t a1)
{
  v2 = [*(a1 + 32) _notificationContentForSleepDetectionNotificationForDevice:*(*(a1 + 32) + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032448;
  v5[3] = &unk_1002B79C8;
  v5[4] = v3;
  [v4 deliverNotificationWithContent:v2 completion:v5];
}

void sub_100032448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000324E4;
  v7[3] = &unk_1002B6D18;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1000324E4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (dword_1002F6550 > 90 || dword_1002F6550 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    sub_1001D97DC(a1, v2, &v4);
  }

  else
  {
    if (dword_1002F6550 > 30 || dword_1002F6550 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    sub_1001D9870(a1, &v4);
  }

  v3 = v4;
}

void sub_1000329D0(id *a1)
{
  v10 = [a1[4] actionIdentifier];
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    v8 = a1[4];
    v9 = a1[5];
    v7 = v10;
    LogPrintF();
  }

  v2 = [a1[5] content];
  v3 = [v2 categoryIdentifier];

  v4 = v3;
  v5 = v4;
  if (v4 == @"SleepDetectionUserNotification" || v4 && (v6 = [(__CFString *)v4 isEqual:@"SleepDetectionUserNotification"], v5, v6))
  {
    [a1[6] _receivedSleepDetectionNotificationAction:v10 forRequest:a1[5]];
  }
}

uint64_t sub_10003304C()
{

  return LogPrintF();
}

void sub_100034478(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AALowBatteryAlertDaemon);
    v2 = qword_1002FA0A0;
    qword_1002FA0A0 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000359E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lowBatteryCheckCoalescer];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _checkForLowBattery];
  }
}

void sub_10003635C(uint64_t a1, unsigned int a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) lowBatteryBannerIOS];

  v7 = v8;
  if (v5 == v6)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DAB8C(a2);
    }

    [*(a1 + 40) _dismissLowBatteryAlertOnIOS];
    v7 = v8;
  }
}

void sub_100036868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000368B8(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DABEC(a1);
  }

  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_10003772C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003781C;
  v10[3] = &unk_1002B7B18;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_10003781C(void *a1)
{
  v2 = (a1 + 4);
  if (a1[4])
  {
    if (dword_1002F6620 <= 90 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DAF04(a1, v2);
    }
  }

  else
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DAF84(a1);
    }

    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v3 _chargingNotificationDeliveredWithIdentifier:v4 forBatteryInfo:v5 withType:2];
  }
}

void sub_100038578(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100038668;
  v10[3] = &unk_1002B7B18;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_100038668(void *a1)
{
  v2 = (a1 + 4);
  if (a1[4])
  {
    if (dword_1002F6620 <= 90 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DB924(a1, v2);
    }
  }

  else
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DB9A4(a1);
    }

    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v3 _chargingNotificationDeliveredWithIdentifier:v4 forBatteryInfo:v5 withType:1];
  }
}

void sub_100038DDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBB60();
  }

  v4 = [*(a1 + 32) dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100038ECC;
  v6[3] = &unk_1002B6D18;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_100038ECC(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) chargingNotificationMap];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (([v8 cleared] & 1) == 0 && (objc_msgSend(v8, "dismissed") & 1) == 0)
        {
          v9 = [v8 notificationIdentifier];
          if (v9 && ([*(a1 + 40) containsObject:v9] & 1) == 0)
          {
            if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
            {
              sub_1001DBBA0(v8);
            }

            [*(a1 + 32) _dismissNotification:v8 withReason:1];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v10;
    }

    while (v10);
  }
}

id sub_1000399B4(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC024(a1);
  }

  v2 = [*(a1 + 40) lowBatteryCheckCoalescer];
  [v2 trigger];

  [*(a1 + 40) _checkShouldClearChargingReminderWithUpdatedBatteryInfo:*(a1 + 32)];
  [*(a1 + 40) _checkChargingCompleteNotificationWithUpdatedBatteryInfo:*(a1 + 32)];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 _lastSeenBatteryInfoUpdated:v4];
}

void sub_100039AFC(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC068(a1);
  }

  v2 = [*(a1 + 40) lowBatteryCheckCoalescer];
  [v2 trigger];
}

void sub_100039CD4(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) chargingReminderEnabled] == 2)
  {
    if (dword_1002F6620 <= 10 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC0AC(v2);
    }

    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) identifier];
    [v3 _clearAllNotificationWithIdentifier:v4 reason:9];
  }
}

void sub_100039E24(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC10C(a1);
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) identifier];
  [v2 _clearAllNotificationWithIdentifier:v3 reason:10];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) identifier];
  [v4 _clearLastSeenBatteryInfoWithIdentifier:v5];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) identifier];
  [v6 _clearLowBatteryDevicesWithIdentifier:v7];
}

void sub_10003A064(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) systemPowerMonitor];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _powerMonitorStateChanged];
  }
}

id sub_10003AA30(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC520();
  }

  v2 = *(a1 + 32);

  return [v2 _loadPreferences];
}

id sub_10003AA98(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC53C();
  }

  v2 = *(a1 + 32);

  return [v2 _lowBatteryMonitoringReset];
}

id sub_10003AB00(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC558();
  }

  v2 = *(a1 + 32);

  return [v2 _chargingNotificationReset];
}

id sub_10003AB68(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC574();
  }

  v2 = *(a1 + 32);

  return [v2 _triggerChargingReminderCheck];
}

void sub_10003B284(id *a1)
{
  v15 = [a1[4] actionIdentifier];
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    v13 = a1[4];
    v14 = a1[5];
    v12 = v15;
    LogPrintF();
  }

  v2 = [a1[5] content];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"deviceIdentifier"];

  if (!v4)
  {
    sub_1001DC750();
    goto LABEL_13;
  }

  v5 = [a1[5] content];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"notificationType"];
  v8 = [v7 unsignedLongValue];

  if (!v8)
  {
    sub_1001DC69C();
    goto LABEL_13;
  }

  v9 = v15;
  v10 = v9;
  if (v9 == UNNotificationDismissActionIdentifier)
  {

    goto LABEL_12;
  }

  if ((v9 != 0) != (UNNotificationDismissActionIdentifier == 0))
  {
    v11 = [(NSString *)v9 isEqual:UNNotificationDismissActionIdentifier];

    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_12:
    [a1[6] _userDismissedNotificationWithIdentifier:v4 andType:v8];
    goto LABEL_13;
  }

LABEL_19:
  sub_1001DC624();
LABEL_13:
}

void sub_10003BFE0(void *a1)
{
  error = 0;
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [AADeviceLocalization localizedStringForKey:a1[4] withDefaultValue:a1[4]];
  v4 = [AADeviceLocalization localizedStringForKey:a1[5] withDefaultValue:a1[5]];
  v5 = a1[6];
  if (v5)
  {
    v6 = [AADeviceLocalization localizedStringForKey:v5 withDefaultValue:a1[6]];
    if (v6)
    {
      [v2 setObject:v6 forKey:kCFUserNotificationAlertHeaderKey];
    }
  }

  [v2 setObject:v3 forKey:kCFUserNotificationAlertMessageKey];
  [v2 setObject:v4 forKey:kCFUserNotificationDefaultButtonTitleKey];
  v7 = a1[7];
  if (v7)
  {
    v8 = [AADeviceLocalization localizedStringForKey:v7 withDefaultValue:a1[7]];
    if (v8)
    {
      [v2 setObject:a1[7] forKey:kCFUserNotificationAlternateButtonTitleKey];
    }
  }

  v9 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, &error, v2);
  if (v9)
  {
    v10 = v9;
    *(a1[8] + 8) = v9;
    v12 = 0;
    CFUserNotificationReceiveResponse(v9, 0.0, &v12);
    if (!v12)
    {
      (*(a1[9] + 16))();
      if (dword_1002F6690 <= 30 && (dword_1002F6690 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DC824();
      }
    }

    CFRelease(v10);
  }

  else
  {
    v11 = NSErrorF();
    (*(a1[9] + 16))();
  }
}

void sub_10003DC70(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(BTSmartRoutingDaemon);
    v2 = qword_1002FA0B0;
    qword_1002FA0B0 = v1;

    _objc_release_x1(v1, v2);
  }
}

uint64_t sub_10003DED8(uint64_t a1)
{
  v2 = [*(a1 + 32) _descriptionWithLevel:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

const char *sub_10003E708(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "?";
  }

  else
  {
    return off_1002B8F50[a1];
  }
}

void sub_10003E72C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_10003E77C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = [a3 bleDevice];
  NSAppendPrintF();
  objc_storeStrong((v3 + 40), obj);
}

void sub_10003E7E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 8);
  v47 = *(v5 + 40);
  NSAppendPrintF();
  objc_storeStrong((v5 + 40), v47);
  v6 = *(*(a1 + 32) + 8);
  v46 = *(v6 + 40);
  NSAppendPrintF();
  objc_storeStrong((v6 + 40), v46);
  v7 = *(*(a1 + 32) + 8);
  v45 = *(v7 + 40);
  v28 = [v4 deviceAddress];
  NSAppendPrintF();
  objc_storeStrong((v7 + 40), v45);

  v8 = *(*(a1 + 32) + 8);
  obj = *(v8 + 40);
  v29 = [v4 deviceName];
  NSAppendPrintF();
  objc_storeStrong((v8 + 40), obj);

  v9 = *(*(a1 + 32) + 8);
  v43 = *(v9 + 40);
  v30 = [v4 deviceVersion];
  NSAppendPrintF();
  objc_storeStrong((v9 + 40), v43);

  v10 = *(*(a1 + 32) + 8);
  v12 = *(v10 + 40);
  v11 = (v10 + 40);
  v42 = v12;
  if ([v4 inEar])
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  v31 = v13;
  NSAppendPrintF();
  objc_storeStrong(v11, v42);
  v14 = *(*(a1 + 32) + 8);
  v16 = *(v14 + 40);
  v15 = (v14 + 40);
  v41 = v16;
  v17 = [v4 routingAction];
  if (v17 > 5)
  {
    v18 = "?";
  }

  else
  {
    v18 = off_1002B90F8[v17];
  }

  v32 = v18;
  NSAppendPrintF();
  objc_storeStrong(v15, v41);
  v19 = *(*(a1 + 32) + 8);
  v21 = *(v19 + 40);
  v20 = (v19 + 40);
  v40 = v21;
  if ([v4 routed])
  {
    v22 = "yes";
  }

  else
  {
    v22 = "no";
  }

  v33 = v22;
  NSAppendPrintF();
  objc_storeStrong(v20, v40);
  v23 = *(*(a1 + 32) + 8);
  v39 = *(v23 + 40);
  v34 = [v4 otherTipiDeviceBTAddress];
  NSAppendPrintF();
  objc_storeStrong((v23 + 40), v39);

  v24 = *(*(a1 + 32) + 8);
  v38 = *(v24 + 40);
  v35 = [v4 otherTipiDeviceBTName];
  NSAppendPrintF();
  objc_storeStrong((v24 + 40), v38);

  v25 = *(*(a1 + 32) + 8);
  v37 = *(v25 + 40);
  v36 = [v4 otherTipiDeviceVersion];
  NSAppendPrintF();
  objc_storeStrong((v25 + 40), v37);

  v26 = *(*(a1 + 32) + 8);
  v27 = *(v26 + 40);
  [v4 isTipiHealingV2Eligible];
  NSAppendPrintF();
  objc_storeStrong((v26 + 40), v27);
}

void sub_10003EB44(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = [a3 bleDevice];
  NSAppendPrintF();
  objc_storeStrong((v3 + 40), obj);
}

id sub_10003EC20(uint64_t a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3424();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

id sub_10003F394(uint64_t a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E34E8();
  }

  v2 = *(a1 + 32);

  return [v2 _prefsChanged];
}

void sub_10003F404(uint64_t a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3504(a1);
  }

  v2 = +[CloudXPCService sharedInstance];
  v5 = @"srCapable";
  v3 = [NSNumber numberWithBool:*(*(a1 + 32) + 1172)];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 sendCloudKitMsg:@"smartRoutingCapable" args:v4];
}

void sub_10003F518(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 1176);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64;
  *(*v1 + 149) = state64 & 0xFFFFFFFFFFFFLL;
  *(*v1 + 148) = HIWORD(v3);
  v18 = *(*v1 + 149);
  v4 = NSPrintF();
  [v4 UTF8String];
  v5 = NSDataWithHex();
  v6 = CUPrintNSDataAddress();

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E355C(v1);
  }

  v7 = *v1;
  v8 = *(*v1 + 148);
  if (v8)
  {
    if (v8 == 11818)
    {
      v9 = [v7[157] bluetoothState];
      v7 = *v1;
      if (v9 != 4)
      {
        v10 = v7[151];
        if (!v10)
        {
          v11 = objc_alloc_init(NSMutableArray);
          v12 = *(*v1 + 151);
          *(*v1 + 151) = v11;

          v10 = *(*v1 + 151);
        }

        [v10 addObject:v6];
        v13 = [*(*v1 + 196) objectForKeyedSubscript:v6];
        if (!v13)
        {
          v13 = objc_alloc_init(SRDiscoveredDevice);
        }

        [(SRDiscoveredDevice *)v13 setIsManualDisconnectLastTime:1];
        [*(*v1 + 196) setObject:v13 forKeyedSubscript:v6];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E35D4();
        }

        [*v1 _setDisconnectTick:0 forWxAddress:v6];
        v7 = *v1;
      }
    }

    v14 = v7[148];
    if (v14 != 328)
    {
      if (v14 == 10721)
      {
        [v7 _setDisconnectTick:mach_absolute_time() forWxAddress:v6];
        if (!*(*v1 + 193))
        {
          objc_storeStrong(*v1 + 193, v6);
          [*v1 _cacheBudswapInfo:v6];
          [*v1 _budSwapDetectionStartTimer:v6];
        }

        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (*(v7 + 468) != 1)
    {
LABEL_23:
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E3614();
      }

      v16 = [*(*v1 + 159) objectForKey:v6];

      if (v16)
      {
        [*(*v1 + 159) removeObjectForKey:v6];
      }

      v17 = [*v1 _getWxFWVersion:v6];
      if ([@"6A221" compare:v17 options:64] == -1 && objc_msgSend(*v1, "_isAddDeviceToBackoffDueToDisconnect"))
      {
        [*v1 _setDisconnectTick:mach_absolute_time() forWxAddress:v6];
      }

      else
      {
        [*v1 _setDisconnectTick:0 forWxAddress:v6];
        [*v1 _evaluatorRunForUSBDevice:v6 trigger:3];
      }

      goto LABEL_33;
    }

    [v7 _setDisconnectTick:0 forWxAddress:v6];
    v15 = *v1;
    if (!*(*v1 + 193))
    {
      objc_storeStrong(v15 + 193, v6);
      [*v1 _cacheBudswapInfo:v6];
      [*v1 _budSwapDetectionStartTimer:v6];
      v15 = *v1;
    }

    [v15 _evaluatorRunForUSBDevice:v6 trigger:3];
  }

LABEL_33:
}

void sub_10003F8C0(uint64_t a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3648();
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100003918;
  v12 = sub_100003838;
  v13 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 1240);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003FAD4;
  v7[3] = &unk_1002B7E18;
  v7[4] = v2;
  v7[5] = &v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  if (v9[5])
  {
    v4 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:?];
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:v9[5]];
      if ([v5 audioStreamState] == 3)
      {
        v6 = [*(*(a1 + 32) + 184) connectedCallCount];

        if (v6 >= 1)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [*(a1 + 32) _relayConduitMessageSend:1 withOptions:&off_1002CBC70 andWxAddress:v9[5] andOtherAddress:0];
        }
      }

      else
      {
      }
    }
  }

  _Block_object_dispose(&v8, 8);
}

void sub_10003FAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003FAD4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3664();
  }

  if ([v8 inEarDisabled])
  {
    v9 = [v8 otherTipiDeviceBTAddress];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }

  if ([v8 inEar])
  {
    v10 = [v8 otherTipiDeviceBTAddress];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

uint64_t sub_10003FBF8(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(*(a1 + 32) + 980);
  state64 = 0;
  result = notify_get_state(v2, &state64);
  v4 = state64;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001E3738(v1);
    }
  }

  *(*v1 + 976) = v4 != 0;
  return result;
}

id sub_10003FC88(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1268);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64 != 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E379C();
  }

  *(*(a1 + 32) + 1265) = v3;
  v4 = [*(a1 + 32) workoutObserver];
  v5 = [v4 workoutActive];

  v6 = *(a1 + 32);
  if (v5)
  {
    if (v6[1265] == 1)
    {
      [v6 _showSplitterBlockingAlert];
    }
  }

  else
  {
    [v6 activeHRMDeviceUpdate];
  }

  return [*(a1 + 32) _sendAudioCategoryToAllTipiDevices];
}

void *sub_10003FD60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 680);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E37F4();
  }

  [*(*(a1 + 32) + 1256) setMagnetConnected:v3 != 0];
  result = *(a1 + 32);
  if (result[116])
  {
    return [result _checkTriangleRecovery];
  }

  return result;
}

void sub_10003FE74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  [*(a1 + 32) _activityMonitorEnsureStopped];
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  if (v5)
  {
    *(v4 + 104) = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3844();
  }

  v6 = *(*(a1 + 32) + 56);
  if (v6)
  {
    v7 = v6;
    dispatch_source_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = 0;
  }

  v10 = *(*(a1 + 32) + 168);
  if (v10)
  {
    v11 = v10;
    dispatch_source_cancel(v11);
    v12 = *(a1 + 32);
    v13 = *(v12 + 168);
    *(v12 + 168) = 0;
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 728);
  if (v15 != -1)
  {
    notify_cancel(v15);
    *(*(a1 + 32) + 728) = -1;
    v14 = *(a1 + 32);
  }

  v16 = *(v14 + 844);
  if (v16 != -1)
  {
    notify_cancel(v16);
    *(*(a1 + 32) + 844) = -1;
    v14 = *(a1 + 32);
  }

  v17 = *(v14 + 1136);
  if (v17)
  {
    v18 = v17;
    dispatch_source_cancel(v18);
    v19 = *(a1 + 32);
    v20 = *(v19 + 1136);
    *(v19 + 1136) = 0;
  }

  v21 = *(*(a1 + 32) + 1352);
  if (v21)
  {
    v22 = v21;
    dispatch_source_cancel(v22);
    v23 = *(a1 + 32);
    v24 = *(v23 + 1352);
    *(v23 + 1352) = 0;
  }

  [*(a1 + 32) _tipiHealingHijackTimerReset];
  v25 = *(*(a1 + 32) + 496);
  if (v25)
  {
    v26 = v25;
    dispatch_source_cancel(v26);
    v27 = *(a1 + 32);
    v28 = *(v27 + 496);
    *(v27 + 496) = 0;
  }

  v29 = *(a1 + 32);
  v30 = *(v29 + 1240);
  *(v29 + 1240) = 0;

  v31 = *(a1 + 32);
  v32 = *(v31 + 1568);
  *(v31 + 1568) = 0;

  if (_os_feature_enabled_impl())
  {
    v33 = *(a1 + 32);
    v34 = *(v33 + 672);
    *(v33 + 672) = 0;
  }

  v35 = *(a1 + 32);
  v36 = *(v35 + 704);
  *(v35 + 704) = 0;

  v37 = *(a1 + 32);
  v38 = *(v37 + 1048);
  *(v37 + 1048) = 0;

  v39 = *(a1 + 32);
  v40 = *(v39 + 1072);
  *(v39 + 1072) = 0;

  *(*(a1 + 32) + 1336) = 0;
  v41 = *(*(a1 + 32) + 1464);
  if (v41)
  {
    v42 = v41;
    dispatch_source_cancel(v42);
    v43 = *(a1 + 32);
    v44 = *(v43 + 1464);
    *(v43 + 1464) = 0;
  }

  [*(a1 + 32) _evaluatorEnsureStopped];
  [*(a1 + 32) _connectedDeviceMonitorEnsureStopped];
  [*(a1 + 32) _mediaRouteMonitorEnsureStopped];
  [*(a1 + 32) _nearbyInfoDiscoveryEnsureStopped];
  [*(a1 + 32) _pipeEnsureStopped];
  [*(a1 + 32) _powerMonitorEnsureStopped];
  [*(a1 + 32) _workoutObserverEnsureStopped];
  [*(a1 + 32) _wxDiscoveryEnsureStopped];
  [*(a1 + 32) _TUMonitorEnsureStopped];
  [*(a1 + 32) _systemUIMonitorEnsureStopped];
  v54 = +[NSNotificationCenter defaultCenter];
  [v54 removeObserver:*(a1 + 32) name:@"BTTotalIDSDeviceCountChanged" object:0];
  v45 = +[NSDistributedNotificationCenter defaultCenter];
  [v45 removeObserver:*(a1 + 32) name:@"com.apple.BTServer.TriangleRecoveryInitiated" object:0];

  v46 = *(a1 + 32);
  v47 = *(v46 + 1528);
  *(v46 + 1528) = 0;

  [*(a1 + 32) _mediaRouteDiscoveryStopped];
  v48 = *(a1 + 32);
  v49 = *(v48 + 980);
  if (v49 != -1)
  {
    notify_cancel(v49);
    *(*(a1 + 32) + 980) = -1;
    v48 = *(a1 + 32);
  }

  v50 = *(v48 + 1268);
  if (v50 != -1)
  {
    notify_cancel(v50);
    *(*(a1 + 32) + 1268) = -1;
    v48 = *(a1 + 32);
  }

  v51 = *(v48 + 1176);
  if (v51 != -1)
  {
    notify_cancel(v51);
    *(*(a1 + 32) + 1176) = -1;
    v48 = *(a1 + 32);
  }

  v52 = *(v48 + 192);
  if (v52 != -1)
  {
    notify_cancel(v52);
    *(*(a1 + 32) + 192) = -1;
    v48 = *(a1 + 32);
  }

  v53 = *(v48 + 1520);
  *(v48 + 1520) = 0;
}

void sub_1000415AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004175C(uint64_t a1)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003918;
  v25 = sub_100003838;
  v26 = 0;
  v20 = 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v2 = [*(*(a1 + 32) + 752) discoveredDevices];
    [v2 count];
    [*(*(a1 + 32) + 224) count];
    [*(*(a1 + 32) + 1552) count];
    [*(*(a1 + 32) + 1488) count];
    v3 = [*(*(a1 + 32) + 232) bluetoothState];
    if (v3 <= 0xA)
    {
      v4 = off_1002B8BF8[v3];
    }

    *(*(a1 + 32) + 384);
    LogPrintF();
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100041AFC;
  v16[3] = &unk_1002B74F8;
  v18 = &v27;
  v17 = *(a1 + 40);
  v19 = &v21;
  v5 = objc_retainBlock(v16);
  v6 = [*(a1 + 32) _getInEarSrWxDevice];
  v7 = *(a1 + 32);
  if (!v6)
  {
    if (![*(v7 + 1488) count])
    {
LABEL_24:
      v8 = v28;
      goto LABEL_25;
    }

    v10 = *(a1 + 32);
    v11 = (v22 + 5);
    obj = v22[5];
    v12 = [v10 _getEligibleNearbyWxDevice:&obj companionNeedsToBeIdle:1 isStreamingFromCompanion:&v20];
    objc_storeStrong(v11, obj);

    if (!v12)
    {
      v8 = v28;
      if (v20 == 1)
      {
        v9 = 3;
        goto LABEL_23;
      }

LABEL_25:
      *(v8 + 24) = 0;
      goto LABEL_28;
    }

LABEL_22:
    v8 = v28;
    v9 = 1;
    goto LABEL_23;
  }

  if ([*(v7 + 600) intValue] > 100 || *(*(a1 + 32) + 88) == 1)
  {
    v8 = v28;
    v9 = 2;
LABEL_23:
    *(v8 + 24) = v9;
    goto LABEL_28;
  }

  v13 = [v6 otherTipiDeviceBTAddress];

  if (!v13)
  {
    goto LABEL_22;
  }

  if (![v6 otherTipiAudioCategory])
  {
    goto LABEL_24;
  }

  if ([v6 otherTipiAudioCategory] == 100)
  {
    if ([v6 otherTipiDeviceIsStreamingAudio])
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 3;
  }

  *(v28 + 24) = v14;
LABEL_28:

  (v5[2])(v5);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

void sub_100041AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100041AFC(void *a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4270(a1);
  }

  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[6] + 8) + 40);
  v4 = *(a1[4] + 16);

  return v4();
}

void sub_10004206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100042084(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100042140;
  v5[3] = &unk_1002B7E68;
  v4 = *(a1 + 32);
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = *(a1 + 48);
  v3 = *(a1 + 56);
  v2 = v3;
  v8 = v3;
  [v4.i64[0] activateWithCompletion:v5];
}

void sub_100042140(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 256) == *(a1 + 40))
  {
    v14 = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      v12 = *(a1 + 48);
      v13 = v14;
      LogPrintF();
    }

    *(*(a1 + 32) + 1184) = 0;
    *(*(a1 + 32) + 272) = mach_absolute_time();
    v4 = *(a1 + 32);
    v5 = *(v4 + 272);
    v6 = [*(v4 + 664) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
    [v6 lastConnectionTicks];
    v7 = UpTicksToMilliseconds();

    if (v7 >= 0x1389 && dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E43E0();
    }

    [*(a1 + 56) setLastConnectTime:{v7, v12, v13}];
    if (v14)
    {
      v8 = [NSString stringWithFormat:@"%@", v14];
      [*(a1 + 56) setLastConnectResult:v8];
    }

    else
    {
      [*(a1 + 56) setLastConnectResult:@"Success"];
    }

    [*(a1 + 32) _smartRoutingConnectionCompleted:v14];
    v9 = [*(*(a1 + 32) + 664) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
    v10 = [v9 preemptiveBannerShown];

    v3 = v14;
    if (!v14 && v10)
    {
      v11 = [*(*(a1 + 32) + 664) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
      [v11 setFirstPreemptiveBannerShown:0];

      v3 = 0;
    }
  }
}

uint64_t sub_100042650(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_52;
  }

  v17 = v3;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v4 = v17, v5))
    {
      sub_1001E4420(a1);
      v4 = v17;
    }
  }

  v6 = (a1 + 40);
  [*(a1 + 40) _setOtherTipiDeviceBTAddress:0 andName:0 sourceVersion:0 withResult:v4];
  if (GestaltGetDeviceClass() == 6)
  {
    *(*v6 + 1460) = 0;
    [*v6 _update];
  }

  v7 = CUPrintNSError();
  if ([v17 code] == -6709)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E45D8();
    }

    goto LABEL_44;
  }

  if ([*v6 _isOnDemandConnectInProgress] && objc_msgSend(v7, "isEqualToString:", @"kUnknownErr (Cleanup before done)"))
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E45BC();
    }

    goto LABEL_44;
  }

  v8 = (a1 + 48);
  v9 = [*(a1 + 48) fwVersion];
  if ([*(a1 + 48) isNearby])
  {
    v10 = [*v8 nearbyAudioState];
    if (!v9 || v10)
    {
      goto LABEL_25;
    }
  }

  else if (!v9)
  {
    goto LABEL_25;
  }

  if ([@"5A187" compare:v9 options:64] == -1)
  {
    v11 = [*(*(a1 + 40) + 1256) isFirstConnectionAfterSREnable];
    v13 = *(a1 + 56);
    v12 = (a1 + 56);
    v14 = [v11 objectForKey:v13];

    if (!v14)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E448C(v6, v12);
      }

      *(*v6 + 1336) = 1;
      [*v8 setPrevFailedTipiConnectType:6];
      goto LABEL_42;
    }
  }

LABEL_25:
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4510(v8);
  }

  if ([v17 code] == -6722)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E45A0();
    }

LABEL_42:
    [*(*v6 + 52) trigger];
    goto LABEL_43;
  }

  if ([v17 code] == -6720)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4584();
    }

    goto LABEL_42;
  }

LABEL_43:

LABEL_44:
  if ([*v6 _isOnDemandConnectInProgress] && objc_msgSend(v7, "isEqualToString:", @"kUnknownErr (Cleanup before done)"))
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E45F4();
    }
  }

  else
  {
    *(*v6 + 1536) = 0;
    v15 = *(*v6 + 50);
    *(*v6 + 50) = 0;
  }

  v4 = v17;
LABEL_52:

  return _objc_release_x1(v3, v4);
}

void *sub_100042D08(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[52])
  {
    return [result _update];
  }

  return result;
}

void sub_100043520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043540(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  if (([v10 deviceFlags] & 1) == 0)
  {
    *(*(a1 + 32) + 208) = 1;
  }

  v7 = [v10 btAddressData];
  v8 = CUPrintNSDataAddress();

  v9 = [*(*(a1 + 32) + 1240) objectForKeyedSubscript:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_100044660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 200), 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000446C8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 audioRoutingScore];
  v8 = [v9 model];
  if ((([v8 hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"iPod") & 1) != 0 || (objc_msgSend(v8, "containsString:", @"Mac") & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"Watch")) && v7 >= *(a1 + 48))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4C68(v9);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    if (*(*(*(a1 + 32) + 8) + 24) >= 2)
    {
      *a4 = 1;
    }
  }
}

void sub_100044828(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 bleDevice];
  v8 = [v7 advertisementFields];

  if (CFDictionaryGetInt64())
  {
    v123 = v5;
    v9 = [v6 bleDevice];
    v10 = [v9 bluetoothAddress];

    if ([v10 length] == 6)
    {
      v87 = [v10 bytes];
      v11 = NSPrintF();
    }

    else
    {
      v11 = 0;
    }

    v12 = (a1 + 32);
    v13 = *(*(a1 + 32) + 336);
    if (!v13)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = *(*v12 + 42);
      *(*v12 + 42) = v14;

      v13 = *(*v12 + 42);
    }

    v16 = [v13 objectForKeyedSubscript:{v11, v87}];
    if (v16)
    {
      v17 = v16;
      v18 = [*(*v12 + 42) objectForKeyedSubscript:v11];
      v19 = [v18 unsignedLongLongValue];

      if (v19)
      {
        mach_absolute_time();
        v20 = [*(*v12 + 42) objectForKeyedSubscript:v11];
        [v20 unsignedLongLongValue];
        v21 = UpTicksToSeconds();

        if ((*(*v12 + 176) & 1) == 0 && (v21 < 0xA || (*(*v12 + 800) & 1) == 0) && v21 <= 0x1D)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            v88 = v11;
            v90 = 30 - v21;
            LogPrintF();
          }

          v24 = *v12;
          v25 = @"Too soon since last disconnection";
          goto LABEL_24;
        }
      }
    }

    if (!v11 || ([*v12 _supportsTipi:v11] & 1) == 0)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E5148(v6);
      }

      v24 = *v12;
      v25 = @"Headset is not running correct OS version";
      goto LABEL_24;
    }

    if (CFDictionaryGetInt64Ranged() != 1)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4CC4(v6);
      }

      v24 = *v12;
      v25 = @"Headset is not in status subtype";
      goto LABEL_24;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if ((Int64Ranged & 8) != 0)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4D2C(v6);
      }

      v24 = *v12;
      v25 = @"Headset is in airplane mode";
      goto LABEL_24;
    }

    Int64 = CFDictionaryGetInt64();
    if ((~Int64Ranged & 0x12) == 0 && Int64)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4D88(v6);
      }

      v24 = *v12;
      v25 = @"Headset is in case with lid closed";
      goto LABEL_24;
    }

    if ([*(*v12 + 151) containsObject:v11])
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E50EC(v6);
      }

      v24 = *v12;
      v25 = @"Headset is part of manual disconnection list";
      goto LABEL_24;
    }

    v26 = [*(*v12 + 28) objectForKeyedSubscript:v11];

    if (v26)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4DE4(v6);
      }

      v24 = *v12;
      v25 = @"Headset already connected";
      goto LABEL_24;
    }

    v27 = [*(*v12 + 155) objectForKeyedSubscript:v11];
    v28 = [v27 connected];

    if (v28)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E5090(v6);
      }

      v24 = *v12;
      v25 = @"Headset already connected but haven't received connected event yet";
      goto LABEL_24;
    }

    v121 = CFDictionaryGetInt64Ranged();
    v29 = Int64Ranged & 0x24;
    v30 = CFDictionaryGetInt64Ranged();
    if ([*(*v12 + 155) count])
    {
      if (v121 && ([*(*v12 + 193) isEqual:v11] & 1) == 0)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4E40(v6);
        }

        v24 = *v12;
        v25 = @"Headset not idle and we already have a SR device connected, back off";
        goto LABEL_24;
      }

      if (((Int64Ranged & 0x24) != 0 || [*v12 _bluetoothProductIDNoEarDetect:v30]) && objc_msgSend(*v12, "_isAnyConnectedWxInEarCheck") && (objc_msgSend(*(*v12 + 193), "isEqual:", v11) & 1) == 0)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4E9C(v6);
        }

        v24 = *v12;
        v25 = @"already have an inEar SR device connected, and current headset is already inEar, back off";
        goto LABEL_24;
      }
    }

    v31 = CFDictionaryGetInt64Ranged();
    v32 = [*(*v12 + 157) incomingCallRingtone];
    v33 = *v12;
    if (v32 && v31 == 2 && (*(v33 + 176) & 1) == 0)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4EF8();
      }

      goto LABEL_92;
    }

    v119 = v31;
    v34 = [*(v33 + 75) intValue];
    v35 = ((*(*v12 + 800) & 1) != 0 || [*(*v12 + 75) intValue] >= 301) && v121 == 0;
    v36 = *v12;
    v37 = v34 != 401 && v36[96] == 0;
    if (*(v36 + 1536) == 1 && ((v29 != 0 && v37) & (*(*v12 + 176) | v35)) == 0)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4F14();
      }

LABEL_92:
      v24 = *v12;
      v25 = @"Ringtone shall not participate tipi election when Airpods already have two device connected";
LABEL_24:
      [v24 _logEvalWxError:v11 withError:{v25, v88, v90}];
LABEL_25:

      v5 = v123;
      goto LABEL_26;
    }

    if (Int64Ranged & 0x24) == 0 && (v36[26])
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4F30(v6);
      }

      v24 = *v12;
      v25 = @"Headset is not in ear and a third party BT device is already connected";
      goto LABEL_24;
    }

    v116 = (v29 != 0 && v37) & (*(*v12 + 176) | v35);
    v38 = CFDictionaryGetInt64Ranged();
    v117 = CFDictionaryGetInt64Ranged();
    v39 = CFDictionaryGetCFDataOfLength();
    v40 = v39;
    if (*(*v12 + 936) == 1)
    {
      v118 = v39;
      v41 = [*(*v12 + 196) objectForKeyedSubscript:v11];
      v113 = [v41 isUSBPlugIn];

      v42 = v113;
      v43 = 0;
      v111 = v119 == 1;
      if (v113 && v119 == 1)
      {
        v44 = v38;
        if (v38 == 8)
        {
          v43 = [*v12 _isMyAddress:v118];
          v42 = v113;
          v44 = 8;
        }
      }

      else
      {
        v44 = v38;
      }

      if (v42 && (v43 & 1) == 0)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4F98(v6);
        }

        [*v12 _logEvalWxError:v11 withError:@"Headset is USB plugged in but last connected to another source"];
        goto LABEL_228;
      }

      v110 = v44;
      v40 = v118;
      if (v38 == 8 && v119)
      {
        v29 = Int64Ranged & 0x24;
        if (v43)
        {
          v46 = 1;
          goto LABEL_133;
        }

        goto LABEL_129;
      }

      v29 = Int64Ranged & 0x24;
      v45 = v43;
    }

    else
    {
      v42 = 0;
      v110 = v38;
      v111 = v119 == 1;
      if (v38 == 8)
      {
        v45 = 0;
        if (v119)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    v46 = v45;
    if (v119 != 2 || v117 != 8 || (v45 & 1) != 0)
    {
LABEL_133:
      v108 = v46;
      v112 = v29;
      v114 = v42;
      v118 = v40;
      if (v116)
      {
        v48 = *v12;
        if (*(*v12 + 176))
        {
          v49 = @"Call";
LABEL_138:
          [v48[161] setOnDemandCategory:v49];
          goto LABEL_139;
        }

        if (*(v48 + 800) == 1)
        {
          v49 = @"Media";
          goto LABEL_138;
        }
      }

LABEL_139:
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        if (v29)
        {
          v50 = "yes";
        }

        else
        {
          v50 = "no";
        }

        if (v116)
        {
          v51 = "yes";
        }

        else
        {
          v51 = "no";
        }

        v106 = v51;
        v107 = v50;
        if (*(*v12 + 176))
        {
          v52 = "yes";
        }

        else
        {
          v52 = "no";
        }

        if (*(*v12 + 800))
        {
          v53 = "yes";
        }

        else
        {
          v53 = "no";
        }

        v104 = v53;
        v105 = v52;
        if (v121 > 3)
        {
          v54 = "?";
        }

        else
        {
          v54 = off_1002B8ED0[v121];
        }

        v103 = v54;
        v102 = sub_10003E708(v110);
        v55 = sub_10003E708(v117);
        if (v114)
        {
          v56 = "yes";
        }

        else
        {
          v56 = "no";
        }

        if (v108)
        {
          v57 = "yes";
        }

        else
        {
          v57 = "no";
        }

        v100 = v56;
        v101 = v57;
        v98 = v102;
        v99 = v55;
        v95 = v104;
        v96 = v103;
        v93 = v106;
        v94 = v105;
        v90 = v119;
        v92 = v107;
        v88 = v11;
        LogPrintF();
      }

      if ((v119 == 0) | v108 & 1)
      {
        v58 = *(*(a1 + 40) + 8);
        v60 = *(v58 + 40);
        v59 = (v58 + 40);
        if (v60)
        {
          v47 = v118;
          if (!v112)
          {
LABEL_229:

            goto LABEL_25;
          }

          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E5010(a1 + 32, v6);
          }

          v59 = (*(*(a1 + 40) + 8) + 40);
        }

        objc_storeStrong(v59, a3);
LABEL_228:
        v47 = v118;
        goto LABEL_229;
      }

      v137 = 0;
      v138 = &v137;
      v139 = 0x2020000000;
      v140 = 0;
      v109 = CFDictionaryGetInt64();
      v115 = [*v12 _getWxFWVersion:{v11, v88, v90, v92, v93, v94, v95, v96, v98, v99, v100, v101}];
      if (!v118)
      {
LABEL_227:

        _Block_object_dispose(&v137, 8);
        goto LABEL_228;
      }

      if ([*(a1 + 32) _isEligibleForTipiV2:v115 firstDeviceTipiScore:v110 secondDeviceTipiScore:v117 currentDeviceScore:*(a1 + 64) sourceDeviceCount:v119 isOnDemandConnect:v116 address:v123 lastConnectedHost:v118])
      {
        [*(*v12 + 161) setSetupSupportsTipiv2:1];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v69 = v117 < 8u && *(a1 + 64) <= v117;
        if (v117 == 15 || v69)
        {
          if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_227;
          }
        }

        else
        {
          if ([*v12 _isDevicePairedCheck:v118])
          {
            *(*v12 + 1336) = 1;
            [*v12 _setPhase1ConnectConfig:v11 andType:4];
            [*(*v12 + 161) setWxTipiScore1:v38];
            [*(*v12 + 161) setWxTipiScore2:v117];
            [*v12 _setTipiElectionType:*(*v12 + 1336) withDevice:0];
            v62 = *(a1 + 40);
            v70 = *(v62 + 8);
            if (v112 || !*(v70 + 40))
            {
              v71 = v6;
              v61 = *(v70 + 40);
              *(v70 + 40) = v71;
LABEL_215:

              goto LABEL_227;
            }

            goto LABEL_187;
          }

          if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_227;
          }
        }

        LogPrintF();
        goto LABEL_227;
      }

      if (*(*(*(a1 + 48) + 8) + 24) >= 2 && !v116)
      {
        if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_227;
        }

        v61 = [v6 name];
        LogPrintF();
        goto LABEL_215;
      }

      v62 = *(a1 + 40);
LABEL_187:
      v63 = *(a1 + 32);
      v64 = *(v63 + 1552);
      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_100045EAC;
      v124[3] = &unk_1002B7F30;
      v124[4] = v63;
      v124[5] = v118;
      v124[6] = v11;
      v132 = v116;
      v133 = v38;
      v129 = v119;
      v134 = v117;
      v127 = v62;
      v128 = &v137;
      v135 = (Int64Ranged & 0x24) != 0;
      v130 = Int64Ranged;
      v131 = v121;
      v65 = v6;
      v125 = v65;
      v126 = v115;
      v136 = v109 != 0;
      [v64 enumerateKeysAndObjectsUsingBlock:v124];
      if (*(*(*(a1 + 40) + 8) + 40) || !*(*v12 + 195) || (mach_absolute_time(), v66 = *(*v12 + 195), *(*v12 + 111) >= UpTicksToSeconds()))
      {
LABEL_188:

        goto LABEL_227;
      }

      if (*(*v12 + 916) & [*v12 _isDevicePairedCheck:v118] & 1) == 0 || (v138[3])
      {
        goto LABEL_247;
      }

      v67 = [*v12 _wxFwSupportsTipiScore:v115] ^ 1;
      if (!v112)
      {
        LOBYTE(v67) = 1;
      }

      if (v67)
      {
LABEL_247:
        if (*(*(*(a1 + 40) + 8) + 40) && (*(*(*(a1 + 56) + 8) + 24) = 1, *(*(*(a1 + 40) + 8) + 40)) || *(*v12 + 876) != 1 || (v138[3] & 1) != 0 || !v109)
        {
LABEL_289:
          if (*(v138 + 24) == 1 && *(*v12 + 876) == 1 && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_188;
        }

        v122 = [*v12 _myBluetoothAddressString];
        [v122 UTF8String];
        v77 = NSDataWithHex();
        if ([v77 length] == 6)
        {
          v78 = [v77 bytes];
          v79 = [v118 bytes];
          if (*v79 == *(v78 + 3) && *(v79 + 2) == v78[5])
          {
            if (dword_1002F6778 > 30)
            {
LABEL_264:
              if ([*v12 _isDevicePairedCheck:{v118, v89, v91}] && (*(*v12 + 448) & 1) == 0)
              {
                v81 = *(*v12 + 82);
                if (!v81)
                {
                  v82 = objc_alloc_init(SRNearbyStats);
                  v83 = *(*v12 + 82);
                  *(*v12 + 82) = v82;

                  v81 = *(*v12 + 82);
                }

                [v81 setNoNearbyDeviceFoundCount:{objc_msgSend(v81, "noNearbyDeviceFoundCount") + 1}];
                [*(*v12 + 82) setSRConnectedSetCount:{objc_msgSend(*(*v12 + 82), "SRConnectedSetCount") + 1}];
                v84 = [v65 bleDevice];
                v120 = [v84 rssi];

                if ([*(*v12 + 82) minRSSIHeadset] > v120)
                {
                  [*(*v12 + 82) setMinRSSIHeadset:v120];
                }

                if (!v115 || [@"4A345" compare:v115 options:64] == 1)
                {
                  *(v138 + 24) = 1;
                }

                if (*(*v12 + 273) < 3 || !v112 || *(*v12 + 113) > v120)
                {
                  *(v138 + 24) = 1;
                }

                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  v85 = [v65 name];
                  v86 = *v12;
                  sub_10003E708(*(*v12 + 273));
                  v97 = v86[113];
                  LogPrintF();
                }

                if ((v138[3] & 1) == 0)
                {
                  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
                  *(*(a1 + 32) + 448) = 1;
                  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }
                }
              }

              goto LABEL_289;
            }

            if (dword_1002F6778 != -1 || _LogCategory_Initialize())
            {
              LogPrintF();
            }
          }
        }

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_264;
      }

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v89 = v119;
        LogPrintF();
      }

      v72 = CFDictionaryGetInt64Ranged();
      v73 = v111;
      if (v72 - 1 >= 3)
      {
        v73 = 0;
      }

      if (v73)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v89 = sub_10003E708(v72);
          LogPrintF();
        }

        goto LABEL_246;
      }

      if (v119 != 2)
      {
        goto LABEL_247;
      }

      v74 = CFDictionaryGetInt64Ranged();
      if (v72 - 1 > 2)
      {
        goto LABEL_247;
      }

      v75 = v74;
      if (!v74)
      {
        goto LABEL_247;
      }

      v76 = *(a1 + 64);
      if (v76 <= v75)
      {
        goto LABEL_247;
      }

      if (dword_1002F6778 > 30)
      {
        goto LABEL_246;
      }

      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_246;
        }

        v76 = *(a1 + 64);
      }

      v89 = sub_10003E708(v76);
      v91 = sub_10003E708(v75);
      LogPrintF();
LABEL_246:
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      goto LABEL_247;
    }

LABEL_129:
    v47 = v40;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4FF4();
    }

    [*v12 _logEvalWxError:v11 withError:@"SR disabled on current connected source"];
    goto LABEL_229;
  }

LABEL_26:
}