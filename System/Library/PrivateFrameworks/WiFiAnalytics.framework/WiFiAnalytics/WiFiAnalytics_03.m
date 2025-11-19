void sub_1C84E6CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityTxCompletionsReadFrom(uint64_t a1, void *a2)
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
        v75 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v75 & 0x7F) << v5;
        if ((v75 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 52) |= 0x200u;
            while (1)
            {
              v86 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v86 & 0x7F) << v38;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__success;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__success;
            goto LABEL_143;
          }

          if (v13 == 2)
          {
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v85 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v85 & 0x7F) << v33;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__expired;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__expired;
LABEL_143:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_146:
            *(a1 + *v22) = v21;
            goto LABEL_147;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v58 = 0;
              v59 = 0;
              v16 = 0;
              *(a1 + 52) |= 0x40u;
              while (1)
              {
                v84 = 0;
                v60 = [a2 position] + 1;
                if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                {
                  v62 = [a2 data];
                  [v62 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v84 & 0x7F) << v58;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v20 = v59++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__nobuf;
                  goto LABEL_146;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__nobuf;
              goto LABEL_143;
            case 4:
              v43 = 0;
              v44 = 0;
              v16 = 0;
              *(a1 + 52) |= 0x20u;
              while (1)
              {
                v83 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v83 & 0x7F) << v43;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v20 = v44++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__noack;
                  goto LABEL_146;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__noack;
              goto LABEL_143;
            case 5:
              v23 = 0;
              v24 = 0;
              v16 = 0;
              *(a1 + 52) |= 0x400u;
              while (1)
              {
                v82 = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v82 & 0x7F) << v23;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v20 = v24++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__txfailure;
                  goto LABEL_146;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__txfailure;
              goto LABEL_143;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v68 = 0;
            v69 = 0;
            v16 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              v78 = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v78 & 0x7F) << v68;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v20 = v69++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__chipmodeerror;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__chipmodeerror;
            goto LABEL_143;
          case 0xA:
            v53 = 0;
            v54 = 0;
            v16 = 0;
            *(a1 + 52) |= 0x80u;
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

              v16 |= (v77 & 0x7F) << v53;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v20 = v54++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__noremotepeer;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__noremotepeer;
            goto LABEL_143;
          case 0xB:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v76 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v76 & 0x7F) << v28;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__internalerror;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__internalerror;
            goto LABEL_143;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v63 = 0;
            v64 = 0;
            v16 = 0;
            *(a1 + 52) |= 0x100u;
            while (1)
            {
              v81 = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v81 & 0x7F) << v63;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v20 = v64++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__noresources;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__noresources;
            goto LABEL_143;
          case 7:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              v80 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v80 & 0x7F) << v48;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__ioerror;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__ioerror;
            goto LABEL_143;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              v79 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v79 & 0x7F) << v14;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__mbfree;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityTxCompletions__mbfree;
            goto LABEL_143;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_147:
      v73 = [a2 position];
    }

    while (v73 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiDPSCountersSampleReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityControllerStats);
        objc_storeStrong((a1 + 16), v21);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityControllerStatsReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityPeerStats);
    objc_storeStrong((a1 + 24), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityPeerStatsReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStatsReadFrom(uint64_t a1, void *a2)
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

void sub_1C84F1A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C84F1D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C84F21D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *WADeploymentCoverageToString(int a1)
{
  v1 = @"unknown coverage";
  if (a1 == 1)
  {
    v1 = @"good coverage";
  }

  if (a1 == 2)
  {
    return @"poor coverage";
  }

  else
  {
    return v1;
  }
}

__CFString *WADeploymentCongestionToString(int a1)
{
  v1 = @"unknown congestion";
  if (a1 == 1)
  {
    v1 = @"low congestion";
  }

  if (a1 == 2)
  {
    return @"high congestion";
  }

  else
  {
    return v1;
  }
}

uint64_t WiFiAnalyticsAWDWiFiDPSEpilogueReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v62) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v62 & 0x7F) << v5;
      if ((v62 & 0x80) == 0)
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
        *(a1 + 100) |= 1u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v62 & 0x7F) << v13;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_117:
            *(a1 + 8) = v19;
            goto LABEL_127;
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

        goto LABEL_117;
      case 2u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 100) |= 0x10u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v62 & 0x7F) << v47;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v11 = v48++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_121;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v49;
        }

LABEL_121:
        v59 = 48;
        goto LABEL_126;
      case 3u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 100) |= 2u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v62 & 0x7F) << v28;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_105;
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

LABEL_105:
        v59 = 24;
        goto LABEL_126;
      case 4u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 100) |= 8u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v62 & 0x7F) << v35;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_109;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v37;
        }

LABEL_109:
        v59 = 32;
        goto LABEL_126;
      case 5u:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences);
        objc_storeStrong((a1 + 56), v20);
        goto LABEL_80;
      case 6u:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWADiagnosisActionAssociationDifferences);
        [a1 addAssociationChanges:v20];
LABEL_80:
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWADiagnosisActionAssociationDifferencesReadFrom(v20, a2))
        {
          goto LABEL_129;
        }

        goto LABEL_90;
      case 7u:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWAQuickDpsStats);
        objc_storeStrong((a1 + 72), v20);
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWAQuickDpsStatsReadFrom(v20, a2))
        {
          goto LABEL_129;
        }

        goto LABEL_90;
      case 8u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 100) |= 4u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v62 & 0x7F) << v41;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_113;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v43;
        }

LABEL_113:
        v59 = 28;
        goto LABEL_126;
      case 9u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 100) |= 0x20u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v62 & 0x7F) << v53;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v11 = v54++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_125;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v55;
        }

LABEL_125:
        v59 = 80;
LABEL_126:
        *(a1 + v59) = v34;
        goto LABEL_127;
      case 0xAu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 100) |= 0x40u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v62 & 0x7F) << v21;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_101;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_101:
        *(a1 + 96) = v27;
        goto LABEL_127;
      case 0xBu:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWASymptomsDnsStats);
        objc_storeStrong((a1 + 88), v20);
        v62 = 0;
        v63 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWASymptomsDnsStatsReadFrom(v20, a2))
        {
          goto LABEL_90;
        }

        goto LABEL_129;
      case 0xCu:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWAPeerDiscoveryInfo);
        objc_storeStrong((a1 + 64), v20);
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWAPeerDiscoveryInfoReadFrom(v20, a2))
        {
          goto LABEL_129;
        }

        goto LABEL_90;
      case 0xDu:
        v20 = objc_alloc_init(WiFiAnalyticsAWDWAAssociatedAPInfo);
        [a1 addAccessPointInfo:v20];
        v62 = 0;
        v63 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWAAssociatedAPInfoReadFrom(v20, a2))
        {
LABEL_90:
          PBReaderRecallMark();

LABEL_127:
          v60 = [a2 position];
          if (v60 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_129:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_127;
    }
  }
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityScanActivityReadFrom(uint64_t a1, void *a2)
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
        v80 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v80 & 0x7F) << v5;
        if ((v80 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v53 = 0;
              v54 = 0;
              v16 = 0;
              *(a1 + 56) |= 0x80u;
              while (1)
              {
                v83 = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v83 & 0x7F) << v53;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v20 = v54++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__pnoSSIDDur;
                  goto LABEL_157;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__pnoSSIDDur;
              goto LABEL_154;
            case 0xB:
              v73 = 0;
              v74 = 0;
              v16 = 0;
              *(a1 + 56) |= 4u;
              while (1)
              {
                v82 = 0;
                v75 = [a2 position] + 1;
                if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
                {
                  v77 = [a2 data];
                  [v77 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v82 & 0x7F) << v73;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v73 += 7;
                v20 = v74++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__otherCount;
                  goto LABEL_157;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__otherCount;
LABEL_154:
              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v16;
              }

LABEL_157:
              *(a1 + *v22) = v21;
              goto LABEL_158;
            case 0xC:
              v33 = 0;
              v34 = 0;
              v16 = 0;
              *(a1 + 56) |= 8u;
              while (1)
              {
                v81 = 0;
                v35 = [a2 position] + 1;
                if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
                {
                  v37 = [a2 data];
                  [v37 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v81 & 0x7F) << v33;
                if ((v81 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v20 = v34++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__otherDur;
                  goto LABEL_157;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__otherDur;
              goto LABEL_154;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v43 = 0;
              v44 = 0;
              v16 = 0;
              *(a1 + 56) |= 0x10u;
              while (1)
              {
                v86 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v86 & 0x7F) << v43;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v20 = v44++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__pnoBSSIDCount;
                  goto LABEL_157;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__pnoBSSIDCount;
              goto LABEL_154;
            case 8:
              v63 = 0;
              v64 = 0;
              v16 = 0;
              *(a1 + 56) |= 0x20u;
              while (1)
              {
                v85 = 0;
                v65 = [a2 position] + 1;
                if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
                {
                  v67 = [a2 data];
                  [v67 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v85 & 0x7F) << v63;
                if ((v85 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v20 = v64++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__pnoBSSIDDur;
                  goto LABEL_157;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__pnoBSSIDDur;
              goto LABEL_154;
            case 9:
              v23 = 0;
              v24 = 0;
              v16 = 0;
              *(a1 + 56) |= 0x40u;
              while (1)
              {
                v84 = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v84 & 0x7F) << v23;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v20 = v24++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__pnoSSIDCount;
                  goto LABEL_157;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__pnoSSIDCount;
              goto LABEL_154;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 56) |= 0x200u;
            while (1)
            {
              v89 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v89 & 0x7F) << v48;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__roamDur;
                goto LABEL_157;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__roamDur;
            goto LABEL_154;
          case 5:
            v68 = 0;
            v69 = 0;
            v16 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              v88 = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v88 & 0x7F) << v68;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v20 = v69++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__assocCount;
                goto LABEL_157;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__assocCount;
            goto LABEL_154;
          case 6:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v87 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v87 & 0x7F) << v28;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__assocDur;
                goto LABEL_157;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__assocDur;
            goto LABEL_154;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 56) |= 0x400u;
            while (1)
            {
              v92 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v92 & 0x7F) << v38;
              if ((v92 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__userCount;
                goto LABEL_157;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__userCount;
            goto LABEL_154;
          case 2:
            v58 = 0;
            v59 = 0;
            v16 = 0;
            *(a1 + 56) |= 0x800u;
            while (1)
            {
              v91 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v91 & 0x7F) << v58;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v20 = v59++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__userDur;
                goto LABEL_157;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__userDur;
            goto LABEL_154;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 56) |= 0x100u;
            while (1)
            {
              v90 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v90 & 0x7F) << v14;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__roamCount;
                goto LABEL_157;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityScanActivity__roamCount;
            goto LABEL_154;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_158:
      v78 = [a2 position];
    }

    while (v78 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityTrafficReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C84FF918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C8504ABC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  _Unwind_Resume(a1);
}

void sub_1C8505B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8505EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8506A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_sync_exit(obj);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8506BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8506D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiAnalyticsAWDWAPeerDiscoveryInfoReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v33 = 0;
          v34 = 0;
          v16 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v42 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v33;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWAPeerDiscoveryInfo__tvOSPeers;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWAPeerDiscoveryInfo__tvOSPeers;
          goto LABEL_64;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v41 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWAPeerDiscoveryInfo__macOSPeers;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWAPeerDiscoveryInfo__macOSPeers;
LABEL_64:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_67:
          *(a1 + *v22) = v21;
          goto LABEL_68;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v44 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWAPeerDiscoveryInfo__numPeersDiscovered;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWAPeerDiscoveryInfo__numPeersDiscovered;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v43 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43 & 0x7F) << v14;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWAPeerDiscoveryInfo__iOSPeers;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWAPeerDiscoveryInfo__iOSPeers;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiDPSNotificationReadFrom(uint64_t a1, void *a2)
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
        v81 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v81 & 0x7F) << v5;
        if ((v81 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 48) |= 0x10u;
            while (1)
            {
              v87 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v87 & 0x7F) << v47;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_137;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_137:
            v78 = 28;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_120:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_160;
            }

            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 48) |= 0x20u;
            while (1)
            {
              v86 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v86 & 0x7F) << v34;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_129;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_129:
            v78 = 32;
          }

          goto LABEL_159;
        }

        if (v13 == 8)
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 48) |= 0x40u;
          while (1)
          {
            v85 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v85 & 0x7F) << v59;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_145;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v61;
          }

LABEL_145:
          v78 = 36;
          goto LABEL_159;
        }

        if (v13 == 9)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 48) |= 0x80u;
          while (1)
          {
            v84 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v84 & 0x7F) << v71;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v73;
          }

LABEL_158:
          v78 = 40;
          goto LABEL_159;
        }

        if (v13 != 10)
        {
          goto LABEL_120;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 48) |= 0x200u;
        while (1)
        {
          v90 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v90 & 0x7F) << v21;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_151;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_151:
        v79 = 45;
      }

      else
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v82 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v82 & 0x7F) << v40;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v46 = 0;
                goto LABEL_133;
              }
            }

            if ([a2 hasError])
            {
              v46 = 0;
            }

            else
            {
              v46 = v42;
            }

LABEL_133:
            *(a1 + 8) = v46;
            goto LABEL_160;
          }

          if (v13 != 2)
          {
            goto LABEL_120;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v83 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v83 & 0x7F) << v28;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_125;
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

LABEL_125:
          v78 = 24;
          goto LABEL_159;
        }

        if (v13 == 3)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v89 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v89 & 0x7F) << v53;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_141;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v55;
          }

LABEL_141:
          v78 = 20;
LABEL_159:
          *(a1 + v78) = v20;
          goto LABEL_160;
        }

        if (v13 != 4)
        {
          if (v13 != 5)
          {
            goto LABEL_120;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v88 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v88 & 0x7F) << v14;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_149;
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

LABEL_149:
          v78 = 16;
          goto LABEL_159;
        }

        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 48) |= 0x100u;
        while (1)
        {
          v91 = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v91 & 0x7F) << v65;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_153;
          }
        }

        v27 = (v67 != 0) & ~[a2 hasError];
LABEL_153:
        v79 = 44;
      }

      *(a1 + v79) = v27;
LABEL_160:
      v80 = [a2 position];
    }

    while (v80 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshotReadFrom(uint64_t a1, void *a2)
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
        v75 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v75 & 0x7F) << v5;
        if ((v75 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 52) |= 0x200u;
            while (1)
            {
              v86 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v86 & 0x7F) << v38;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__success;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__success;
            goto LABEL_143;
          }

          if (v13 == 2)
          {
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v85 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v85 & 0x7F) << v33;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__dropped;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__dropped;
LABEL_143:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_146:
            *(a1 + *v22) = v21;
            goto LABEL_147;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v58 = 0;
              v59 = 0;
              v16 = 0;
              *(a1 + 52) |= 0x80u;
              while (1)
              {
                v84 = 0;
                v60 = [a2 position] + 1;
                if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                {
                  v62 = [a2 data];
                  [v62 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v84 & 0x7F) << v58;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v20 = v59++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__noBuf;
                  goto LABEL_146;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__noBuf;
              goto LABEL_143;
            case 4:
              v43 = 0;
              v44 = 0;
              v16 = 0;
              *(a1 + 52) |= 0x100u;
              while (1)
              {
                v83 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v83 & 0x7F) << v43;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v20 = v44++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__noResources;
                  goto LABEL_146;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__noResources;
              goto LABEL_143;
            case 5:
              v23 = 0;
              v24 = 0;
              v16 = 0;
              *(a1 + 52) |= 0x40u;
              while (1)
              {
                v82 = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v82 & 0x7F) << v23;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v20 = v24++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__noAck;
                  goto LABEL_146;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__noAck;
              goto LABEL_143;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v68 = 0;
            v69 = 0;
            v16 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              v78 = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v78 & 0x7F) << v68;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v20 = v69++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__firmwareFreePacket;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__firmwareFreePacket;
            goto LABEL_143;
          case 0xA:
            v53 = 0;
            v54 = 0;
            v16 = 0;
            *(a1 + 52) |= 0x20u;
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

              v16 |= (v77 & 0x7F) << v53;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v20 = v54++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__maxRetries;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__maxRetries;
            goto LABEL_143;
          case 0xB:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              v76 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v76 & 0x7F) << v28;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__forceLifetimeExp;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__forceLifetimeExp;
            goto LABEL_143;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v63 = 0;
            v64 = 0;
            v16 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              v81 = 0;
              v65 = [a2 position] + 1;
              if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v81 & 0x7F) << v63;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v20 = v64++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__chipModeError;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__chipModeError;
            goto LABEL_143;
          case 7:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v80 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v80 & 0x7F) << v48;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__expired;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__expired;
            goto LABEL_143;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 0x400u;
            while (1)
            {
              v79 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v79 & 0x7F) << v14;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__txFailure;
                goto LABEL_146;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot__txFailure;
            goto LABEL_143;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_147:
      v73 = [a2 position];
    }

    while (v73 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiQualityScoreReadFrom(uint64_t a1, void *a2)
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
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v50 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50 & 0x7F) << v38;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__channelQuality;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__channelQuality;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 28) |= 0x10u;
          while (1)
          {
            v49 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v23;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__txLoss;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__txLoss;
LABEL_75:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_78:
          *(a1 + *v22) = v21;
          goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v48 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v48 & 0x7F) << v28;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__rxLoss;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__rxLoss;
            goto LABEL_75;
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v47 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v33;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__txLatency;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__txLatency;
            goto LABEL_75;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 2u;
            while (1)
            {
              v46 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v14;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__rxLatency;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiQualityScore__rxLatency;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityHistogramBinReadFrom(uint64_t a1, void *a2)
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

uint64_t WiFiAnalyticsAWDWiFiNWActivityOMIReadFrom(uint64_t a1, void *a2)
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
        v99 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v99 & 0x7F) << v5;
        if ((v99 & 0x80) == 0)
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
          *(a1 + 72) |= 0x400u;
          while (1)
          {
            v99 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v13;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v19 = v14++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__scheduled;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__scheduled;
          goto LABEL_180;
        case 2u:
          v67 = 0;
          v68 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x800u;
          while (1)
          {
            v99 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              v71 = [a2 data];
              [v71 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v67;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v19 = v68++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__success;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__success;
          goto LABEL_180;
        case 3u:
          v47 = 0;
          v48 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x80u;
          while (1)
          {
            v99 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v47;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v19 = v48++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__retries;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__retries;
          goto LABEL_180;
        case 4u:
          v57 = 0;
          v58 = 0;
          v15 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            v99 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v57;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v19 = v58++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__completionDelay;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__completionDelay;
          goto LABEL_180;
        case 5u:
          v32 = 0;
          v33 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x8000u;
          while (1)
          {
            v99 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v32;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v19 = v33++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__uLMUReq;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__uLMUReq;
          goto LABEL_180;
        case 6u:
          v72 = 0;
          v73 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x4000u;
          while (1)
          {
            v99 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v72;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v19 = v73++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__uLMUAck;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__uLMUAck;
          goto LABEL_180;
        case 7u:
          v82 = 0;
          v83 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x2000u;
          while (1)
          {
            v99 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v82;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v19 = v83++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__txNSTSReq;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__txNSTSReq;
          goto LABEL_180;
        case 8u:
          v62 = 0;
          v63 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x1000u;
          while (1)
          {
            v99 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v62;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v19 = v63++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__txNSTSAck;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__txNSTSAck;
          goto LABEL_180;
        case 9u:
          v92 = 0;
          v93 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x200u;
          while (1)
          {
            v99 = 0;
            v94 = [a2 position] + 1;
            if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
            {
              v96 = [a2 data];
              [v96 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v92;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v92 += 7;
            v19 = v93++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__rxNSSReq;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__rxNSSReq;
          goto LABEL_180;
        case 0xAu:
          v42 = 0;
          v43 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x100u;
          while (1)
          {
            v99 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v42;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v19 = v43++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__rxNSSAck;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__rxNSSAck;
          goto LABEL_180;
        case 0xBu:
          v87 = 0;
          v88 = 0;
          v15 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            v99 = 0;
            v89 = [a2 position] + 1;
            if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
            {
              v91 = [a2 data];
              [v91 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v87;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v19 = v88++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__chBWReq;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__chBWReq;
          goto LABEL_180;
        case 0xCu:
          v27 = 0;
          v28 = 0;
          v15 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v99 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v27;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v19 = v28++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__chBWAck;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__chBWAck;
          goto LABEL_180;
        case 0xDu:
          v37 = 0;
          v38 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x40u;
          while (1)
          {
            v99 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v37;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v19 = v38++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__eRSUReq;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__eRSUReq;
          goto LABEL_180;
        case 0xEu:
          v77 = 0;
          v78 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x20u;
          while (1)
          {
            v99 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v77;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v19 = v78++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__eRSUAck;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__eRSUAck;
          goto LABEL_180;
        case 0xFu:
          v22 = 0;
          v23 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x10u;
          while (1)
          {
            v99 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v22;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v19 = v23++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__dLResoundReq;
              goto LABEL_183;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__dLResoundReq;
          goto LABEL_180;
        case 0x10u:
          v52 = 0;
          v53 = 0;
          v15 = 0;
          *(a1 + 72) |= 8u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_184;
          }

          return 0;
      }

      while (1)
      {
        v99 = 0;
        v54 = [a2 position] + 1;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
        {
          v56 = [a2 data];
          [v56 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v99 & 0x7F) << v52;
        if ((v99 & 0x80) == 0)
        {
          break;
        }

        v52 += 7;
        v19 = v53++ > 8;
        if (v19)
        {
          v20 = 0;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__dLResoundAck;
          goto LABEL_183;
        }
      }

      v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityOMI__dLResoundAck;
LABEL_180:
      v20 = [a2 hasError] ? 0 : v15;
LABEL_183:
      *(a1 + *v21) = v20;
LABEL_184:
      v97 = [a2 position];
    }

    while (v97 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiUSBEventNotificationReadFrom(uint64_t a1, void *a2)
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
        v51 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v53 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v53 & 0x7F) << v41;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v43;
          }

LABEL_79:
          v49 = 16;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_68:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_88;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v52 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v52 & 0x7F) << v21;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_86;
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

LABEL_86:
          v49 = 20;
        }

        *(a1 + v49) = v27;
      }

      else if (v13 == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v54 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v54 & 0x7F) << v28;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_73;
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

LABEL_73:
        *(a1 + 8) = v34;
      }

      else
      {
        if (v13 == 4)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v56 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v56 & 0x7F) << v35;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_75;
            }
          }

          v20 = (v37 != 0) & ~[a2 hasError];
LABEL_75:
          v48 = 24;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_68;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 0x10u;
          while (1)
          {
            v55 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v55 & 0x7F) << v14;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_81;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_81:
          v48 = 25;
        }

        *(a1 + v48) = v20;
      }

LABEL_88:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWAQuickDpsStatsReadFrom(uint64_t a1, void *a2)
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
        v98 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v98 & 0x7F) << v5;
        if ((v98 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 52) |= 0x800u;
          while (1)
          {
            v102 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v102 & 0x7F) << v13;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
LABEL_164:
              v96 = 50;
              goto LABEL_177;
            }
          }

          v19 = (v15 != 0) & ~[a2 hasError];
          goto LABEL_164;
        case 2u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 52) |= 0x400u;
          while (1)
          {
            v101 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v101 & 0x7F) << v64;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_166;
            }
          }

          v19 = (v66 != 0) & ~[a2 hasError];
LABEL_166:
          v96 = 49;
          goto LABEL_177;
        case 3u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 52) |= 0x1000u;
          while (1)
          {
            v100 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v100 & 0x7F) << v46;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_154;
            }
          }

          v19 = (v48 != 0) & ~[a2 hasError];
LABEL_154:
          v96 = 51;
          goto LABEL_177;
        case 4u:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 52) |= 0x80u;
          while (1)
          {
            v109 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v109 & 0x7F) << v52;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v54;
          }

LABEL_158:
          v95 = 40;
          goto LABEL_182;
        case 5u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            v108 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v108 & 0x7F) << v27;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_144;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

LABEL_144:
          v95 = 24;
          goto LABEL_182;
        case 6u:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            v107 = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v107 & 0x7F) << v70;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v11 = v71++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_170;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v72;
          }

LABEL_170:
          v95 = 20;
          goto LABEL_182;
        case 7u:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 52) |= 0x10u;
          while (1)
          {
            v106 = 0;
            v80 = [a2 position] + 1;
            if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
            {
              v82 = [a2 data];
              [v82 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v79 |= (v106 & 0x7F) << v77;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v11 = v78++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_174;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v79;
          }

LABEL_174:
          v95 = 28;
          goto LABEL_182;
        case 8u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 52) |= 0x40u;
          while (1)
          {
            v105 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v105 & 0x7F) << v58;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_162;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v60;
          }

LABEL_162:
          v95 = 36;
          goto LABEL_182;
        case 9u:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          *(a1 + 52) |= 0x20u;
          while (1)
          {
            v104 = 0;
            v92 = [a2 position] + 1;
            if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
            {
              v94 = [a2 data];
              [v94 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v91 |= (v104 & 0x7F) << v89;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v11 = v90++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_181;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v91;
          }

LABEL_181:
          v95 = 32;
          goto LABEL_182;
        case 0xAu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 52) |= 0x100u;
          while (1)
          {
            v110 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v110 & 0x7F) << v40;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_152;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v42;
          }

LABEL_152:
          v95 = 44;
          goto LABEL_182;
        case 0xBu:
          v83 = 0;
          v84 = 0;
          v85 = 0;
          *(a1 + 52) |= 0x200u;
          while (1)
          {
            v99 = 0;
            v86 = [a2 position] + 1;
            if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
            {
              v88 = [a2 data];
              [v88 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v85 |= (v99 & 0x7F) << v83;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v83 += 7;
            v11 = v84++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_176;
            }
          }

          v19 = (v85 != 0) & ~[a2 hasError];
LABEL_176:
          v96 = 48;
LABEL_177:
          *(a1 + v96) = v19;
          goto LABEL_183;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            v103 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v103 & 0x7F) << v20;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_140;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_140:
          v95 = 16;
LABEL_182:
          *(a1 + v95) = v26;
          goto LABEL_183;
        case 0xDu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 52) |= 1u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_183;
      }

      while (1)
      {
        v111 = 0;
        v36 = [a2 position] + 1;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v35 |= (v111 & 0x7F) << v33;
        if ((v111 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v11 = v34++ >= 9;
        if (v11)
        {
          v39 = 0;
          goto LABEL_148;
        }
      }

      v39 = [a2 hasError] ? 0 : v35;
LABEL_148:
      *(a1 + 8) = v39;
LABEL_183:
      v97 = [a2 position];
    }

    while (v97 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityInterfaceStatsReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v38) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v38 & 0x7F) << v5;
      if ((v38 & 0x80) == 0)
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
        v14 = *(a1 + 88);
        *(a1 + 88) = v13;

        goto LABEL_82;
      case 2u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addPackets:v15];
        goto LABEL_39;
      case 3u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addBytes:v15];
LABEL_39:
        v38 = 0;
        v39 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityTrafficReadFrom(v15, a2))
        {
          goto LABEL_84;
        }

        goto LABEL_59;
      case 4u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityPeerStats);
        [a1 addPeer:v15];
        v38 = 0;
        v39 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityPeerStatsReadFrom(v15, a2))
        {
          goto LABEL_84;
        }

        goto LABEL_59;
      case 5u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 104) |= 2u;
        while (1)
        {
          LOBYTE(v38) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v38 & 0x7F) << v16;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_72;
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

LABEL_72:
        v35 = 36;
        goto LABEL_81;
      case 6u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 104) |= 1u;
        while (1)
        {
          LOBYTE(v38) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v38 & 0x7F) << v23;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_76;
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

LABEL_76:
        v35 = 32;
        goto LABEL_81;
      case 7u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityAssoc);
        objc_storeStrong((a1 + 8), v15);
        v38 = 0;
        v39 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityAssocReadFrom(v15, a2))
        {
          goto LABEL_84;
        }

        goto LABEL_59;
      case 8u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addAwdlMode:v15];
        goto LABEL_57;
      case 9u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 104) |= 4u;
        while (1)
        {
          LOBYTE(v38) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v38 & 0x7F) << v29;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_80;
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

LABEL_80:
        v35 = 48;
LABEL_81:
        *(a1 + v35) = v22;
        goto LABEL_82;
      case 0xAu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addEnableState:v15];
        goto LABEL_57;
      case 0xBu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addNss:v15];
        goto LABEL_57;
      case 0xCu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addPhymode:v15];
LABEL_57:
        v38 = 0;
        v39 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityStateBinReadFrom(v15, a2))
        {
          goto LABEL_59;
        }

        goto LABEL_84;
      case 0xDu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiRxDataStallStats);
        objc_storeStrong((a1 + 96), v15);
        v38 = 0;
        v39 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiRxDataStallStatsReadFrom(v15, a2))
        {
LABEL_59:
          PBReaderRecallMark();

LABEL_82:
          v36 = [a2 position];
          if (v36 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_84:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_82;
    }
  }
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityPeerStatsReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v98) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v98 & 0x7F) << v6;
      if ((v98 & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 168) |= 0x100u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v98 & 0x7F) << v14;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_182:
            v96 = 96;
            goto LABEL_215;
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

        goto LABEL_182;
      case 2u:
        v46 = PBReaderReadString();
        v47 = *(a1 + 48);
        *(a1 + 48) = v46;

        goto LABEL_216;
      case 3u:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addRssi:v33];
        goto LABEL_74;
      case 4u:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addCca:v33];
        goto LABEL_74;
      case 5u:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addSnr:v33];
LABEL_74:
        v98 = 0;
        v99 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityStateBinReadFrom(v33, a2))
        {
          goto LABEL_218;
        }

        goto LABEL_133;
      case 6u:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addPackets:v33];
        goto LABEL_117;
      case 7u:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addBytes:v33];
LABEL_117:
        v98 = 0;
        v99 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityTrafficReadFrom(v33, a2))
        {
          goto LABEL_218;
        }

        goto LABEL_133;
      case 8u:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBK:v33];
        goto LABEL_131;
      case 9u:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBE:v33];
        goto LABEL_131;
      case 0xAu:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVO:v33];
        goto LABEL_131;
      case 0xBu:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVI:v33];
LABEL_131:
        v98 = 0;
        v99 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityHistogramBinReadFrom(v33, a2))
        {
          goto LABEL_133;
        }

        goto LABEL_218;
      case 0xCu:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTxCompletions);
        objc_storeStrong((a1 + 40), v33);
        v98 = 0;
        v99 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityTxCompletionsReadFrom(v33, a2))
        {
          goto LABEL_218;
        }

        goto LABEL_133;
      case 0xDu:
        v33 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions);
        [a1 addAcCompletions:v33];
        v98 = 0;
        v99 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletionsReadFrom(v33, a2))
        {
LABEL_133:
          PBReaderRecallMark();

LABEL_216:
          v4 = a2;
          continue;
        }

LABEL_218:

        return 0;
      case 0xEu:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 168) |= 0x200u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v98 & 0x7F) << v66;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_198;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v68;
        }

LABEL_198:
        v96 = 100;
        goto LABEL_215;
      case 0xFu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 168) |= 0x1000u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v98 & 0x7F) << v27;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v12 = v28++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_170;
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

LABEL_170:
        v96 = 120;
        goto LABEL_215;
      case 0x10u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 168) |= 1u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v98 & 0x7F) << v40;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_178;
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

LABEL_178:
        v96 = 24;
        goto LABEL_215;
      case 0x11u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 168) |= 8u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v98 & 0x7F) << v21;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_166;
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

LABEL_166:
        v96 = 64;
        goto LABEL_215;
      case 0x12u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 168) |= 0x20u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v98 & 0x7F) << v48;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_186;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v50;
        }

LABEL_186:
        v96 = 72;
        goto LABEL_215;
      case 0x13u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 168) |= 2u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v98 & 0x7F) << v72;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_202;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v74;
        }

LABEL_202:
        v96 = 56;
        goto LABEL_215;
      case 0x14u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 168) |= 0x10u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v98 & 0x7F) << v84;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_210;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v86;
        }

LABEL_210:
        v96 = 68;
        goto LABEL_215;
      case 0x15u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 168) |= 4u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v98 & 0x7F) << v54;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_190;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v56;
        }

LABEL_190:
        v96 = 60;
        goto LABEL_215;
      case 0x16u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 168) |= 0x40u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v98 & 0x7F) << v60;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_194;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v62;
        }

LABEL_194:
        v96 = 88;
        goto LABEL_215;
      case 0x17u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 168) |= 0x80u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v98 & 0x7F) << v78;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_206;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v80;
        }

LABEL_206:
        v96 = 92;
        goto LABEL_215;
      case 0x18u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 168) |= 0x400u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v98 & 0x7F) << v90;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_214;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v92;
        }

LABEL_214:
        v96 = 104;
        goto LABEL_215;
      case 0x19u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 168) |= 0x800u;
        while (1)
        {
          LOBYTE(v98) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v98 & 0x7F) << v34;
          if ((v98 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_174;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v36;
        }

LABEL_174:
        v96 = 108;
LABEL_215:
        *(a1 + v96) = v20;
        goto LABEL_216;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_216;
    }
  }
}

void sub_1C85259D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8526594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C8526808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8526DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8527004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852734C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C85276C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C85279C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8527CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8528278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C8528500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8528968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C8528CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C8529220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C8529598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C8529A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C8529D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C852A0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C852A7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C852A9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852ABAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C852AF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C852B290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C852B6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_1C852BA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C852BDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_1C852C194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_1C852C3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852C7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852CAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852CD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852CEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852D0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852D3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_1C852D620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852D8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852DAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852DCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852DE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852E0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852E284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852E458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852E8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852EE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C852F410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C852FA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C852FEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t WiFiAnalyticsAWDWiFiDPSNANSnapshotReadFrom(uint64_t a1, void *a2)
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

uint64_t WiFiAnalyticsAWDWiFiRxDataStallStatsReadFrom(uint64_t a1, void *a2)
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
        v89 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v89 & 0x7F) << v5;
        if ((v89 & 0x80) == 0)
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
          *(a1 + 120) |= 1u;
          while (1)
          {
            v103 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v103 & 0x7F) << v13;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v19 = v14++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__healthcheckFaults;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__healthcheckFaults;
          goto LABEL_160;
        case 2u:
          v57 = 0;
          v58 = 0;
          v15 = 0;
          *(a1 + 120) |= 2u;
          while (1)
          {
            v102 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v102 & 0x7F) << v57;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v19 = v58++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__healthcheckFaultsRtscts;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__healthcheckFaultsRtscts;
          goto LABEL_160;
        case 3u:
          v42 = 0;
          v43 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x1000u;
          while (1)
          {
            v101 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v101 & 0x7F) << v42;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v19 = v43++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__txCtsNoUcast;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__txCtsNoUcast;
          goto LABEL_160;
        case 4u:
          v47 = 0;
          v48 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x2000u;
          while (1)
          {
            v100 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v100 & 0x7F) << v47;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v19 = v48++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__txCtsRxUcast;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__txCtsRxUcast;
          goto LABEL_160;
        case 5u:
          v27 = 0;
          v28 = 0;
          v15 = 0;
          *(a1 + 120) |= 8u;
          while (1)
          {
            v99 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v27;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v19 = v28++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__rxMuRts;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__rxMuRts;
          goto LABEL_160;
        case 6u:
          v62 = 0;
          v63 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x10u;
          while (1)
          {
            v98 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v98 & 0x7F) << v62;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v19 = v63++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__rxTotalPpdu;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__rxTotalPpdu;
          goto LABEL_160;
        case 7u:
          v72 = 0;
          v73 = 0;
          v15 = 0;
          *(a1 + 120) |= 4u;
          while (1)
          {
            v97 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v97 & 0x7F) << v72;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v19 = v73++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__rxMuPpdu;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__rxMuPpdu;
          goto LABEL_160;
        case 8u:
          v52 = 0;
          v53 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x400u;
          while (1)
          {
            v96 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v96 & 0x7F) << v52;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v19 = v53++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__stallAge;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__stallAge;
          goto LABEL_160;
        case 9u:
          v82 = 0;
          v83 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x800u;
          while (1)
          {
            v95 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v95 & 0x7F) << v82;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v19 = v83++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__stallElapsedDur;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__stallElapsedDur;
          goto LABEL_160;
        case 0xAu:
          v37 = 0;
          v38 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x80u;
          while (1)
          {
            v94 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v94 & 0x7F) << v37;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v19 = v38++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srStallInProgress;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srStallInProgress;
          goto LABEL_160;
        case 0xBu:
          v77 = 0;
          v78 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x100u;
          while (1)
          {
            v93 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v93 & 0x7F) << v77;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v19 = v78++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srTimNoUcast;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srTimNoUcast;
          goto LABEL_160;
        case 0xCu:
          v22 = 0;
          v23 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x40u;
          while (1)
          {
            v92 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v92 & 0x7F) << v22;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v19 = v23++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srRtsCtsNoUcast;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srRtsCtsNoUcast;
          goto LABEL_160;
        case 0xDu:
          v32 = 0;
          v33 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x20u;
          while (1)
          {
            v91 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v91 & 0x7F) << v32;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v19 = v33++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srMuRtsNoUcast;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srMuRtsNoUcast;
          goto LABEL_160;
        case 0xEu:
          v67 = 0;
          v68 = 0;
          v15 = 0;
          *(a1 + 120) |= 0x200u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_164;
          }

          return 0;
      }

      while (1)
      {
        v90 = 0;
        v69 = [a2 position] + 1;
        if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
        {
          v71 = [a2 data];
          [v71 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v90 & 0x7F) << v67;
        if ((v90 & 0x80) == 0)
        {
          break;
        }

        v67 += 7;
        v19 = v68++ > 8;
        if (v19)
        {
          v20 = 0;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srTxBlanking;
          goto LABEL_163;
        }
      }

      v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiRxDataStallStats__srTxBlanking;
LABEL_160:
      v20 = [a2 hasError] ? 0 : v15;
LABEL_163:
      *(a1 + *v21) = v20;
LABEL_164:
      v87 = [a2 position];
    }

    while (v87 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiDPSSnapshotReadFrom(id *a1, void *a2)
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
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSAWDLSnapshot);
            objc_storeStrong(a1 + 1, v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiDPSAWDLSnapshotReadFrom(v14, a2))
            {
LABEL_57:

              return 0;
            }

            goto LABEL_51;
          }

          if (v13 == 7)
          {
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiUsageSnapshot);
            v16 = 5;
            goto LABEL_49;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiUsageSnapshot);
              v16 = 6;
LABEL_49:
              objc_storeStrong(&a1[v16], v14);
              v19 = 0;
              v20 = 0;
              if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiUsageSnapshotReadFrom(v14, a2))
              {
                goto LABEL_57;
              }

              goto LABEL_51;
            case 9:
              v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiUsageSnapshot);
              v16 = 3;
              goto LABEL_49;
            case 0xA:
              v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSNANSnapshot);
              objc_storeStrong(a1 + 4, v14);
              v19 = 0;
              v20 = 0;
              if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiDPSNANSnapshotReadFrom(v14, a2))
              {
                goto LABEL_57;
              }

              goto LABEL_51;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot);
          v15 = 7;
          goto LABEL_45;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot);
          v15 = 8;
          goto LABEL_45;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot);
            v15 = 10;
LABEL_45:
            objc_storeStrong(&a1[v15], v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshotReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            goto LABEL_51;
          case 4:
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot);
            v15 = 9;
            goto LABEL_45;
          case 5:
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSBTSnapshot);
            objc_storeStrong(a1 + 2, v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiDPSBTSnapshotReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

LABEL_51:
            PBReaderRecallMark();

            goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C853916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WAXPCRequestDelegateInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4860798];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v1 setWithObjects:{v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_getNewMessageForKey_groupType_withCopy_andReply_ argumentIndex:0 ofReply:1];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v11 setWithObjects:{v12, v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
  [v0 setClasses:v20 forSelector:sel_getNewMessageForKey_groupType_andReply_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v21 setWithObjects:{v22, v23, v24, v25, v26, v27, v28, v29, objc_opt_class(), 0}];
  [v0 setClasses:v30 forSelector:sel_getMessagesModelForGroupType_andReply_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = [v31 setWithObjects:{v32, v33, v34, v35, v36, v37, v38, v39, objc_opt_class(), 0}];
  v41 = v0;
  [v0 setClasses:v40 forSelector:sel_submitMessage_groupType_andReply_ argumentIndex:0 ofReply:0];

  v229 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = [v229 setWithObjects:{v42, v43, v44, v45, v46, v47, v48, v49, objc_opt_class(), 0}];
  v237 = v41;
  [v41 setClasses:v50 forSelector:sel_submitMessage_groupType_andReply_ argumentIndex:0 ofReply:1];

  v230 = MEMORY[0x1E695DFD8];
  v222 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = [v230 setWithObjects:{v222, v51, v52, v53, v54, v55, v56, v57, v58, v59, objc_opt_class(), 0}];
  [v41 setClasses:v60 forSelector:sel_lqmCrashTracerNotifyForInterfaceWithName_andReply_ argumentIndex:0 ofReply:0];

  v231 = MEMORY[0x1E695DFD8];
  v223 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  v65 = objc_opt_class();
  v66 = objc_opt_class();
  v67 = objc_opt_class();
  v68 = objc_opt_class();
  v69 = objc_opt_class();
  v70 = [v231 setWithObjects:{v223, v61, v62, v63, v64, v65, v66, v67, v68, v69, objc_opt_class(), 0}];
  [v237 setClasses:v70 forSelector:sel_lqmCrashTracerNotifyForInterfaceWithName_andReply_ argumentIndex:0 ofReply:1];

  v232 = MEMORY[0x1E695DFD8];
  v224 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = objc_opt_class();
  v73 = objc_opt_class();
  v74 = objc_opt_class();
  v75 = objc_opt_class();
  v76 = objc_opt_class();
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v80 = [v232 setWithObjects:{v224, v71, v72, v73, v74, v75, v76, v77, v78, v79, objc_opt_class(), 0}];
  [v237 setClasses:v80 forSelector:sel_lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply_ argumentIndex:0 ofReply:0];

  v233 = MEMORY[0x1E695DFD8];
  v225 = objc_opt_class();
  v81 = objc_opt_class();
  v82 = objc_opt_class();
  v83 = objc_opt_class();
  v84 = objc_opt_class();
  v85 = objc_opt_class();
  v86 = objc_opt_class();
  v87 = objc_opt_class();
  v88 = objc_opt_class();
  v89 = objc_opt_class();
  v90 = [v233 setWithObjects:{v225, v81, v82, v83, v84, v85, v86, v87, v88, v89, objc_opt_class(), 0}];
  [v237 setClasses:v90 forSelector:sel_lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply_ argumentIndex:0 ofReply:1];

  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = objc_opt_class();
  v94 = objc_opt_class();
  v95 = objc_opt_class();
  v96 = objc_opt_class();
  v97 = objc_opt_class();
  v98 = objc_opt_class();
  v99 = objc_opt_class();
  v100 = [v91 setWithObjects:{v92, v93, v94, v95, v96, v97, v98, v99, objc_opt_class(), 0}];
  [v237 setClasses:v100 forSelector:sel_triggerQueryForNWActivity_andReply_ argumentIndex:0 ofReply:0];

  v101 = MEMORY[0x1E695DFD8];
  v102 = objc_opt_class();
  v103 = objc_opt_class();
  v104 = objc_opt_class();
  v105 = objc_opt_class();
  v106 = objc_opt_class();
  v107 = objc_opt_class();
  v108 = objc_opt_class();
  v109 = objc_opt_class();
  v110 = [v101 setWithObjects:{v102, v103, v104, v105, v106, v107, v108, v109, objc_opt_class(), 0}];
  [v237 setClasses:v110 forSelector:sel_triggerQueryForNWActivity_andReply_ argumentIndex:0 ofReply:1];

  v111 = MEMORY[0x1E695DFD8];
  v112 = objc_opt_class();
  v113 = objc_opt_class();
  v114 = objc_opt_class();
  v115 = objc_opt_class();
  v116 = objc_opt_class();
  v117 = objc_opt_class();
  v118 = objc_opt_class();
  v119 = objc_opt_class();
  v120 = [v111 setWithObjects:{v112, v113, v114, v115, v116, v117, v118, v119, objc_opt_class(), 0}];
  [v237 setClasses:v120 forSelector:sel_triggerQueryForNWActivityWithPeers_andReply_ argumentIndex:0 ofReply:1];

  v121 = MEMORY[0x1E695DFD8];
  v122 = objc_opt_class();
  v123 = objc_opt_class();
  v124 = objc_opt_class();
  v125 = objc_opt_class();
  v126 = objc_opt_class();
  v127 = objc_opt_class();
  v128 = objc_opt_class();
  v129 = objc_opt_class();
  v130 = [v121 setWithObjects:{v122, v123, v124, v125, v126, v127, v128, v129, objc_opt_class(), 0}];
  [v237 setClasses:v130 forSelector:sel_triggerQueryForNWActivityWithPeers_andReply_ argumentIndex:0 ofReply:0];

  v234 = MEMORY[0x1E695DFD8];
  v226 = objc_opt_class();
  v131 = objc_opt_class();
  v132 = objc_opt_class();
  v133 = objc_opt_class();
  v134 = objc_opt_class();
  v135 = objc_opt_class();
  v136 = objc_opt_class();
  v137 = objc_opt_class();
  v138 = objc_opt_class();
  v139 = objc_opt_class();
  v140 = [v234 setWithObjects:{v226, v131, v132, v133, v134, v135, v136, v137, v138, v139, objc_opt_class(), 0}];
  [v237 setClasses:v140 forSelector:sel_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply_ argumentIndex:0 ofReply:1];

  v235 = MEMORY[0x1E695DFD8];
  v227 = objc_opt_class();
  v141 = objc_opt_class();
  v142 = objc_opt_class();
  v143 = objc_opt_class();
  v144 = objc_opt_class();
  v145 = objc_opt_class();
  v146 = objc_opt_class();
  v147 = objc_opt_class();
  v148 = objc_opt_class();
  v149 = objc_opt_class();
  v150 = [v235 setWithObjects:{v227, v141, v142, v143, v144, v145, v146, v147, v148, v149, objc_opt_class(), 0}];
  [v237 setClasses:v150 forSelector:sel_triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply_ argumentIndex:0 ofReply:0];

  v236 = MEMORY[0x1E695DFD8];
  v228 = objc_opt_class();
  v151 = objc_opt_class();
  v152 = objc_opt_class();
  v153 = objc_opt_class();
  v154 = objc_opt_class();
  v155 = objc_opt_class();
  v156 = objc_opt_class();
  v157 = objc_opt_class();
  v158 = objc_opt_class();
  v159 = objc_opt_class();
  v160 = [v236 setWithObjects:{v228, v151, v152, v153, v154, v155, v156, v157, v158, v159, objc_opt_class(), 0}];
  [v237 setClasses:v160 forSelector:sel_triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply_ argumentIndex:0 ofReply:1];

  v161 = MEMORY[0x1E695DFD8];
  v162 = objc_opt_class();
  v163 = objc_opt_class();
  v164 = objc_opt_class();
  v165 = objc_opt_class();
  v166 = objc_opt_class();
  v167 = objc_opt_class();
  v168 = objc_opt_class();
  v169 = objc_opt_class();
  v170 = [v161 setWithObjects:{v162, v163, v164, v165, v166, v167, v168, v169, objc_opt_class(), 0}];
  [v237 setClasses:v170 forSelector:sel_setDeviceAnalyticsConfiguration_andReply_ argumentIndex:0 ofReply:0];

  v171 = MEMORY[0x1E695DFD8];
  v172 = objc_opt_class();
  v173 = objc_opt_class();
  v174 = objc_opt_class();
  v175 = objc_opt_class();
  v176 = objc_opt_class();
  v177 = objc_opt_class();
  v178 = objc_opt_class();
  v179 = objc_opt_class();
  v180 = [v171 setWithObjects:{v172, v173, v174, v175, v176, v177, v178, v179, objc_opt_class(), 0}];
  [v237 setClasses:v180 forSelector:sel_getDeviceAnalyticsConfigurationAndReply_ argumentIndex:0 ofReply:0];

  v181 = MEMORY[0x1E695DFD8];
  v182 = objc_opt_class();
  v183 = objc_opt_class();
  v184 = objc_opt_class();
  v185 = objc_opt_class();
  v186 = objc_opt_class();
  v187 = objc_opt_class();
  v188 = objc_opt_class();
  v189 = objc_opt_class();
  v190 = [v181 setWithObjects:{v182, v183, v184, v185, v186, v187, v188, v189, objc_opt_class(), 0}];
  [v237 setClasses:v190 forSelector:sel_getDpsStatsandReply_ argumentIndex:0 ofReply:0];

  v191 = MEMORY[0x1E695DFD8];
  v192 = objc_opt_class();
  v193 = objc_opt_class();
  v194 = objc_opt_class();
  v195 = objc_opt_class();
  v196 = objc_opt_class();
  v197 = objc_opt_class();
  v198 = objc_opt_class();
  v199 = objc_opt_class();
  v200 = [v191 setWithObjects:{v192, v193, v194, v195, v196, v197, v198, v199, objc_opt_class(), 0}];
  [v237 setClasses:v200 forSelector:sel_getUsageStatsandReply_ argumentIndex:0 ofReply:0];

  v201 = MEMORY[0x1E695DFD8];
  v202 = objc_opt_class();
  v203 = objc_opt_class();
  v204 = objc_opt_class();
  v205 = objc_opt_class();
  v206 = objc_opt_class();
  v207 = objc_opt_class();
  v208 = objc_opt_class();
  v209 = objc_opt_class();
  v210 = [v201 setWithObjects:{v202, v203, v204, v205, v206, v207, v208, v209, objc_opt_class(), 0}];
  [v237 setClasses:v210 forSelector:sel_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply_ argumentIndex:0 ofReply:0];

  v211 = MEMORY[0x1E695DFD8];
  v212 = objc_opt_class();
  v213 = objc_opt_class();
  v214 = objc_opt_class();
  v215 = objc_opt_class();
  v216 = objc_opt_class();
  v217 = objc_opt_class();
  v218 = objc_opt_class();
  v219 = objc_opt_class();
  v220 = [v211 setWithObjects:{v212, v213, v214, v215, v216, v217, v218, v219, objc_opt_class(), 0}];
  [v237 setClasses:v220 forSelector:sel_triggerDeviceAnalyticsStoreMigrationAndReply_ argumentIndex:0 ofReply:0];

  return v237;
}

uint64_t WiFiAnalyticsAWDWADiagnosisActionAssociationDifferencesReadFrom(uint64_t a1, void *a2)
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
        v69 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v69 & 0x7F) << v5;
        if ((v69 & 0x80) == 0)
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
        break;
      }

      if (v13 > 6)
      {
        if (v13 == 7)
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v76 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v76 & 0x7F) << v59;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_111;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v61;
          }

LABEL_111:
          v67 = 20;
        }

        else
        {
          if (v13 != 8)
          {
LABEL_100:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_126;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v77 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v77 & 0x7F) << v34;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_124;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_124:
          v67 = 16;
        }

        *(a1 + v67) = v40;
      }

      else
      {
        if (v13 == 5)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 32) |= 0x40u;
          while (1)
          {
            v70 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v70 & 0x7F) << v47;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_105;
            }
          }

          v20 = (v49 != 0) & ~[a2 hasError];
LABEL_105:
          v66 = 27;
LABEL_120:
          *(a1 + v66) = v20;
          goto LABEL_126;
        }

        if (v13 != 6)
        {
          goto LABEL_100;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v75 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v75 & 0x7F) << v21;
          if ((v75 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_117;
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

LABEL_117:
        *(a1 + 8) = v27;
      }

LABEL_126:
      v68 = [a2 position];
      if (v68 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 32) |= 0x10u;
        while (1)
        {
          v72 = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v72 & 0x7F) << v53;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v11 = v54++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_107;
          }
        }

        v20 = (v55 != 0) & ~[a2 hasError];
LABEL_107:
        v66 = 25;
      }

      else
      {
        if (v13 != 4)
        {
          goto LABEL_100;
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 32) |= 0x20u;
        while (1)
        {
          v71 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v71 & 0x7F) << v28;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_119;
          }
        }

        v20 = (v30 != 0) & ~[a2 hasError];
LABEL_119:
        v66 = 26;
      }
    }

    else if (v13 == 1)
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      *(a1 + 32) |= 0x80u;
      while (1)
      {
        v74 = 0;
        v44 = [a2 position] + 1;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
        {
          v46 = [a2 data];
          [v46 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v43 |= (v74 & 0x7F) << v41;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v41 += 7;
        v11 = v42++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_103;
        }
      }

      v20 = (v43 != 0) & ~[a2 hasError];
LABEL_103:
      v66 = 28;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_100;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 32) |= 8u;
      while (1)
      {
        v73 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v73 & 0x7F) << v14;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_113;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_113:
      v66 = 24;
    }

    goto LABEL_120;
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiUsageSnapshotReadFrom(uint64_t a1, void *a2)
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