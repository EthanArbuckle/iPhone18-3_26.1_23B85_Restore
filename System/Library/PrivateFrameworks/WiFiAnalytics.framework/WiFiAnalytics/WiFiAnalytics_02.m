uint64_t WiFiAnalyticsAWDWiFiNWActivityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v26) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v26 & 0x7F) << v5;
      if ((v26 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 120) |= 1u;
        while (1)
        {
          LOBYTE(v26) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v26 & 0x7F) << v13;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_70:
            *(a1 + 8) = v19;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_70;
      case 2u:
        v20 = PBReaderReadString();
        if (v20)
        {
          [a1 addActivities:v20];
        }

        goto LABEL_60;
      case 3u:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats);
        [a1 addInterfaceStats:v20];
        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityInterfaceStatsReadFrom(v20, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_59;
      case 4u:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityPeerStats);
        [a1 addPeerStats:v20];
        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityPeerStatsReadFrom(v20, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_59;
      case 5u:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityControllerStats);
        objc_storeStrong((a1 + 56), v20);
        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityControllerStatsReadFrom(v20, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_59;
      case 6u:
        v20 = objc_alloc_init(WiFiAnalyticsAWDLinkQualityMeasurements);
        objc_storeStrong((a1 + 80), v20);
        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDLinkQualityMeasurementsReadFrom(v20, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_59;
      case 7u:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWiFiQualityScore);
        [a1 addScore:v20];
        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiQualityScoreReadFrom(v20, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_59;
      case 8u:
        v20 = objc_alloc_init(WiFiAnalyticsAWDBTLEConnectionStats);
        [a1 addBtleConnection:v20];
        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDBTLEConnectionStatsReadFrom(v20, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_59;
      case 9u:
        v21 = PBReaderReadString();
        v22 = 32;
        goto LABEL_64;
      case 0xAu:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats);
        objc_storeStrong((a1 + 40), v20);
        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStatsReadFrom(v20, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_59;
      case 0xBu:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats);
        objc_storeStrong((a1 + 24), v20);
        v26 = 0;
        v27 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStatsReadFrom(v20, a2))
        {
          goto LABEL_59;
        }

        goto LABEL_72;
      case 0xCu:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityNANInterfaceStats);
        objc_storeStrong((a1 + 88), v20);
        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityNANInterfaceStatsReadFrom(v20, a2))
        {
          goto LABEL_72;
        }

        goto LABEL_59;
      case 0xDu:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityIRInterfaceStats);
        objc_storeStrong((a1 + 72), v20);
        v26 = 0;
        v27 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityIRInterfaceStatsReadFrom(v20, a2))
        {
LABEL_59:
          PBReaderRecallMark();
LABEL_60:

LABEL_61:
          v23 = [a2 position];
          if (v23 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_72:

        return 0;
      case 0xEu:
        v21 = PBReaderReadString();
        v22 = 96;
LABEL_64:
        v24 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_61;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_61;
    }
  }
}

uint64_t WiFiAnalyticsAWDWiFiTDMReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(WiFiAnalyticsAWDWiFiTDMSlice);
        [a1 addSliceStats:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiTDMSliceReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C8491AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C8492144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8492640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8492A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C8493118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8493B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8494144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C84944B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C84949CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8495454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8495CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8496234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8496824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8496D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C84979BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8498460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8499694(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1C849ACF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityImpedingFunctionsReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v168) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v168 & 0x7F) << v6;
      if ((v168 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addCTLMIndex:v14];
        goto LABEL_136;
      case 2u:
        v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addTxPowerBackoffDB:v14];
        goto LABEL_136;
      case 3u:
        v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addTxDutyCyclePct:v14];
        goto LABEL_136;
      case 4u:
        v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addCTLMIndex1:v14];
        goto LABEL_136;
      case 5u:
        v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addTxPowerBackoffDB1:v14];
        goto LABEL_136;
      case 6u:
        v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addTxDutyCyclePct1:v14];
LABEL_136:
        v168 = 0;
        v169 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityStateBinReadFrom(v14, a2))
        {
          goto LABEL_138;
        }

        goto LABEL_361;
      case 7u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 168) |= 0x80000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v168 & 0x7F) << v100;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v12 = v101++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_317;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v102;
        }

LABEL_317:
        v166 = 144;
        goto LABEL_358;
      case 8u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 168) |= 0x100000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v168 & 0x7F) << v70;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_297;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v72;
        }

LABEL_297:
        v166 = 148;
        goto LABEL_358;
      case 9u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 168) |= 0x200000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v168 & 0x7F) << v118;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_329;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v120;
        }

LABEL_329:
        v166 = 152;
        goto LABEL_358;
      case 0xAu:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 168) |= 0x400000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v168 & 0x7F) << v46;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v12 = v47++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_281;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v48;
        }

LABEL_281:
        v166 = 156;
        goto LABEL_358;
      case 0xBu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 168) |= 1u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v168 & 0x7F) << v112;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_325;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v114;
        }

LABEL_325:
        v166 = 8;
        goto LABEL_358;
      case 0xCu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 168) |= 2u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v168 & 0x7F) << v34;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_273;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v36;
        }

LABEL_273:
        v166 = 12;
        goto LABEL_358;
      case 0xDu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 168) |= 0x8000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v168 & 0x7F) << v40;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_277;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v42;
        }

LABEL_277:
        v166 = 96;
        goto LABEL_358;
      case 0xEu:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 168) |= 0x10000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v168 & 0x7F) << v94;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_313;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v96;
        }

LABEL_313:
        v166 = 100;
        goto LABEL_358;
      case 0xFu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 168) |= 0x800000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v168 & 0x7F) << v28;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_269;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v30;
        }

LABEL_269:
        v166 = 160;
        goto LABEL_358;
      case 0x10u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 168) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v168 & 0x7F) << v64;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_293;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v66;
        }

LABEL_293:
        v166 = 164;
        goto LABEL_358;
      case 0x11u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 168) |= 0x10u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v168 & 0x7F) << v22;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_265;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v24;
        }

LABEL_265:
        v166 = 40;
        goto LABEL_358;
      case 0x12u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 168) |= 0x20u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v168 & 0x7F) << v76;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_301;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v78;
        }

LABEL_301:
        v166 = 44;
        goto LABEL_358;
      case 0x13u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 168) |= 4u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v168 & 0x7F) << v106;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_321;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v108;
        }

LABEL_321:
        v166 = 32;
        goto LABEL_358;
      case 0x14u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 168) |= 8u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v168 & 0x7F) << v136;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_341;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v138;
        }

LABEL_341:
        v166 = 36;
        goto LABEL_358;
      case 0x15u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 168) |= 0x20000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v168 & 0x7F) << v82;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_305;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v84;
        }

LABEL_305:
        v166 = 104;
        goto LABEL_358;
      case 0x16u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 168) |= 0x40000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v168 & 0x7F) << v88;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_309;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v90;
        }

LABEL_309:
        v166 = 108;
        goto LABEL_358;
      case 0x17u:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 168) |= 0x80u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v168 & 0x7F) << v130;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_337;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v132;
        }

LABEL_337:
        v166 = 52;
        goto LABEL_358;
      case 0x18u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 168) |= 0x40u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v168 & 0x7F) << v142;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v144;
        }

LABEL_345:
        v166 = 48;
        goto LABEL_358;
      case 0x19u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 168) |= 0x100u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v168 & 0x7F) << v58;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_289;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v60;
        }

LABEL_289:
        v166 = 56;
        goto LABEL_358;
      case 0x1Au:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 168) |= 0x200u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v168 & 0x7F) << v52;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_285;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v54;
        }

LABEL_285:
        v166 = 60;
        goto LABEL_358;
      case 0x1Bu:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 168) |= 0x2000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v163 = [a2 position] + 1;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
          {
            v165 = [a2 data];
            [v165 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v162 |= (v168 & 0x7F) << v160;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v12 = v161++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_357;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v162;
        }

LABEL_357:
        v166 = 76;
        goto LABEL_358;
      case 0x1Cu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 168) |= 0x400u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v168 & 0x7F) << v15;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_261;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_261:
        v166 = 64;
        goto LABEL_358;
      case 0x1Du:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 168) |= 0x800u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v168 & 0x7F) << v148;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v150;
        }

LABEL_349:
        v166 = 68;
        goto LABEL_358;
      case 0x1Eu:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 168) |= 0x1000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v168 & 0x7F) << v154;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v156;
        }

LABEL_353:
        v166 = 72;
        goto LABEL_358;
      case 0x1Fu:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 168) |= 0x4000u;
        while (1)
        {
          LOBYTE(v168) = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v168 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v168 & 0x7F) << v124;
          if ((v168 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_333;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v126;
        }

LABEL_333:
        v166 = 80;
LABEL_358:
        *(a1 + v166) = v21;
        goto LABEL_359;
      case 0x20u:
        v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiTDM);
        objc_storeStrong((a1 + 88), v14);
        v168 = 0;
        v169 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiTDMReadFrom(v14, a2))
        {
LABEL_138:
          PBReaderRecallMark();

LABEL_359:
          v4 = a2;
          continue;
        }

LABEL_361:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_359;
    }
  }
}

uint64_t WiFiAnalyticsAWDWiFiSlowWiFiReportReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(WiFiAnalyticsAWDLinkQualityMeasurements);
          [a1 addLinkQualSample:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDLinkQualityMeasurementsReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiUSBEventNotification);
          [a1 addUsbEvent:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiUSBEventNotificationReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_45:
          *(a1 + 8) = v21;
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(WiFiAnalyticsAWDSlowWiFiNotification);
          objc_storeStrong((a1 + 24), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDSlowWiFiNotificationReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWPeerActivityReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityPeerStats);
        [a1 addPeerStats:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityPeerStatsReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityRuUsageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTx:v13];
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addRx:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityHistogramBinReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityStateBinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWASymptomsDnsStatsReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v188 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v188 & 0x7F) << v6;
      if ((v188 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 112) |= 0x100000u;
        while (1)
        {
          v188 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v188 & 0x7F) << v14;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_322:
            v187 = 92;
            goto LABEL_373;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_322;
      case 2u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 112) |= 0x400u;
        while (1)
        {
          v188 = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v188 & 0x7F) << v101;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v103;
        }

LABEL_326:
        v187 = 52;
        goto LABEL_373;
      case 3u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 112) |= 0x800u;
        while (1)
        {
          v188 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v188 & 0x7F) << v77;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_306;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v79;
        }

LABEL_306:
        v187 = 56;
        goto LABEL_373;
      case 4u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 112) |= 0x1000u;
        while (1)
        {
          v188 = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v188 & 0x7F) << v89;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v12 = v90++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v91;
        }

LABEL_314:
        v187 = 60;
        goto LABEL_373;
      case 5u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 112) |= 0x2000u;
        while (1)
        {
          v188 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v188 & 0x7F) << v46;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v12 = v47++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_288;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v48;
        }

LABEL_288:
        v187 = 64;
        goto LABEL_373;
      case 6u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 112) |= 2u;
        while (1)
        {
          v188 = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v188 & 0x7F) << v119;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_338;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v121;
        }

LABEL_338:
        v187 = 16;
        goto LABEL_373;
      case 7u:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 112) |= 0x80u;
        while (1)
        {
          v188 = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v188 & 0x7F) << v137;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v12 = v138++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_348;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v139;
        }

LABEL_348:
        v187 = 40;
        goto LABEL_373;
      case 8u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 112) |= 0x8000u;
        while (1)
        {
          v188 = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v188 & 0x7F) << v95;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_318;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v97;
        }

LABEL_318:
        v187 = 72;
        goto LABEL_373;
      case 9u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 112) |= 8u;
        while (1)
        {
          v188 = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v188 & 0x7F) << v155;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_360;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v157;
        }

LABEL_360:
        v187 = 24;
        goto LABEL_373;
      case 0xAu:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 112) |= 0x200u;
        while (1)
        {
          v188 = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v188 & 0x7F) << v58;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_296;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v60;
        }

LABEL_296:
        v187 = 48;
        goto LABEL_373;
      case 0xBu:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 112) |= 0x20000u;
        while (1)
        {
          v188 = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v188 & 0x7F) << v149;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v12 = v150++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_356;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v151;
        }

LABEL_356:
        v187 = 80;
        goto LABEL_373;
      case 0xCu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 112) |= 0x20u;
        while (1)
        {
          v188 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v188 & 0x7F) << v40;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_284;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v42;
        }

LABEL_284:
        v187 = 32;
        goto LABEL_373;
      case 0xDu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 112) |= 0x400000u;
        while (1)
        {
          v188 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v188 & 0x7F) << v52;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_292;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v54;
        }

LABEL_292:
        v187 = 100;
        goto LABEL_373;
      case 0xEu:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 112) |= 0x1000000u;
        while (1)
        {
          v188 = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v188 & 0x7F) << v131;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v12 = v132++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_344;
          }
        }

        v27 = (v133 != 0) & ~[a2 hasError];
LABEL_344:
        v186 = 105;
        goto LABEL_377;
      case 0xFu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 112) |= 0x8000000u;
        while (1)
        {
          v188 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v188 & 0x7F) << v34;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_280;
          }
        }

        v27 = (v36 != 0) & ~[a2 hasError];
LABEL_280:
        v186 = 108;
        goto LABEL_377;
      case 0x10u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 112) |= 0x80000u;
        while (1)
        {
          v188 = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v188 & 0x7F) << v83;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_310;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v85;
        }

LABEL_310:
        v187 = 88;
        goto LABEL_373;
      case 0x11u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 112) |= 0x40000u;
        while (1)
        {
          v188 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v188 & 0x7F) << v28;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_278;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_278:
        v187 = 84;
        goto LABEL_373;
      case 0x12u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 112) |= 0x40u;
        while (1)
        {
          v188 = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v188 & 0x7F) << v107;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v12 = v108++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_330;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v109;
        }

LABEL_330:
        v187 = 36;
        goto LABEL_373;
      case 0x13u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 112) |= 0x4000u;
        while (1)
        {
          v188 = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v188 & 0x7F) << v143;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_352;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v145;
        }

LABEL_352:
        v187 = 68;
        goto LABEL_373;
      case 0x14u:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 112) |= 4u;
        while (1)
        {
          v188 = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v188 & 0x7F) << v167;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v12 = v168++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_368;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v169;
        }

LABEL_368:
        v187 = 20;
        goto LABEL_373;
      case 0x15u:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 112) |= 0x100u;
        while (1)
        {
          v188 = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v188 & 0x7F) << v113;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_334;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v115;
        }

LABEL_334:
        v187 = 44;
        goto LABEL_373;
      case 0x16u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 112) |= 0x10000u;
        while (1)
        {
          v188 = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v188 & 0x7F) << v125;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v12 = v126++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_342;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v127;
        }

LABEL_342:
        v187 = 76;
        goto LABEL_373;
      case 0x17u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 112) |= 0x10u;
        while (1)
        {
          v188 = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v188 & 0x7F) << v161;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_364;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v163;
        }

LABEL_364:
        v187 = 28;
        goto LABEL_373;
      case 0x18u:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        *(a1 + 112) |= 0x200000u;
        while (1)
        {
          v188 = 0;
          v176 = [a2 position] + 1;
          if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
          {
            v178 = [a2 data];
            [v178 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v175 |= (v188 & 0x7F) << v173;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v173 += 7;
          v12 = v174++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_372;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v175;
        }

LABEL_372:
        v187 = 96;
LABEL_373:
        *(a1 + v187) = v20;
        continue;
      case 0x19u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 112) |= 1u;
        while (1)
        {
          v188 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v188 & 0x7F) << v70;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_302;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_302:
        *(a1 + 8) = v76;
        continue;
      case 0x1Au:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 112) |= 0x800000u;
        while (1)
        {
          v188 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v188 & 0x7F) << v64;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_298;
          }
        }

        v27 = (v66 != 0) & ~[a2 hasError];
LABEL_298:
        v186 = 104;
        goto LABEL_377;
      case 0x1Bu:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(a1 + 112) |= 0x4000000u;
        while (1)
        {
          v188 = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            v185 = [a2 data];
            [v185 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (v188 & 0x7F) << v180;
          if ((v188 & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v12 = v181++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_376;
          }
        }

        v27 = (v182 != 0) & ~[a2 hasError];
LABEL_376:
        v186 = 107;
        goto LABEL_377;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 112) |= 0x2000000u;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v188 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v188 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v188 & 0x7F) << v21;
      if ((v188 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v12 = v22++ >= 9;
      if (v12)
      {
        LOBYTE(v27) = 0;
        goto LABEL_274;
      }
    }

    v27 = (v23 != 0) & ~[a2 hasError];
LABEL_274:
    v186 = 106;
LABEL_377:
    *(a1 + v186) = v27;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C84B23B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C84B42D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C84B5128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1C84B570C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose((v9 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C84B6444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1C84B82BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C84B86EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C84B9414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1C84B9FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C84BA6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletionsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v104 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v104 & 0x7F) << v5;
        if ((v104 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 76) |= 1u;
          while (1)
          {
            v104 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v13;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v13 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__ac;
            v21 = v14++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__ac;
          goto LABEL_190;
        case 2u:
          v72 = 0;
          v73 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x8000u;
          while (1)
          {
            v104 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v72;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v72 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__success;
            v21 = v73++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__success;
          goto LABEL_190;
        case 3u:
          v52 = 0;
          v53 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x20u;
          while (1)
          {
            v104 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v52;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v52 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__durSinceLastSuccessfulComp;
            v21 = v53++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__durSinceLastSuccessfulComp;
          goto LABEL_190;
        case 4u:
          v62 = 0;
          v63 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x80u;
          while (1)
          {
            v104 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v62;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v62 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__failedComp;
            v21 = v63++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__failedComp;
          goto LABEL_190;
        case 5u:
          v37 = 0;
          v38 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x10u;
          while (1)
          {
            v104 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v37;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v37 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__durSinceLastFailedComp;
            v21 = v38++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__durSinceLastFailedComp;
          goto LABEL_190;
        case 6u:
          v77 = 0;
          v78 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x40u;
          while (1)
          {
            v104 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v77;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v77 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__expiredComp;
            v21 = v78++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__expiredComp;
          goto LABEL_190;
        case 7u:
          v87 = 0;
          v88 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x200u;
          while (1)
          {
            v104 = 0;
            v89 = [a2 position] + 1;
            if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
            {
              v91 = [a2 data];
              [v91 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v87;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v87 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__noAckComp;
            v21 = v88++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__noAckComp;
          goto LABEL_190;
        case 8u:
          v67 = 0;
          v68 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x400u;
          while (1)
          {
            v104 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              v71 = [a2 data];
              [v71 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v67;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v67 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__otherErrComp;
            v21 = v68++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__otherErrComp;
          goto LABEL_190;
        case 9u:
          v97 = 0;
          v98 = 0;
          v15 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            v104 = 0;
            v99 = [a2 position] + 1;
            if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
            {
              v101 = [a2 data];
              [v101 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v97;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v97 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__durSinceLastEnqueue;
            v21 = v98++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__durSinceLastEnqueue;
          goto LABEL_190;
        case 0xAu:
          v47 = 0;
          v48 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x800u;
          while (1)
          {
            v104 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v47;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v47 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__qeuedPackets;
            v21 = v48++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__qeuedPackets;
          goto LABEL_190;
        case 0xBu:
          v92 = 0;
          v93 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x1000u;
          while (1)
          {
            v104 = 0;
            v94 = [a2 position] + 1;
            if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
            {
              v96 = [a2 data];
              [v96 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v92;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v92 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__sinceLastEnqueueHowManyFailed;
            v21 = v93++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__sinceLastEnqueueHowManyFailed;
          goto LABEL_190;
        case 0xCu:
          v32 = 0;
          v33 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x2000u;
          while (1)
          {
            v104 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v32;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v32 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__sinceLastEnqueueHowManySuccess;
            v21 = v33++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__sinceLastEnqueueHowManySuccess;
          goto LABEL_190;
        case 0xDu:
          v42 = 0;
          v43 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x4000u;
          while (1)
          {
            v104 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v42;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v42 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__sinceLastSuccessHowManyFailed;
            v21 = v43++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__sinceLastSuccessHowManyFailed;
          goto LABEL_190;
        case 0xEu:
          v82 = 0;
          v83 = 0;
          v15 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            v104 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v82;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v82 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__durSinceLastEnqueueAtLastCheck;
            v21 = v83++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__durSinceLastEnqueueAtLastCheck;
          goto LABEL_190;
        case 0xFu:
          v27 = 0;
          v28 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x10000u;
          while (1)
          {
            v104 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v27;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v27 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__successfulCompletionsAtLastCheck;
            v21 = v28++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__successfulCompletionsAtLastCheck;
          goto LABEL_190;
        case 0x10u:
          v57 = 0;
          v58 = 0;
          v15 = 0;
          *(a1 + 76) |= 0x100u;
          while (1)
          {
            v104 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v57;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v57 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__failedCompletionsAtLastCheck;
            v21 = v58++ > 8;
            if (v21)
            {
              goto LABEL_193;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__failedCompletionsAtLastCheck;
          goto LABEL_190;
        case 0x11u:
          v22 = 0;
          v23 = 0;
          v15 = 0;
          *(a1 + 76) |= 2u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_194;
          }

          return 0;
      }

      while (1)
      {
        v104 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v104 & 0x7F) << v22;
        if ((v104 & 0x80) == 0)
        {
          break;
        }

        v19 = 0;
        v22 += 7;
        v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__dpsNotifications;
        v21 = v23++ > 8;
        if (v21)
        {
          goto LABEL_193;
        }
      }

      v20 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions__dpsNotifications;
LABEL_190:
      v19 = [a2 hasError] ? 0 : v15;
LABEL_193:
      *(a1 + *v20) = v19;
LABEL_194:
      v102 = [a2 position];
    }

    while (v102 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiDPSActiveProbeStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v73 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73 & 0x7F) << v5;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              v81 = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v81 & 0x7F) << v46;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_131;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v48;
            }

LABEL_131:
            v71 = 20;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_110;
            }

            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 48) |= 0x10u;
            while (1)
            {
              v80 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v80 & 0x7F) << v27;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_119;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v29;
            }

LABEL_119:
            v71 = 28;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v74 = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v74 & 0x7F) << v39;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v45 = 0;
                goto LABEL_127;
              }
            }

            if ([a2 hasError])
            {
              v45 = 0;
            }

            else
            {
              v45 = v41;
            }

LABEL_127:
            *(a1 + 8) = v45;
            goto LABEL_149;
          }

          if (v13 != 2)
          {
            goto LABEL_110;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v82 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v82 & 0x7F) << v21;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_115;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_115:
          v71 = 16;
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v79 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v79 & 0x7F) << v58;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_139;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v60;
          }

LABEL_139:
          v71 = 24;
        }

        else
        {
          if (v13 != 6)
          {
LABEL_110:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_149;
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 48) |= 0x20u;
          while (1)
          {
            v78 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v78 & 0x7F) << v33;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_123;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v35;
          }

LABEL_123:
          v71 = 32;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v52 = 0;
            v53 = 0;
            v54 = 0;
            *(a1 + 48) |= 0x40u;
            while (1)
            {
              v77 = 0;
              v55 = [a2 position] + 1;
              if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
              {
                v57 = [a2 data];
                [v57 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v54 |= (v77 & 0x7F) << v52;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v11 = v53++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_135;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v54;
            }

LABEL_135:
            v71 = 36;
            break;
          case 8:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 48) |= 0x100u;
            while (1)
            {
              v76 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v76 & 0x7F) << v64;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_147;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v66;
            }

LABEL_147:
            v71 = 44;
            break;
          case 9:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 0x80u;
            while (1)
            {
              v75 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v75 & 0x7F) << v14;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_143;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_143:
            v71 = 40;
            break;
          default:
            goto LABEL_110;
        }
      }

      *(a1 + v71) = v20;
LABEL_149:
      v72 = [a2 position];
    }

    while (v72 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C84BFBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getW5ClientClass_block_invoke(uint64_t a1)
{
  WiFiVelocityLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("W5Client");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getW5ClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    WiFiVelocityLibrary();
  }
}

void WiFiVelocityLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!WiFiVelocityLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __WiFiVelocityLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E830E7C8;
    v4 = 0;
    WiFiVelocityLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (WiFiVelocityLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __WiFiVelocityLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WiFiVelocityLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getW5EventClass_block_invoke(uint64_t a1)
{
  WiFiVelocityLibrary();
  result = objc_getClass("W5Event");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getW5EventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(WiFiStatMO *)v3];
  }

  return result;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityNANPeerStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTxCompletions);
              objc_storeStrong((a1 + 24), v14);
              v33 = 0;
              v34 = 0;
              if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityTxCompletionsReadFrom(v14, a2))
              {
LABEL_86:

                return 0;
              }

              goto LABEL_71;
            case 0xB:
              v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions);
              [a1 addAcCompletions:v14];
              v33 = 0;
              v34 = 0;
              if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletionsReadFrom(v14, a2))
              {
                goto LABEL_86;
              }

              goto LABEL_71;
            case 0xC:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              *(a1 + 96) |= 2u;
              while (1)
              {
                LOBYTE(v33) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v33 & 0x7F) << v15;
                if ((v33 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_79;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v17;
              }

LABEL_79:
              v31 = 52;
              goto LABEL_84;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
              [a1 addTxLatencyBE:v14];
LABEL_62:
              v33 = 0;
              v34 = 0;
              if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityHistogramBinReadFrom(v14, a2))
              {
                goto LABEL_86;
              }

              goto LABEL_71;
            case 8:
              v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
              [a1 addTxLatencyVO:v14];
              goto LABEL_62;
            case 9:
              v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
              [a1 addTxLatencyVI:v14];
              goto LABEL_62;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
            [a1 addPackets:v14];
            goto LABEL_66;
          case 5:
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
            [a1 addBytes:v14];
LABEL_66:
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityTrafficReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

LABEL_71:
            PBReaderRecallMark();

            goto LABEL_72;
          case 6:
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
            [a1 addTxLatencyBK:v14];
            goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v33 & 0x7F) << v22;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v24;
            }

LABEL_83:
            v31 = 48;
LABEL_84:
            *(a1 + v31) = v21;
            goto LABEL_72;
          case 2:
            v28 = PBReaderReadString();
            v29 = *(a1 + 32);
            *(a1 + 32) = v28;

            goto LABEL_72;
          case 3:
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
            [a1 addRssi:v14];
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityStateBinReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_72:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityNANInterfaceStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v44) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v44 & 0x7F) << v5;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = *(a1 + 64);
        *(a1 + 64) = v13;

        goto LABEL_91;
      case 2u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addPackets:v15];
        goto LABEL_43;
      case 3u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addBytes:v15];
LABEL_43:
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityTrafficReadFrom(v15, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_73;
      case 4u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addNpeers:v15];
        goto LABEL_71;
      case 5u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 104) |= 2u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v44 & 0x7F) << v16;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_77:
        v41 = 48;
        goto LABEL_90;
      case 6u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 104) |= 4u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v44 & 0x7F) << v29;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_85;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_85:
        v41 = 52;
        goto LABEL_90;
      case 7u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 104) |= 8u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v44 & 0x7F) << v35;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_89:
        v41 = 56;
        goto LABEL_90;
      case 8u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 104) |= 1u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v44 & 0x7F) << v23;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_81:
        v41 = 24;
LABEL_90:
        *(a1 + v41) = v22;
        goto LABEL_91;
      case 9u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addEnableState:v15];
LABEL_71:
        v44 = 0;
        v45 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityStateBinReadFrom(v15, a2))
        {
          goto LABEL_73;
        }

        goto LABEL_93;
      case 0xAu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBK:v15];
        goto LABEL_67;
      case 0xBu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBE:v15];
        goto LABEL_67;
      case 0xCu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVO:v15];
        goto LABEL_67;
      case 0xDu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVI:v15];
LABEL_67:
        v44 = 0;
        v45 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityHistogramBinReadFrom(v15, a2))
        {
LABEL_73:
          PBReaderRecallMark();

LABEL_91:
          v42 = [a2 position];
          if (v42 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_93:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_91;
    }
  }
}

void sub_1C84C82A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C84C8614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C84C8D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1C84C96D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C84C9F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiAnalyticsAWDWiFiDPSAWDLSnapshotReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v46 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v46 & 0x7F) << v35;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_75:
          v41 = 24;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v45 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v45 & 0x7F) << v21;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_67:
          v41 = 20;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_71:
          *(a1 + 8) = v34;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v47 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v47 & 0x7F) << v14;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 16;
      }

      *(a1 + v41) = v20;
LABEL_77:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityPowerPStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPowerPStats__kRadioPhyReportTxDur;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPowerPStats__kRadioPhyReportTxDur;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPowerPStats__kRadioPhyReportRxDur;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityPowerPStats__kRadioPhyReportRxDur;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityAssocReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v204 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v204 & 0x7F) << v6;
      if ((v204 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x40uLL;
        while (1)
        {
          v204 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v14;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v14 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__authSuccess;
          v22 = v15++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__authSuccess;
        goto LABEL_391;
      case 2u:
        v108 = 0;
        v109 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x20uLL;
        while (1)
        {
          v204 = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v108;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v108 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__authFailed;
          v22 = v109++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__authFailed;
        goto LABEL_391;
      case 3u:
        v88 = 0;
        v89 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x10uLL;
        while (1)
        {
          v204 = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v88;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v88 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocSuccess;
          v22 = v89++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocSuccess;
        goto LABEL_391;
      case 4u:
        v98 = 0;
        v99 = 0;
        v16 = 0;
        *(a1 + 156) |= 4uLL;
        while (1)
        {
          v204 = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v98;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v98 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocFailed;
          v22 = v99++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocFailed;
        goto LABEL_391;
      case 5u:
        v63 = 0;
        v64 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x800000uLL;
        while (1)
        {
          v204 = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v63;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v63 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__reassocSuccess;
          v22 = v64++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__reassocSuccess;
        goto LABEL_391;
      case 6u:
        v128 = 0;
        v129 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x400000uLL;
        while (1)
        {
          v204 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v128;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v128 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__reassocFailed;
          v22 = v129++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__reassocFailed;
        goto LABEL_391;
      case 7u:
        v143 = 0;
        v144 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x20000uLL;
        while (1)
        {
          v204 = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v143;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v143 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__linkChanged;
          v22 = v144++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__linkChanged;
        goto LABEL_391;
      case 8u:
        v103 = 0;
        v104 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x10000000uLL;
        while (1)
        {
          v204 = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v103;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v103 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamSuccess;
          v22 = v104++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamSuccess;
        goto LABEL_391;
      case 9u:
        v158 = 0;
        v159 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x1000000uLL;
        while (1)
        {
          v204 = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v158;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v158 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamFailed;
          v22 = v159++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamFailed;
        goto LABEL_391;
      case 0xAu:
        v73 = 0;
        v74 = 0;
        v16 = 0;
        *(a1 + 156) |= 2uLL;
        while (1)
        {
          v204 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v73;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v73 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocDoneSuccess;
          v22 = v74++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocDoneSuccess;
        goto LABEL_391;
      case 0xBu:
        v153 = 0;
        v154 = 0;
        v16 = 0;
        *(a1 + 156) |= 1uLL;
        while (1)
        {
          v204 = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v153;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v153 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocDoneFailed;
          v22 = v154++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocDoneFailed;
        goto LABEL_391;
      case 0xCu:
        v58 = 0;
        v59 = 0;
        v16 = 0;
        *(a1 + 156) |= 8uLL;
        while (1)
        {
          v204 = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v58;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v58 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocReady;
          v22 = v59++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__assocReady;
        goto LABEL_391;
      case 0xDu:
        v68 = 0;
        v69 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x800000000uLL;
        while (1)
        {
          v204 = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v68;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v68 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__ssidChanged;
          v22 = v69++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__ssidChanged;
        goto LABEL_391;
      case 0xEu:
        v138 = 0;
        v139 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x100uLL;
        while (1)
        {
          v204 = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v138;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v138 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__bssidChanged;
          v22 = v139++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__bssidChanged;
        goto LABEL_391;
      case 0xFu:
        v48 = 0;
        v49 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x800uLL;
        while (1)
        {
          v204 = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v48;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v48 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__deauthReceived;
          v22 = v49++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__deauthReceived;
        goto LABEL_391;
      case 0x10u:
        v93 = 0;
        v94 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x2000uLL;
        while (1)
        {
          v204 = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v93;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v93 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__disassocReceived;
          v22 = v94++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__disassocReceived;
        goto LABEL_391;
      case 0x11u:
        v43 = 0;
        v44 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x1000uLL;
        while (1)
        {
          v204 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v43;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v43 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__decryptError;
          v22 = v44++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__decryptError;
        goto LABEL_391;
      case 0x12u:
        v118 = 0;
        v119 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x80000uLL;
        while (1)
        {
          v204 = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v118;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v118 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__pruned;
          v22 = v119++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__pruned;
        goto LABEL_391;
      case 0x13u:
        v148 = 0;
        v149 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x1000000000uLL;
        while (1)
        {
          v204 = 0;
          v150 = [a2 position] + 1;
          if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
          {
            v152 = [a2 data];
            [v152 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v148;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v148 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__supplicant;
          v22 = v149++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__supplicant;
        goto LABEL_391;
      case 0x14u:
        v178 = 0;
        v179 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x40000uLL;
        while (1)
        {
          v204 = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v178;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v178 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__macAddrChanged;
          v22 = v179++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__macAddrChanged;
        goto LABEL_391;
      case 0x15u:
        v123 = 0;
        v124 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x20000000uLL;
        while (1)
        {
          v204 = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v123;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v123 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__rssiChanged;
          v22 = v124++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__rssiChanged;
        goto LABEL_391;
      case 0x16u:
        v133 = 0;
        v134 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x10000uLL;
        while (1)
        {
          v204 = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            v137 = [a2 data];
            [v137 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v133;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v133 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__homeChanQualChanged;
          v22 = v134++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__homeChanQualChanged;
        goto LABEL_391;
      case 0x17u:
        v173 = 0;
        v174 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x200uLL;
        while (1)
        {
          v204 = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v173;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v173 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__chanSwitchEvent;
          v22 = v174++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__chanSwitchEvent;
        goto LABEL_391;
      case 0x18u:
        v183 = 0;
        v184 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x2000000uLL;
        while (1)
        {
          v204 = 0;
          v185 = [a2 position] + 1;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 1, v186 <= objc_msgSend(a2, "length")))
          {
            v187 = [a2 data];
            [v187 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v183;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v183 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamPrep;
          v22 = v184++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamPrep;
        goto LABEL_391;
      case 0x19u:
        v83 = 0;
        v84 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x8000000uLL;
        while (1)
        {
          v204 = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v83;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v83 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamScanStart;
          v22 = v84++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamScanStart;
        goto LABEL_391;
      case 0x1Au:
        v78 = 0;
        v79 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x4000000uLL;
        while (1)
        {
          v204 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v78;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v78 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamScanEnd;
          v22 = v79++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__roamScanEnd;
        goto LABEL_391;
      case 0x1Bu:
        v198 = 0;
        v199 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x100000000uLL;
        while (1)
        {
          v204 = 0;
          v200 = [a2 position] + 1;
          if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
          {
            v202 = [a2 data];
            [v202 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v198;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v198 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__scanResults;
          v22 = v199++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__scanResults;
        goto LABEL_391;
      case 0x1Cu:
        v33 = 0;
        v34 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x200000000uLL;
        while (1)
        {
          v204 = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v33;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v33 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__scanSummary;
          v22 = v34++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__scanSummary;
        goto LABEL_391;
      case 0x1Du:
        v188 = 0;
        v189 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x40000000uLL;
        while (1)
        {
          v204 = 0;
          v190 = [a2 position] + 1;
          if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
          {
            v192 = [a2 data];
            [v192 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v188;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v188 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__scanDone;
          v22 = v189++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__scanDone;
        goto LABEL_391;
      case 0x1Eu:
        v193 = 0;
        v194 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x80000000uLL;
        while (1)
        {
          v204 = 0;
          v195 = [a2 position] + 1;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
          {
            v197 = [a2 data];
            [v197 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v193;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v193 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__scanInternalDone;
          v22 = v194++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__scanInternalDone;
        goto LABEL_391;
      case 0x1Fu:
        v163 = 0;
        v164 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x80uLL;
        while (1)
        {
          v204 = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v163;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v163 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__bssDisallowEvent;
          v22 = v164++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__bssDisallowEvent;
        goto LABEL_391;
      case 0x20u:
        v113 = 0;
        v114 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x400000000uLL;
        while (1)
        {
          v204 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v113;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v113 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__slowWiFiSymptom;
          v22 = v114++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__slowWiFiSymptom;
        goto LABEL_391;
      case 0x21u:
        v168 = 0;
        v169 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x4000uLL;
        while (1)
        {
          v204 = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v168;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v168 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__dpsSymptom;
          v22 = v169++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__dpsSymptom;
        goto LABEL_391;
      case 0x22u:
        v53 = 0;
        v54 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x400uLL;
        while (1)
        {
          v204 = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v53;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v53 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__crashTracerTrig;
          v22 = v54++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__crashTracerTrig;
        goto LABEL_391;
      case 0x23u:
        v38 = 0;
        v39 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x100000uLL;
        while (1)
        {
          v204 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v38;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v38 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__rc1Stats;
          v22 = v39++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__rc1Stats;
        goto LABEL_391;
      case 0x24u:
        v23 = 0;
        v24 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x200000uLL;
        while (1)
        {
          v204 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v204 & 0x7F) << v23;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v20 = 0;
          v23 += 7;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__rc2Stats;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_394;
          }
        }

        v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__rc2Stats;
        goto LABEL_391;
      case 0x25u:
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 156) |= 0x8000uLL;
        break;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        return 0;
    }

    while (1)
    {
      v204 = 0;
      v30 = [a2 position] + 1;
      if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
      {
        v32 = [a2 data];
        [v32 getBytes:&v204 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v204 & 0x7F) << v28;
      if ((v204 & 0x80) == 0)
      {
        break;
      }

      v20 = 0;
      v28 += 7;
      v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__escoTrafficInd;
      v22 = v29++ > 8;
      if (v22)
      {
        goto LABEL_394;
      }
    }

    v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityAssoc__escoTrafficInd;
LABEL_391:
    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v16;
    }

LABEL_394:
    *(a1 + *v21) = v20;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __WALogCategoryDefaultHandle_block_invoke()
{
  WALogCategoryDefaultHandle_defaultHandle = os_log_create("com.apple.wifi.analytics", "Default");

  return MEMORY[0x1EEE66BB8]();
}

id WALogDiagnosticProfileLogHandle()
{
  if (_MergedGlobals_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2, &__block_literal_global_4);
  }

  v1 = qword_1EDE5CAB0;

  return v1;
}

uint64_t __WALogDiagnosticProfileLogHandle_block_invoke()
{
  qword_1EDE5CAB0 = os_log_create("com.apple.wifi.analytics", "diagnosticstream");

  return MEMORY[0x1EEE66BB8]();
}

id WALogWorkReportHandle()
{
  if (qword_1EDE5CAB8 != -1)
  {
    dispatch_once(&qword_1EDE5CAB8, &__block_literal_global_7);
  }

  v1 = qword_1EDE5CAC0;

  return v1;
}

uint64_t __WALogWorkReportHandle_block_invoke()
{
  qword_1EDE5CAC0 = os_log_create("com.apple.wifi.analytics", "WorkReport");

  return MEMORY[0x1EEE66BB8]();
}

id WALogActivityManagerHandle()
{
  if (qword_1EDE5CAC8 != -1)
  {
    dispatch_once(&qword_1EDE5CAC8, &__block_literal_global_10);
  }

  v1 = qword_1EDE5CAD0;

  return v1;
}

uint64_t __WALogActivityManagerHandle_block_invoke()
{
  qword_1EDE5CAD0 = os_log_create("com.apple.wifi.analytics", "Activity");

  return MEMORY[0x1EEE66BB8]();
}

id WALogCategoryInitPersistentLogHandle()
{
  if (qword_1EDE5CAD8 != -1)
  {
    dispatch_once(&qword_1EDE5CAD8, &__block_literal_global_16);
  }

  v1 = qword_1EDE5CAE0;

  return v1;
}

uint64_t __WALogCategoryInitPersistentLogHandle_block_invoke()
{
  qword_1EDE5CAE0 = os_log_create("com.apple.wifi.analytics", "InitPersistentLog");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C84DC098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityRateAndAggregationReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      LOBYTE(v184) = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v184 & 0x7F) << v4;
      if ((v184 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      v10 = v5++ >= 9;
      if (v10)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v12 = v11 & 7;
    if (v12 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v11 >> 3))
    {
      case 1u:
        if (v12 != 2)
        {
          v147 = 0;
          v148 = 0;
          v149 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v150 = [a2 position] + 1;
            if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
            {
              v152 = [a2 data];
              [v152 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v149 |= (v184 & 0x7F) << v147;
            if ((v184 & 0x80) == 0)
            {
              break;
            }

            v147 += 7;
            v10 = v148++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }

LABEL_333:
          [a2 hasError];
LABEL_334:
          PBRepeatedUInt64Add();
LABEL_335:
          v183 = [a2 position];
          if (v183 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
          while (1)
          {
            v14 = [a2 position];
            if (v14 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_215;
            }

            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              v186 = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v186 & 0x7F) << v15;
              if ((v186 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v10 = v16++ >= 9;
              if (v10)
              {
                goto LABEL_32;
              }
            }

            [a2 hasError];
LABEL_32:
            PBRepeatedUInt64Add();
          }
        }

        return result;
      case 2u:
        if (v12 != 2)
        {
          v153 = 0;
          v154 = 0;
          v155 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v156 = [a2 position] + 1;
            if (v156 >= [a2 position] && (v157 = objc_msgSend(a2, "position") + 1, v157 <= objc_msgSend(a2, "length")))
            {
              v158 = [a2 data];
              [v158 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v155 |= (v184 & 0x7F) << v153;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v153 += 7;
            v10 = v154++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v70 = [a2 position];
          if (v70 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v186 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v186 & 0x7F) << v71;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v10 = v72++ >= 9;
            if (v10)
            {
              goto LABEL_152;
            }
          }

          [a2 hasError];
LABEL_152:
          PBRepeatedUInt64Add();
        }

      case 3u:
        if (v12 != 2)
        {
          v129 = 0;
          v130 = 0;
          v131 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v132 = [a2 position] + 1;
            if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
            {
              v134 = [a2 data];
              [v134 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v131 |= (v184 & 0x7F) << v129;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v129 += 7;
            v10 = v130++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v49 = [a2 position];
          if (v49 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            v186 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v186 & 0x7F) << v50;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v10 = v51++ >= 9;
            if (v10)
            {
              goto LABEL_107;
            }
          }

          [a2 hasError];
LABEL_107:
          PBRepeatedUInt64Add();
        }

      case 4u:
        if (v12 != 2)
        {
          v135 = 0;
          v136 = 0;
          v137 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v138 = [a2 position] + 1;
            if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
            {
              v140 = [a2 data];
              [v140 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v137 |= (v184 & 0x7F) << v135;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v135 += 7;
            v10 = v136++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v56 = [a2 position];
          if (v56 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            v186 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v186 & 0x7F) << v57;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v10 = v58++ >= 9;
            if (v10)
            {
              goto LABEL_122;
            }
          }

          [a2 hasError];
LABEL_122:
          PBRepeatedUInt64Add();
        }

      case 5u:
        if (v12 != 2)
        {
          v111 = 0;
          v112 = 0;
          v113 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v114 = [a2 position] + 1;
            if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
            {
              v116 = [a2 data];
              [v116 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v113 |= (v184 & 0x7F) << v111;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v111 += 7;
            v10 = v112++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v28 = [a2 position];
          if (v28 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v186 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v186 & 0x7F) << v29;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              goto LABEL_62;
            }
          }

          [a2 hasError];
LABEL_62:
          PBRepeatedUInt64Add();
        }

      case 6u:
        if (v12 != 2)
        {
          v159 = 0;
          v160 = 0;
          v161 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v162 = [a2 position] + 1;
            if (v162 >= [a2 position] && (v163 = objc_msgSend(a2, "position") + 1, v163 <= objc_msgSend(a2, "length")))
            {
              v164 = [a2 data];
              [v164 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v161 |= (v184 & 0x7F) << v159;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v159 += 7;
            v10 = v160++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v77 = [a2 position];
          if (v77 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v78 = 0;
          v79 = 0;
          v80 = 0;
          while (1)
          {
            v186 = 0;
            v81 = [a2 position] + 1;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
            {
              v83 = [a2 data];
              [v83 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v80 |= (v186 & 0x7F) << v78;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v10 = v79++ >= 9;
            if (v10)
            {
              goto LABEL_167;
            }
          }

          [a2 hasError];
LABEL_167:
          PBRepeatedUInt64Add();
        }

      case 7u:
        if (v12 != 2)
        {
          v165 = 0;
          v166 = 0;
          v167 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v168 = [a2 position] + 1;
            if (v168 >= [a2 position] && (v169 = objc_msgSend(a2, "position") + 1, v169 <= objc_msgSend(a2, "length")))
            {
              v170 = [a2 data];
              [v170 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v167 |= (v184 & 0x7F) << v165;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v165 += 7;
            v10 = v166++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v84 = [a2 position];
          if (v84 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v85 = 0;
          v86 = 0;
          v87 = 0;
          while (1)
          {
            v186 = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              v90 = [a2 data];
              [v90 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v186 & 0x7F) << v85;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v10 = v86++ >= 9;
            if (v10)
            {
              goto LABEL_184;
            }
          }

          [a2 hasError];
LABEL_184:
          PBRepeatedUInt64Add();
        }

      case 8u:
        if (v12 != 2)
        {
          v141 = 0;
          v142 = 0;
          v143 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v144 = [a2 position] + 1;
            if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
            {
              v146 = [a2 data];
              [v146 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v143 |= (v184 & 0x7F) << v141;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v141 += 7;
            v10 = v142++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v63 = [a2 position];
          if (v63 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v64 = 0;
          v65 = 0;
          v66 = 0;
          while (1)
          {
            v186 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v186 & 0x7F) << v64;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v10 = v65++ >= 9;
            if (v10)
            {
              goto LABEL_137;
            }
          }

          [a2 hasError];
LABEL_137:
          PBRepeatedUInt64Add();
        }

      case 9u:
        if (v12 != 2)
        {
          v177 = 0;
          v178 = 0;
          v179 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v180 = [a2 position] + 1;
            if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
            {
              v182 = [a2 data];
              [v182 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v179 |= (v184 & 0x7F) << v177;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v177 += 7;
            v10 = v178++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v98 = [a2 position];
          if (v98 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v99 = 0;
          v100 = 0;
          v101 = 0;
          while (1)
          {
            v186 = 0;
            v102 = [a2 position] + 1;
            if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
            {
              v104 = [a2 data];
              [v104 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v101 |= (v186 & 0x7F) << v99;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v99 += 7;
            v10 = v100++ >= 9;
            if (v10)
            {
              goto LABEL_214;
            }
          }

          [a2 hasError];
LABEL_214:
          PBRepeatedUInt64Add();
        }

LABEL_215:
        PBReaderRecallMark();
        goto LABEL_335;
      case 0xAu:
        if (v12 != 2)
        {
          v123 = 0;
          v124 = 0;
          v125 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v126 = [a2 position] + 1;
            if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
            {
              v128 = [a2 data];
              [v128 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v125 |= (v184 & 0x7F) << v123;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v123 += 7;
            v10 = v124++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v42 = [a2 position];
          if (v42 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v43 = 0;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            v186 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v186 & 0x7F) << v43;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
            if (v10)
            {
              goto LABEL_92;
            }
          }

          [a2 hasError];
LABEL_92:
          PBRepeatedUInt64Add();
        }

      case 0xBu:
        if (v12 != 2)
        {
          v171 = 0;
          v172 = 0;
          v173 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v174 = [a2 position] + 1;
            if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
            {
              v176 = [a2 data];
              [v176 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v173 |= (v184 & 0x7F) << v171;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v171 += 7;
            v10 = v172++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v91 = [a2 position];
          if (v91 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v92 = 0;
          v93 = 0;
          v94 = 0;
          while (1)
          {
            v186 = 0;
            v95 = [a2 position] + 1;
            if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
            {
              v97 = [a2 data];
              [v97 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v94 |= (v186 & 0x7F) << v92;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v92 += 7;
            v10 = v93++ >= 9;
            if (v10)
            {
              goto LABEL_199;
            }
          }

          [a2 hasError];
LABEL_199:
          PBRepeatedUInt64Add();
        }

      case 0xCu:
        if (v12 != 2)
        {
          v105 = 0;
          v106 = 0;
          v107 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v108 = [a2 position] + 1;
            if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
            {
              v110 = [a2 data];
              [v110 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v107 |= (v184 & 0x7F) << v105;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v105 += 7;
            v10 = v106++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v21 = [a2 position];
          if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v186 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v186 & 0x7F) << v22;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v10 = v23++ >= 9;
            if (v10)
            {
              goto LABEL_47;
            }
          }

          [a2 hasError];
LABEL_47:
          PBRepeatedUInt64Add();
        }

      case 0xDu:
        if (v12 != 2)
        {
          v117 = 0;
          v118 = 0;
          v119 = 0;
          while (1)
          {
            LOBYTE(v184) = 0;
            v120 = [a2 position] + 1;
            if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
            {
              v122 = [a2 data];
              [v122 getBytes:&v184 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v119 |= (v184 & 0x7F) << v117;
            if ((v184 & 0x80) == 0)
            {
              goto LABEL_333;
            }

            v117 += 7;
            v10 = v118++ >= 9;
            if (v10)
            {
              goto LABEL_334;
            }
          }
        }

        v184 = 0;
        v185 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v35 = [a2 position];
          if (v35 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_215;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v186 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v186 & 0x7F) << v36;
            if ((v186 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              goto LABEL_77;
            }
          }

          [a2 hasError];
LABEL_77:
          PBRepeatedUInt64Add();
        }

      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_335;
        }

        return 0;
    }
  }
}

uint64_t WiFiAnalyticsAWDWiFiDPSBTSnapshotReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 16;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}