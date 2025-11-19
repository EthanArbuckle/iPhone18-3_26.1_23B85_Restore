uint64_t AWDSlowWiFiReportReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        break;
      }

      if (v12 == 2)
      {
        v19 = objc_alloc_init(AWDSlowWiFiNotification);

        *(a1 + 24) = v19;
        v23 = 0;
        v24 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDSlowWiFiNotificationReadFrom(v19, a2);
        if (!result)
        {
          return result;
        }

LABEL_34:
        PBReaderRecallMark();
        goto LABEL_41;
      }

      if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v23) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_40:
        *(a1 + 8) = v18;
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

    v21 = objc_alloc_init(AWDLinkQualityMeasurements);
    [a1 addLinkQualSample:v21];

    v23 = 0;
    v24 = 0;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    result = AWDLinkQualityMeasurementsReadFrom(v21, a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWAAssociatedAPInfoReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      v12 = (v11 >> 3) - 1;
      if (v12 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v13 = off_29EE330F8[v12];
        String = PBReaderReadString();

        *(a1 + *v13) = String;
      }

      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWADiagnosisActionAssociationDifferencesReadFrom(uint64_t a1, void *a2)
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
        v60 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60 & 0x7F) << v5;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        break;
      }

      if (v12 > 6)
      {
        if (v12 == 7)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v67 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v67 & 0x7F) << v51;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              v35 = 0;
              goto LABEL_111;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v53;
          }

LABEL_111:
          v58 = 20;
        }

        else
        {
          if (v12 != 8)
          {
LABEL_100:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_126;
          }

          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v68 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v68 & 0x7F) << v30;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v10 = v31++ >= 9;
            if (v10)
            {
              v35 = 0;
              goto LABEL_124;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v32;
          }

LABEL_124:
          v58 = 16;
        }

        *(a1 + v58) = v35;
      }

      else
      {
        if (v12 == 5)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 32) |= 0x40u;
          while (1)
          {
            v61 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v61 & 0x7F) << v41;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              LOBYTE(v18) = 0;
              goto LABEL_105;
            }
          }

          v18 = (v43 != 0) & ~[a2 hasError];
LABEL_105:
          v57 = 27;
LABEL_120:
          *(a1 + v57) = v18;
          goto LABEL_126;
        }

        if (v12 != 6)
        {
          goto LABEL_100;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v66 = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v66 & 0x7F) << v19;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_117;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v21;
        }

LABEL_117:
        *(a1 + 8) = v24;
      }

LABEL_126:
      v59 = [a2 position];
      if (v59 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 32) |= 0x10u;
        while (1)
        {
          v63 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v63 & 0x7F) << v46;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v10 = v47++ >= 9;
          if (v10)
          {
            LOBYTE(v18) = 0;
            goto LABEL_107;
          }
        }

        v18 = (v48 != 0) & ~[a2 hasError];
LABEL_107:
        v57 = 25;
      }

      else
      {
        if (v12 != 4)
        {
          goto LABEL_100;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 32) |= 0x20u;
        while (1)
        {
          v62 = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v62 & 0x7F) << v25;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            LOBYTE(v18) = 0;
            goto LABEL_119;
          }
        }

        v18 = (v27 != 0) & ~[a2 hasError];
LABEL_119:
        v57 = 26;
      }
    }

    else if (v12 == 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 32) |= 0x80u;
      while (1)
      {
        v65 = 0;
        v39 = [a2 position] + 1;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v38 |= (v65 & 0x7F) << v36;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v10 = v37++ >= 9;
        if (v10)
        {
          LOBYTE(v18) = 0;
          goto LABEL_103;
        }
      }

      v18 = (v38 != 0) & ~[a2 hasError];
LABEL_103:
      v57 = 28;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_100;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 32) |= 8u;
      while (1)
      {
        v64 = 0;
        v16 = [a2 position] + 1;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v64 & 0x7F) << v13;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v10 = v14++ >= 9;
        if (v10)
        {
          LOBYTE(v18) = 0;
          goto LABEL_113;
        }
      }

      v18 = (v15 != 0) & ~[a2 hasError];
LABEL_113:
      v57 = 24;
    }

    goto LABEL_120;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWAPeerDiscoveryInfoReadFrom(uint64_t a1, void *a2)
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
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          v29 = 0;
          v30 = 0;
          v15 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v37 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v37 & 0x7F) << v29;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v18 = v30++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWAPeerDiscoveryInfo__tvOSPeers;
              goto LABEL_67;
            }
          }

          v20 = &OBJC_IVAR___AWDWAPeerDiscoveryInfo__tvOSPeers;
          goto LABEL_64;
        }

        if (v12 == 4)
        {
          v21 = 0;
          v22 = 0;
          v15 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v36 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v36 & 0x7F) << v21;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v18 = v22++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWAPeerDiscoveryInfo__macOSPeers;
              goto LABEL_67;
            }
          }

          v20 = &OBJC_IVAR___AWDWAPeerDiscoveryInfo__macOSPeers;
LABEL_64:
          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

LABEL_67:
          *(a1 + *v20) = v19;
          goto LABEL_68;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v39 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v39 & 0x7F) << v25;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v18 = v26++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWAPeerDiscoveryInfo__numPeersDiscovered;
              goto LABEL_67;
            }
          }

          v20 = &OBJC_IVAR___AWDWAPeerDiscoveryInfo__numPeersDiscovered;
          goto LABEL_64;
        }

        if (v12 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v38 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v38 & 0x7F) << v13;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v18 = v14++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWAPeerDiscoveryInfo__iOSPeers;
              goto LABEL_67;
            }
          }

          v20 = &OBJC_IVAR___AWDWAPeerDiscoveryInfo__iOSPeers;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWAQuickDpsStatsReadFrom(uint64_t a1, void *a2)
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
        v84 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v84 & 0x7F) << v5;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 52) |= 0x800u;
          while (1)
          {
            v88 = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v88 & 0x7F) << v12;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              LOBYTE(v17) = 0;
LABEL_164:
              v82 = 50;
              goto LABEL_177;
            }
          }

          v17 = (v14 != 0) & ~[a2 hasError];
          goto LABEL_164;
        case 2u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 52) |= 0x400u;
          while (1)
          {
            v87 = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v87 & 0x7F) << v55;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v10 = v56++ >= 9;
            if (v10)
            {
              LOBYTE(v17) = 0;
              goto LABEL_166;
            }
          }

          v17 = (v57 != 0) & ~[a2 hasError];
LABEL_166:
          v82 = 49;
          goto LABEL_177;
        case 3u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 52) |= 0x1000u;
          while (1)
          {
            v86 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v86 & 0x7F) << v40;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v10 = v41++ >= 9;
            if (v10)
            {
              LOBYTE(v17) = 0;
              goto LABEL_154;
            }
          }

          v17 = (v42 != 0) & ~[a2 hasError];
LABEL_154:
          v82 = 51;
          goto LABEL_177;
        case 4u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 52) |= 0x80u;
          while (1)
          {
            v95 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v95 & 0x7F) << v45;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v10 = v46++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v47;
          }

LABEL_158:
          v81 = 40;
          goto LABEL_182;
        case 5u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            v94 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v94 & 0x7F) << v24;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_144;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v26;
          }

LABEL_144:
          v81 = 24;
          goto LABEL_182;
        case 6u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            v93 = 0;
            v63 = [a2 position] + 1;
            if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v62 |= (v93 & 0x7F) << v60;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v10 = v61++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_170;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v62;
          }

LABEL_170:
          v81 = 20;
          goto LABEL_182;
        case 7u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 52) |= 0x10u;
          while (1)
          {
            v92 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v92 & 0x7F) << v66;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_174;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v68;
          }

LABEL_174:
          v81 = 28;
          goto LABEL_182;
        case 8u:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 52) |= 0x40u;
          while (1)
          {
            v91 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v91 & 0x7F) << v50;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v10 = v51++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_162;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v52;
          }

LABEL_162:
          v81 = 36;
          goto LABEL_182;
        case 9u:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 52) |= 0x20u;
          while (1)
          {
            v90 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v90 & 0x7F) << v76;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v10 = v77++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_181;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v78;
          }

LABEL_181:
          v81 = 32;
          goto LABEL_182;
        case 0xAu:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 52) |= 0x100u;
          while (1)
          {
            v96 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v96 & 0x7F) << v35;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v10 = v36++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_152;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v37;
          }

LABEL_152:
          v81 = 44;
          goto LABEL_182;
        case 0xBu:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 52) |= 0x200u;
          while (1)
          {
            v85 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v85 & 0x7F) << v71;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v10 = v72++ >= 9;
            if (v10)
            {
              LOBYTE(v17) = 0;
              goto LABEL_176;
            }
          }

          v17 = (v73 != 0) & ~[a2 hasError];
LABEL_176:
          v82 = 48;
LABEL_177:
          *(a1 + v82) = v17;
          goto LABEL_183;
        case 0xCu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            v89 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v89 & 0x7F) << v18;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_140;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

LABEL_140:
          v81 = 16;
LABEL_182:
          *(a1 + v81) = v23;
          goto LABEL_183;
        case 0xDu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
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
        v97 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v97 & 0x7F) << v29;
        if ((v97 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v10 = v30++ >= 9;
        if (v10)
        {
          v34 = 0;
          goto LABEL_148;
        }
      }

      v34 = [a2 hasError] ? 0 : v31;
LABEL_148:
      *(a1 + 8) = v34;
LABEL_183:
      v83 = [a2 position];
    }

    while (v83 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWASymptomsDnsStatsReadFrom(uint64_t a1, void *a2)
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
      v159 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v159 & 0x7F) << v6;
      if ((v159 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v11 = v7++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = [a2 hasError] ? 0 : v8;
LABEL_16:
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
        *(a1 + 112) |= 0x100000u;
        while (1)
        {
          v159 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v159 & 0x7F) << v13;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_322:
            v158 = 92;
            goto LABEL_373;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

        goto LABEL_322;
      case 2u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 112) |= 0x400u;
        while (1)
        {
          v159 = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v159 & 0x7F) << v86;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v88;
        }

LABEL_326:
        v158 = 52;
        goto LABEL_373;
      case 3u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 112) |= 0x800u;
        while (1)
        {
          v159 = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v159 & 0x7F) << v66;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v11 = v67++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_306;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v68;
        }

LABEL_306:
        v158 = 56;
        goto LABEL_373;
      case 4u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 112) |= 0x1000u;
        while (1)
        {
          v159 = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v159 & 0x7F) << v76;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v78;
        }

LABEL_314:
        v158 = 60;
        goto LABEL_373;
      case 5u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 112) |= 0x2000u;
        while (1)
        {
          v159 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v159 & 0x7F) << v40;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_288;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v42;
        }

LABEL_288:
        v158 = 64;
        goto LABEL_373;
      case 6u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 112) |= 2u;
        while (1)
        {
          v159 = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v159 & 0x7F) << v101;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v11 = v102++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_338;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v103;
        }

LABEL_338:
        v158 = 16;
        goto LABEL_373;
      case 7u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 112) |= 0x80u;
        while (1)
        {
          v159 = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v159 & 0x7F) << v116;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v11 = v117++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_348;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v118;
        }

LABEL_348:
        v158 = 40;
        goto LABEL_373;
      case 8u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 112) |= 0x8000u;
        while (1)
        {
          v159 = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (v159 & 0x7F) << v81;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v11 = v82++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_318;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v83;
        }

LABEL_318:
        v158 = 72;
        goto LABEL_373;
      case 9u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 112) |= 8u;
        while (1)
        {
          v159 = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v159 & 0x7F) << v131;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v11 = v132++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_360;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v133;
        }

LABEL_360:
        v158 = 24;
        goto LABEL_373;
      case 0xAu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 112) |= 0x200u;
        while (1)
        {
          v159 = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v159 & 0x7F) << v50;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_296;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v52;
        }

LABEL_296:
        v158 = 48;
        goto LABEL_373;
      case 0xBu:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 112) |= 0x20000u;
        while (1)
        {
          v159 = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v159 & 0x7F) << v126;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v11 = v127++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_356;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v128;
        }

LABEL_356:
        v158 = 80;
        goto LABEL_373;
      case 0xCu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 112) |= 0x20u;
        while (1)
        {
          v159 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v159 & 0x7F) << v35;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_284;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v37;
        }

LABEL_284:
        v158 = 32;
        goto LABEL_373;
      case 0xDu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 112) |= 0x400000u;
        while (1)
        {
          v159 = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v159 & 0x7F) << v45;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_292;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v47;
        }

LABEL_292:
        v158 = 100;
        goto LABEL_373;
      case 0xEu:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 112) |= 0x1000000u;
        while (1)
        {
          v159 = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v159 & 0x7F) << v111;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_344;
          }
        }

        v24 = (v113 != 0) & ~[a2 hasError];
LABEL_344:
        v157 = 105;
        goto LABEL_377;
      case 0xFu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 112) |= 0x8000000u;
        while (1)
        {
          v159 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v159 & 0x7F) << v30;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_280;
          }
        }

        v24 = (v32 != 0) & ~[a2 hasError];
LABEL_280:
        v157 = 108;
        goto LABEL_377;
      case 0x10u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 112) |= 0x80000u;
        while (1)
        {
          v159 = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v159 & 0x7F) << v71;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v11 = v72++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_310;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v73;
        }

LABEL_310:
        v158 = 88;
        goto LABEL_373;
      case 0x11u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 112) |= 0x40000u;
        while (1)
        {
          v159 = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v159 & 0x7F) << v25;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_278;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v27;
        }

LABEL_278:
        v158 = 84;
        goto LABEL_373;
      case 0x12u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 112) |= 0x40u;
        while (1)
        {
          v159 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v159 & 0x7F) << v91;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_330;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v93;
        }

LABEL_330:
        v158 = 36;
        goto LABEL_373;
      case 0x13u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 112) |= 0x4000u;
        while (1)
        {
          v159 = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v159 & 0x7F) << v121;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v11 = v122++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_352;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v123;
        }

LABEL_352:
        v158 = 68;
        goto LABEL_373;
      case 0x14u:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        *(a1 + 112) |= 4u;
        while (1)
        {
          v159 = 0;
          v144 = [a2 position] + 1;
          if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v143 |= (v159 & 0x7F) << v141;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v11 = v142++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_368;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v143;
        }

LABEL_368:
        v158 = 20;
        goto LABEL_373;
      case 0x15u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 112) |= 0x100u;
        while (1)
        {
          v159 = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v159 & 0x7F) << v96;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v11 = v97++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_334;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v98;
        }

LABEL_334:
        v158 = 44;
        goto LABEL_373;
      case 0x16u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 112) |= 0x10000u;
        while (1)
        {
          v159 = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v159 & 0x7F) << v106;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v11 = v107++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_342;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v108;
        }

LABEL_342:
        v158 = 76;
        goto LABEL_373;
      case 0x17u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 112) |= 0x10u;
        while (1)
        {
          v159 = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v159 & 0x7F) << v136;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v11 = v137++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_364;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v138;
        }

LABEL_364:
        v158 = 28;
        goto LABEL_373;
      case 0x18u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 112) |= 0x200000u;
        while (1)
        {
          v159 = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v159 & 0x7F) << v146;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v11 = v147++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_372;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v148;
        }

LABEL_372:
        v158 = 96;
LABEL_373:
        *(a1 + v158) = v18;
        continue;
      case 0x19u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 112) |= 1u;
        while (1)
        {
          v159 = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v159 & 0x7F) << v60;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v65 = 0;
            goto LABEL_302;
          }
        }

        if ([a2 hasError])
        {
          v65 = 0;
        }

        else
        {
          v65 = v62;
        }

LABEL_302:
        *(a1 + 8) = v65;
        continue;
      case 0x1Au:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 112) |= 0x800000u;
        while (1)
        {
          v159 = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v159 & 0x7F) << v55;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_298;
          }
        }

        v24 = (v57 != 0) & ~[a2 hasError];
LABEL_298:
        v157 = 104;
        goto LABEL_377;
      case 0x1Bu:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 112) |= 0x4000000u;
        while (1)
        {
          v159 = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v159 & 0x7F) << v152;
          if ((v159 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v11 = v153++ >= 9;
          if (v11)
          {
            LOBYTE(v24) = 0;
            goto LABEL_376;
          }
        }

        v24 = (v154 != 0) & ~[a2 hasError];
LABEL_376:
        v157 = 107;
        goto LABEL_377;
      case 0x1Cu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
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
      v159 = 0;
      v22 = [a2 position] + 1;
      if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v21 |= (v159 & 0x7F) << v19;
      if ((v159 & 0x80) == 0)
      {
        break;
      }

      v19 += 7;
      v11 = v20++ >= 9;
      if (v11)
      {
        LOBYTE(v24) = 0;
        goto LABEL_274;
      }
    }

    v24 = (v21 != 0) & ~[a2 hasError];
LABEL_274:
    v157 = 106;
LABEL_377:
    *(a1 + v157) = v24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWPA2CountersReadFrom(uint64_t a1, void *a2)
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
        v67 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v67 & 0x7F) << v5;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 6)
      {
        if (v12 > 9)
        {
          switch(v12)
          {
            case 0xA:
              v45 = 0;
              v46 = 0;
              v15 = 0;
              *(a1 + 104) |= 8u;
              while (1)
              {
                v70 = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v70 & 0x7F) << v45;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v18 = v46++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWPA2Counters__decsuccess;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWPA2Counters__decsuccess;
              goto LABEL_154;
            case 0xB:
              v61 = 0;
              v62 = 0;
              v15 = 0;
              *(a1 + 104) |= 0x40u;
              while (1)
              {
                v69 = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v69 & 0x7F) << v61;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                v18 = v62++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWPA2Counters__tkipicverr;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWPA2Counters__tkipicverr;
LABEL_154:
              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v15;
              }

LABEL_157:
              *(a1 + *v20) = v19;
              goto LABEL_158;
            case 0xC:
              v29 = 0;
              v30 = 0;
              v15 = 0;
              *(a1 + 104) |= 0x200u;
              while (1)
              {
                v68 = 0;
                v31 = [a2 position] + 1;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v68 & 0x7F) << v29;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v18 = v30++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWPA2Counters__wepexcluded;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWPA2Counters__wepexcluded;
              goto LABEL_154;
          }
        }

        else
        {
          switch(v12)
          {
            case 7:
              v37 = 0;
              v38 = 0;
              v15 = 0;
              *(a1 + 104) |= 0x10u;
              while (1)
              {
                v73 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v73 & 0x7F) << v37;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v18 = v38++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWPA2Counters__fourwayfail;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWPA2Counters__fourwayfail;
              goto LABEL_154;
            case 8:
              v53 = 0;
              v54 = 0;
              v15 = 0;
              *(a1 + 104) |= 0x800u;
              while (1)
              {
                v72 = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v72 & 0x7F) << v53;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v18 = v54++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWPA2Counters__wepundec;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWPA2Counters__wepundec;
              goto LABEL_154;
            case 9:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 104) |= 0x400u;
              while (1)
              {
                v71 = 0;
                v23 = [a2 position] + 1;
                if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v71 & 0x7F) << v21;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v18 = v22++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWPA2Counters__wepicverr;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWPA2Counters__wepicverr;
              goto LABEL_154;
          }
        }
      }

      else if (v12 > 3)
      {
        switch(v12)
        {
          case 4:
            v41 = 0;
            v42 = 0;
            v15 = 0;
            *(a1 + 104) |= 1u;
            while (1)
            {
              v76 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v76 & 0x7F) << v41;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v18 = v42++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWPA2Counters__ccmpfmterr;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWPA2Counters__ccmpfmterr;
            goto LABEL_154;
          case 5:
            v57 = 0;
            v58 = 0;
            v15 = 0;
            *(a1 + 104) |= 2u;
            while (1)
            {
              v75 = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v75 & 0x7F) << v57;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v18 = v58++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWPA2Counters__ccmpreplay;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWPA2Counters__ccmpreplay;
            goto LABEL_154;
          case 6:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 104) |= 4u;
            while (1)
            {
              v74 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v74 & 0x7F) << v25;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v18 = v26++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWPA2Counters__ccmpundec;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWPA2Counters__ccmpundec;
            goto LABEL_154;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v15 = 0;
            *(a1 + 104) |= 0x80u;
            while (1)
            {
              v79 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v79 & 0x7F) << v33;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v18 = v34++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWPA2Counters__tkipmicfaill;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWPA2Counters__tkipmicfaill;
            goto LABEL_154;
          case 2:
            v49 = 0;
            v50 = 0;
            v15 = 0;
            *(a1 + 104) |= 0x20u;
            while (1)
            {
              v78 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v78 & 0x7F) << v49;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v18 = v50++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWPA2Counters__tkipcntrmsr;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWPA2Counters__tkipcntrmsr;
            goto LABEL_154;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 104) |= 0x100u;
            while (1)
            {
              v77 = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v77 & 0x7F) << v13;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWPA2Counters__tkipreplay;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWPA2Counters__tkipreplay;
            goto LABEL_154;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_158:
      v65 = [a2 position];
    }

    while (v65 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiActionFrameEventReadFrom(uint64_t a1, void *a2)
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
        v93 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v93 & 0x7F) << v5;
        if ((v93 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            v93 = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v93 & 0x7F) << v12;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_195:
              *(a1 + 8) = v17;
              goto LABEL_217;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          goto LABEL_195;
        case 2u:
          Data = PBReaderReadData();

          *(a1 + 72) = Data;
          goto LABEL_217;
        case 3u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 84) |= 0x1000u;
          while (1)
          {
            v93 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v93 & 0x7F) << v44;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v46;
          }

LABEL_179:
          v91 = 60;
          goto LABEL_216;
        case 4u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 84) |= 0x400u;
          while (1)
          {
            v93 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v93 & 0x7F) << v54;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_187;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v56;
          }

LABEL_187:
          v91 = 52;
          goto LABEL_216;
        case 5u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 84) |= 2u;
          while (1)
          {
            v93 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v93 & 0x7F) << v29;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_167;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v31;
          }

LABEL_167:
          v91 = 16;
          goto LABEL_216;
        case 6u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 84) |= 0x800u;
          while (1)
          {
            v93 = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v93 & 0x7F) << v65;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v10 = v66++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v67;
          }

LABEL_199:
          v91 = 56;
          goto LABEL_216;
        case 7u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 84) |= 0x4000u;
          while (1)
          {
            v93 = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v77 |= (v93 & 0x7F) << v75;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v10 = v76++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_207;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v77;
          }

LABEL_207:
          v91 = 80;
          goto LABEL_216;
        case 8u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 84) |= 0x2000u;
          while (1)
          {
            v93 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v93 & 0x7F) << v59;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v10 = v60++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_191;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v61;
          }

LABEL_191:
          v91 = 64;
          goto LABEL_216;
        case 9u:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 84) |= 0x20u;
          while (1)
          {
            v93 = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v93 & 0x7F) << v85;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v10 = v86++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_215;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v87;
          }

LABEL_215:
          v91 = 32;
          goto LABEL_216;
        case 0xAu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 84) |= 0x200u;
          while (1)
          {
            v93 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v93 & 0x7F) << v39;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_175;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v41;
          }

LABEL_175:
          v91 = 48;
          goto LABEL_216;
        case 0xBu:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 84) |= 0x100u;
          while (1)
          {
            v93 = 0;
            v83 = [a2 position] + 1;
            if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v82 |= (v93 & 0x7F) << v80;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v10 = v81++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_211;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v82;
          }

LABEL_211:
          v91 = 44;
          goto LABEL_216;
        case 0xCu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 84) |= 0x80u;
          while (1)
          {
            v93 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v93 & 0x7F) << v24;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_163;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v26;
          }

LABEL_163:
          v91 = 40;
          goto LABEL_216;
        case 0xDu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 84) |= 4u;
          while (1)
          {
            v93 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v93 & 0x7F) << v34;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_171;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v36;
          }

LABEL_171:
          v91 = 20;
          goto LABEL_216;
        case 0xEu:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v93 = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v93 & 0x7F) << v70;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v10 = v71++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_203;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v72;
          }

LABEL_203:
          v91 = 28;
          goto LABEL_216;
        case 0xFu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            v93 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v93 & 0x7F) << v18;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_159;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

LABEL_159:
          v91 = 24;
          goto LABEL_216;
        case 0x10u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 84) |= 0x40u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_217;
      }

      while (1)
      {
        v93 = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v93 & 0x7F) << v49;
        if ((v93 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v10 = v50++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_183;
        }
      }

      v23 = [a2 hasError] ? 0 : v51;
LABEL_183:
      v91 = 36;
LABEL_216:
      *(a1 + v91) = v23;
LABEL_217:
      v92 = [a2 position];
    }

    while (v92 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiAwdlSidecarReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v78) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v78 & 0x7F) << v5;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 6)
      {
        if (v12 > 9)
        {
          switch(v12)
          {
            case 0xA:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              *(a1 + 100) |= 0x10u;
              while (1)
              {
                LOBYTE(v78) = 0;
                v52 = [a2 position] + 1;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v51 |= (v78 & 0x7F) << v49;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v10 = v50++ >= 9;
                if (v10)
                {
                  v26 = 0;
                  goto LABEL_157;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v51;
              }

LABEL_157:
              v71 = 60;
              goto LABEL_171;
            case 0xB:
              v65 = 0;
              v66 = 0;
              v67 = 0;
              *(a1 + 100) |= 0x20u;
              while (1)
              {
                LOBYTE(v78) = 0;
                v68 = [a2 position] + 1;
                if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v67 |= (v78 & 0x7F) << v65;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v10 = v66++ >= 9;
                if (v10)
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
                v26 = v67;
              }

LABEL_170:
              v71 = 64;
              goto LABEL_171;
            case 0xC:
              if ((v11 & 7) != 2)
              {
                v73 = 0;
                v74 = 0;
                v75 = 0;
                while (1)
                {
                  LOBYTE(v78) = 0;
                  v76 = [a2 position] + 1;
                  if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v75 |= (v78 & 0x7F) << v73;
                  if ((v78 & 0x80) == 0)
                  {
                    break;
                  }

                  v73 += 7;
                  v10 = v74++ >= 9;
                  if (v10)
                  {
                    goto LABEL_184;
                  }
                }

                [a2 hasError];
LABEL_184:
                PBRepeatedUInt32Add();
                goto LABEL_172;
              }

              v78 = 0;
              v79 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v27 = [a2 position];
                if (v27 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  goto LABEL_115;
                }

                v28 = 0;
                v29 = 0;
                v30 = 0;
                while (1)
                {
                  v80 = 0;
                  v31 = [a2 position] + 1;
                  if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v30 |= (v80 & 0x7F) << v28;
                  if ((v80 & 0x80) == 0)
                  {
                    break;
                  }

                  v28 += 7;
                  v10 = v29++ >= 9;
                  if (v10)
                  {
                    goto LABEL_67;
                  }
                }

                [a2 hasError];
LABEL_67:
                PBRepeatedUInt32Add();
              }
          }
        }

        else
        {
          switch(v12)
          {
            case 7:
              v38 = 0;
              v39 = 0;
              v40 = 0;
              *(a1 + 100) |= 0x100u;
              while (1)
              {
                LOBYTE(v78) = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v78 & 0x7F) << v38;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v10 = v39++ >= 9;
                if (v10)
                {
                  LOBYTE(v43) = 0;
                  goto LABEL_149;
                }
              }

              v43 = (v40 != 0) & ~[a2 hasError];
LABEL_149:
              *(a1 + 96) = v43;
              goto LABEL_172;
            case 8:
              v59 = objc_alloc_init(AWDSidecarBssSteering);

              *(a1 + 80) = v59;
              v78 = 0;
              v79 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDSidecarBssSteeringReadFrom(v59, a2);
              if (!result)
              {
                return result;
              }

              goto LABEL_115;
            case 9:
              v19 = objc_alloc_init(AWDSidecarPeerTraffic);

              *(a1 + 88) = v19;
              v78 = 0;
              v79 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDSidecarPeerTrafficReadFrom(v19, a2);
              if (!result)
              {
                return result;
              }

LABEL_115:
              PBReaderRecallMark();
              goto LABEL_172;
          }
        }
      }

      else if (v12 > 3)
      {
        switch(v12)
        {
          case 4:
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 100) |= 8u;
            while (1)
            {
              LOBYTE(v78) = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v78 & 0x7F) << v44;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v10 = v45++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_153;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v46;
            }

LABEL_153:
            v71 = 56;
            goto LABEL_171;
          case 5:
            v60 = 0;
            v61 = 0;
            v62 = 0;
            *(a1 + 100) |= 0x40u;
            while (1)
            {
              LOBYTE(v78) = 0;
              v63 = [a2 position] + 1;
              if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v62 |= (v78 & 0x7F) << v60;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v10 = v61++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_166;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v62;
            }

LABEL_166:
            v71 = 68;
            goto LABEL_171;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 100) |= 0x80u;
            while (1)
            {
              LOBYTE(v78) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v78 & 0x7F) << v21;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_143;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v23;
            }

LABEL_143:
            v71 = 72;
LABEL_171:
            *(a1 + v71) = v26;
            goto LABEL_172;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 100) |= 4u;
            while (1)
            {
              LOBYTE(v78) = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
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
              v10 = v34++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_147;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v35;
            }

LABEL_147:
            v70 = 48;
            goto LABEL_162;
          case 2:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 100) |= 2u;
            while (1)
            {
              LOBYTE(v78) = 0;
              v57 = [a2 position] + 1;
              if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v56 |= (v78 & 0x7F) << v54;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v10 = v55++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_161;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v56;
            }

LABEL_161:
            v70 = 40;
            goto LABEL_162;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 100) |= 1u;
            while (1)
            {
              LOBYTE(v78) = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v78 & 0x7F) << v13;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_139;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_139:
            v70 = 32;
LABEL_162:
            *(a1 + v70) = v18;
            goto LABEL_172;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_172:
      v72 = [a2 position];
    }

    while (v72 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiAwdlSidecarCoalescedReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v100) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v100 & 0x7F) << v5;
        if ((v100 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 132) |= 0x10u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v100 & 0x7F) << v12;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_195:
              v98 = 40;
              goto LABEL_224;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          goto LABEL_195;
        case 2u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 132) |= 8u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v63 = [a2 position] + 1;
            if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v62 |= (v100 & 0x7F) << v60;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v10 = v61++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v62;
          }

LABEL_199:
          v98 = 32;
          goto LABEL_224;
        case 3u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 132) |= 4u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v100 & 0x7F) << v44;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_183;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v46;
          }

LABEL_183:
          v98 = 24;
          goto LABEL_224;
        case 4u:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 132) |= 0x400u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v100 & 0x7F) << v50;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v10 = v51++ >= 9;
            if (v10)
            {
              v27 = 0;
              goto LABEL_187;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v52;
          }

LABEL_187:
          v96 = 88;
          goto LABEL_219;
        case 5u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 132) |= 0x800u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v100 & 0x7F) << v28;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v27 = 0;
              goto LABEL_173;
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

LABEL_173:
          v96 = 92;
          goto LABEL_219;
        case 6u:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 132) |= 0x1000u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v100 & 0x7F) << v70;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v10 = v71++ >= 9;
            if (v10)
            {
              v27 = 0;
              goto LABEL_207;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v72;
          }

LABEL_207:
          v96 = 96;
          goto LABEL_219;
        case 7u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 132) |= 0x4000u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v77 |= (v100 & 0x7F) << v75;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v10 = v76++ >= 9;
            if (v10)
            {
              LOBYTE(v38) = 0;
              goto LABEL_209;
            }
          }

          v38 = (v77 != 0) & ~[a2 hasError];
LABEL_209:
          v97 = 129;
          goto LABEL_210;
        case 8u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 132) |= 2u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v100 & 0x7F) << v55;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v10 = v56++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_191;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v57;
          }

LABEL_191:
          v98 = 16;
          goto LABEL_224;
        case 9u:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 132) |= 1u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v93 = [a2 position] + 1;
            if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v92 |= (v100 & 0x7F) << v90;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v10 = v91++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_223;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v92;
          }

LABEL_223:
          v98 = 8;
LABEL_224:
          *(a1 + v98) = v17;
          goto LABEL_225;
        case 0xAu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 132) |= 0x80u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v100 & 0x7F) << v39;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v27 = 0;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v41;
          }

LABEL_179:
          v96 = 56;
          goto LABEL_219;
        case 0xBu:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 132) |= 0x100u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v100 & 0x7F) << v85;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v10 = v86++ >= 9;
            if (v10)
            {
              v27 = 0;
              goto LABEL_218;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v87;
          }

LABEL_218:
          v96 = 60;
          goto LABEL_219;
        case 0xCu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 132) |= 0x200u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v100 & 0x7F) << v22;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v10 = v23++ >= 9;
            if (v10)
            {
              v27 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v24;
          }

LABEL_169:
          v96 = 64;
          goto LABEL_219;
        case 0xDu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 132) |= 0x2000u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v100 & 0x7F) << v33;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              LOBYTE(v38) = 0;
              goto LABEL_175;
            }
          }

          v38 = (v35 != 0) & ~[a2 hasError];
LABEL_175:
          v97 = 128;
LABEL_210:
          *(a1 + v97) = v38;
          goto LABEL_225;
        case 0xEu:
          v20 = objc_alloc_init(AWDSidecarBssSteering);

          v21 = 104;
          goto LABEL_126;
        case 0xFu:
          v20 = objc_alloc_init(AWDSidecarBssSteering);

          v21 = 72;
LABEL_126:
          *(a1 + v21) = v20;
          v100 = 0;
          v101 = 0;
          result = PBReaderPlaceMark();
          if (result)
          {
            result = AWDSidecarBssSteeringReadFrom(v20, a2);
            if (result)
            {
              goto LABEL_128;
            }
          }

          return result;
        case 0x10u:
          v18 = objc_alloc_init(AWDSidecarPeerTraffic);

          v19 = 112;
          goto LABEL_75;
        case 0x11u:
          v18 = objc_alloc_init(AWDSidecarPeerTraffic);

          v19 = 80;
LABEL_75:
          *(a1 + v19) = v18;
          v100 = 0;
          v101 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDSidecarPeerTrafficReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

LABEL_128:
          PBReaderRecallMark();
          goto LABEL_225;
        case 0x12u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 132) |= 0x40u;
          while (1)
          {
            LOBYTE(v100) = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v100 & 0x7F) << v65;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v10 = v66++ >= 9;
            if (v10)
            {
              v27 = 0;
              goto LABEL_203;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v67;
          }

LABEL_203:
          v96 = 52;
          goto LABEL_219;
        case 0x13u:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 132) |= 0x20u;
          break;
        case 0x14u:
          String = PBReaderReadString();

          *(a1 + 120) = String;
          goto LABEL_225;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_225;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v100) = 0;
        v83 = [a2 position] + 1;
        if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v82 |= (v100 & 0x7F) << v80;
        if ((v100 & 0x80) == 0)
        {
          break;
        }

        v80 += 7;
        v10 = v81++ >= 9;
        if (v10)
        {
          v27 = 0;
          goto LABEL_214;
        }
      }

      v27 = [a2 hasError] ? 0 : v82;
LABEL_214:
      v96 = 48;
LABEL_219:
      *(a1 + v96) = v27;
LABEL_225:
      v99 = [a2 position];
    }

    while (v99 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiBlacklistingEventReadFrom(uint64_t a1, void *a2)
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
        v54 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54 & 0x7F) << v5;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 4)
      {
        break;
      }

      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 48) |= 0x10u;
          while (1)
          {
            v61 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v61 & 0x7F) << v41;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v43;
          }

LABEL_105:
          v52 = 28;
        }

        else
        {
          if (v12 != 4)
          {
            goto LABEL_92;
          }

          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 48) |= 0x20u;
          while (1)
          {
            v60 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v60 & 0x7F) << v20;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_117;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v22;
          }

LABEL_117:
          v52 = 40;
        }

LABEL_122:
        *(a1 + v52) = v19;
        goto LABEL_123;
      }

      if (v12 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v55 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v55 & 0x7F) << v30;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            v35 = 0;
            goto LABEL_97;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v32;
        }

LABEL_97:
        *(a1 + 8) = v35;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_92;
        }

        Data = PBReaderReadData();

        *(a1 + 32) = Data;
      }

LABEL_123:
      v53 = [a2 position];
      if (v53 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 6)
    {
      if (v12 == 7)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          v57 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v57 & 0x7F) << v46;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v10 = v47++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_109;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v48;
        }

LABEL_109:
        v52 = 16;
      }

      else
      {
        if (v12 != 8)
        {
LABEL_92:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_123;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 48) |= 0x40u;
        while (1)
        {
          v56 = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v56 & 0x7F) << v25;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_121;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v27;
        }

LABEL_121:
        v52 = 44;
      }
    }

    else if (v12 == 5)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 48) |= 4u;
      while (1)
      {
        v59 = 0;
        v39 = [a2 position] + 1;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v38 |= (v59 & 0x7F) << v36;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v10 = v37++ >= 9;
        if (v10)
        {
          v19 = 0;
          goto LABEL_101;
        }
      }

      if ([a2 hasError])
      {
        v19 = 0;
      }

      else
      {
        v19 = v38;
      }

LABEL_101:
      v52 = 20;
    }

    else
    {
      if (v12 != 6)
      {
        goto LABEL_92;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 48) |= 8u;
      while (1)
      {
        v58 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v58 & 0x7F) << v14;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v10 = v15++ >= 9;
        if (v10)
        {
          v19 = 0;
          goto LABEL_113;
        }
      }

      if ([a2 hasError])
      {
        v19 = 0;
      }

      else
      {
        v19 = v16;
      }

LABEL_113:
      v52 = 24;
    }

    goto LABEL_122;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiCLTMReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v21[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21[0] & 0x7F) << v5;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = objc_alloc_init(AWDWiFiCLTMSliceSpecific);
        [a1 addSliceStats:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiCLTMSliceSpecificReadFrom(v18, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v21[0] & 0x7F) << v12;
          if ((v21[0] & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

LABEL_36:
        *(a1 + 8) = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiCLTMSliceSpecificReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v8 = [a2 position] + 1;
          if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v7 |= (v141 & 0x7F) << v5;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v10 = v6++ >= 9;
          if (v10)
          {
            v11 = 0;
            goto LABEL_15;
          }
        }

        v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
        if (([a2 hasError] & 1) == 0)
        {
          v12 = v11 & 7;
          if (v12 != 4)
          {
            switch((v11 >> 3))
            {
              case 1u:
                v13 = 0;
                v14 = 0;
                v15 = 0;
                *(a1 + 220) |= 1u;
                while (1)
                {
                  LOBYTE(v141) = 0;
                  v16 = [a2 position] + 1;
                  if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v15 |= (v141 & 0x7F) << v13;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v13 += 7;
                  v10 = v14++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
LABEL_230:
                    v104 = 176;
                    goto LABEL_244;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v15;
                }

                goto LABEL_230;
              case 2u:
                v70 = 0;
                v71 = 0;
                v72 = 0;
                *(a1 + 220) |= 0x80u;
                while (1)
                {
                  LOBYTE(v141) = 0;
                  v73 = [a2 position] + 1;
                  if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v72 |= (v141 & 0x7F) << v70;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v70 += 7;
                  v10 = v71++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_234;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v72;
                }

LABEL_234:
                v103 = 212;
                goto LABEL_239;
              case 3u:
                v48 = 0;
                v49 = 0;
                v50 = 0;
                *(a1 + 220) |= 0x100u;
                while (1)
                {
                  LOBYTE(v141) = 0;
                  v51 = [a2 position] + 1;
                  if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v50 |= (v141 & 0x7F) << v48;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v48 += 7;
                  v10 = v49++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_222;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v50;
                }

LABEL_222:
                v103 = 216;
                goto LABEL_239;
              case 4u:
                v59 = 0;
                v60 = 0;
                v61 = 0;
                *(a1 + 220) |= 0x10u;
                while (1)
                {
                  LOBYTE(v141) = 0;
                  v62 = [a2 position] + 1;
                  if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v61 |= (v141 & 0x7F) << v59;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  v10 = v60++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_226;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v61;
                }

LABEL_226:
                v103 = 200;
                goto LABEL_239;
              case 5u:
                v32 = 0;
                v33 = 0;
                v34 = 0;
                *(a1 + 220) |= 0x40u;
                while (1)
                {
                  LOBYTE(v141) = 0;
                  v35 = [a2 position] + 1;
                  if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v34 |= (v141 & 0x7F) << v32;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v32 += 7;
                  v10 = v33++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_214;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v34;
                }

LABEL_214:
                v103 = 208;
                goto LABEL_239;
              case 6u:
                v75 = 0;
                v76 = 0;
                v77 = 0;
                *(a1 + 220) |= 4u;
                while (1)
                {
                  LOBYTE(v141) = 0;
                  v78 = [a2 position] + 1;
                  if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v77 |= (v141 & 0x7F) << v75;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v75 += 7;
                  v10 = v76++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_238;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v77;
                }

LABEL_238:
                v103 = 192;
                goto LABEL_239;
              case 7u:
                if (v12 != 2)
                {
                  v125 = 0;
                  v126 = 0;
                  v127 = 0;
                  while (1)
                  {
                    LOBYTE(v141) = 0;
                    v128 = [a2 position] + 1;
                    if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v127 |= (v141 & 0x7F) << v125;
                    if ((v141 & 0x80) == 0)
                    {
                      goto LABEL_310;
                    }

                    v125 += 7;
                    v10 = v126++ >= 9;
                    if (v10)
                    {
                      goto LABEL_311;
                    }
                  }
                }

                v141 = 0;
                v142 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v85 = [a2 position];
                  if (v85 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_204;
                  }

                  v86 = 0;
                  v87 = 0;
                  v88 = 0;
                  while (1)
                  {
                    v143 = 0;
                    v89 = [a2 position] + 1;
                    if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v88 |= (v143 & 0x7F) << v86;
                    if ((v143 & 0x80) == 0)
                    {
                      break;
                    }

                    v86 += 7;
                    v10 = v87++ >= 9;
                    if (v10)
                    {
                      goto LABEL_173;
                    }
                  }

                  [a2 hasError];
LABEL_173:
                  PBRepeatedUInt32Add();
                }

              case 8u:
                if (v12 != 2)
                {
                  v120 = 0;
                  v121 = 0;
                  v122 = 0;
                  while (1)
                  {
                    LOBYTE(v141) = 0;
                    v123 = [a2 position] + 1;
                    if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v122 |= (v141 & 0x7F) << v120;
                    if ((v141 & 0x80) == 0)
                    {
                      break;
                    }

                    v120 += 7;
                    v10 = v121++ >= 9;
                    if (v10)
                    {
                      goto LABEL_282;
                    }
                  }

LABEL_281:
                  [a2 hasError];
LABEL_282:
                  PBRepeatedInt32Add();
                  goto LABEL_312;
                }

                v141 = 0;
                v142 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v64 = [a2 position];
                  if (v64 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_204;
                  }

                  v65 = 0;
                  v66 = 0;
                  v67 = 0;
                  while (1)
                  {
                    v143 = 0;
                    v68 = [a2 position] + 1;
                    if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v67 |= (v143 & 0x7F) << v65;
                    if ((v143 & 0x80) == 0)
                    {
                      break;
                    }

                    v65 += 7;
                    v10 = v66++ >= 9;
                    if (v10)
                    {
                      goto LABEL_131;
                    }
                  }

                  [a2 hasError];
LABEL_131:
                  PBRepeatedInt32Add();
                }

              case 9u:
                if (v12 == 2)
                {
                  v141 = 0;
                  v142 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v97 = [a2 position];
                    if (v97 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v98 = 0;
                    v99 = 0;
                    v100 = 0;
                    while (1)
                    {
                      v143 = 0;
                      v101 = [a2 position] + 1;
                      if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
                      {
                        [objc_msgSend(a2 "data")];
                        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                      }

                      else
                      {
                        [a2 _setError];
                      }

                      v100 |= (v143 & 0x7F) << v98;
                      if ((v143 & 0x80) == 0)
                      {
                        break;
                      }

                      v98 += 7;
                      v10 = v99++ >= 9;
                      if (v10)
                      {
                        goto LABEL_203;
                      }
                    }

                    [a2 hasError];
LABEL_203:
                    PBRepeatedUInt32Add();
                  }

LABEL_204:
                  PBReaderRecallMark();
                }

                else
                {
                  v135 = 0;
                  v136 = 0;
                  v137 = 0;
                  while (1)
                  {
                    LOBYTE(v141) = 0;
                    v138 = [a2 position] + 1;
                    if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v137 |= (v141 & 0x7F) << v135;
                    if ((v141 & 0x80) == 0)
                    {
                      break;
                    }

                    v135 += 7;
                    v10 = v136++ >= 9;
                    if (v10)
                    {
                      goto LABEL_311;
                    }
                  }

LABEL_310:
                  [a2 hasError];
LABEL_311:
                  PBRepeatedUInt32Add();
                }

LABEL_312:
                v140 = [a2 position];
                if (v140 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              case 0xAu:
                if (v12 != 2)
                {
                  v110 = 0;
                  v111 = 0;
                  v112 = 0;
                  while (1)
                  {
                    LOBYTE(v141) = 0;
                    v113 = [a2 position] + 1;
                    if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v112 |= (v141 & 0x7F) << v110;
                    if ((v141 & 0x80) == 0)
                    {
                      goto LABEL_281;
                    }

                    v110 += 7;
                    v10 = v111++ >= 9;
                    if (v10)
                    {
                      goto LABEL_282;
                    }
                  }
                }

                v141 = 0;
                v142 = 0;
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
                    goto LABEL_204;
                  }

                  v43 = 0;
                  v44 = 0;
                  v45 = 0;
                  while (1)
                  {
                    v143 = 0;
                    v46 = [a2 position] + 1;
                    if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v45 |= (v143 & 0x7F) << v43;
                    if ((v143 & 0x80) == 0)
                    {
                      break;
                    }

                    v43 += 7;
                    v10 = v44++ >= 9;
                    if (v10)
                    {
                      goto LABEL_83;
                    }
                  }

                  [a2 hasError];
LABEL_83:
                  PBRepeatedInt32Add();
                }

              case 0xBu:
                if (v12 != 2)
                {
                  v130 = 0;
                  v131 = 0;
                  v132 = 0;
                  while (1)
                  {
                    LOBYTE(v141) = 0;
                    v133 = [a2 position] + 1;
                    if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v132 |= (v141 & 0x7F) << v130;
                    if ((v141 & 0x80) == 0)
                    {
                      goto LABEL_310;
                    }

                    v130 += 7;
                    v10 = v131++ >= 9;
                    if (v10)
                    {
                      goto LABEL_311;
                    }
                  }
                }

                v141 = 0;
                v142 = 0;
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
                    goto LABEL_204;
                  }

                  v92 = 0;
                  v93 = 0;
                  v94 = 0;
                  while (1)
                  {
                    v143 = 0;
                    v95 = [a2 position] + 1;
                    if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v94 |= (v143 & 0x7F) << v92;
                    if ((v143 & 0x80) == 0)
                    {
                      break;
                    }

                    v92 += 7;
                    v10 = v93++ >= 9;
                    if (v10)
                    {
                      goto LABEL_188;
                    }
                  }

                  [a2 hasError];
LABEL_188:
                  PBRepeatedUInt32Add();
                }

              case 0xCu:
                v26 = 0;
                v27 = 0;
                v28 = 0;
                *(a1 + 220) |= 8u;
                while (1)
                {
                  LOBYTE(v141) = 0;
                  v29 = [a2 position] + 1;
                  if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v28 |= (v141 & 0x7F) << v26;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v26 += 7;
                  v10 = v27++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_210;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v28;
                }

LABEL_210:
                v103 = 196;
                goto LABEL_239;
              case 0xDu:
                v37 = 0;
                v38 = 0;
                v39 = 0;
                *(a1 + 220) |= 0x20u;
                while (1)
                {
                  LOBYTE(v141) = 0;
                  v40 = [a2 position] + 1;
                  if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v39 |= (v141 & 0x7F) << v37;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v37 += 7;
                  v10 = v38++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_218;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v39;
                }

LABEL_218:
                v103 = 204;
LABEL_239:
                *(a1 + v103) = v31;
                goto LABEL_312;
              case 0xEu:
                v80 = 0;
                v81 = 0;
                v82 = 0;
                *(a1 + 220) |= 2u;
                while (1)
                {
                  LOBYTE(v141) = 0;
                  v83 = [a2 position] + 1;
                  if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v82 |= (v141 & 0x7F) << v80;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v80 += 7;
                  v10 = v81++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_243;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v82;
                }

LABEL_243:
                v104 = 184;
LABEL_244:
                *(a1 + v104) = v18;
                goto LABEL_312;
              case 0xFu:
                if (v12 != 2)
                {
                  v105 = 0;
                  v106 = 0;
                  v107 = 0;
                  while (1)
                  {
                    LOBYTE(v141) = 0;
                    v108 = [a2 position] + 1;
                    if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v107 |= (v141 & 0x7F) << v105;
                    if ((v141 & 0x80) == 0)
                    {
                      goto LABEL_310;
                    }

                    v105 += 7;
                    v10 = v106++ >= 9;
                    if (v10)
                    {
                      goto LABEL_311;
                    }
                  }
                }

                v141 = 0;
                v142 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v20 = [a2 position];
                  if (v20 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_204;
                  }

                  v21 = 0;
                  v22 = 0;
                  v23 = 0;
                  while (1)
                  {
                    v143 = 0;
                    v24 = [a2 position] + 1;
                    if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v23 |= (v143 & 0x7F) << v21;
                    if ((v143 & 0x80) == 0)
                    {
                      break;
                    }

                    v21 += 7;
                    v10 = v22++ >= 9;
                    if (v10)
                    {
                      goto LABEL_41;
                    }
                  }

                  [a2 hasError];
LABEL_41:
                  PBRepeatedUInt32Add();
                }

              case 0x10u:
                if (v12 != 2)
                {
                  v115 = 0;
                  v116 = 0;
                  v117 = 0;
                  while (1)
                  {
                    LOBYTE(v141) = 0;
                    v118 = [a2 position] + 1;
                    if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v117 |= (v141 & 0x7F) << v115;
                    if ((v141 & 0x80) == 0)
                    {
                      goto LABEL_310;
                    }

                    v115 += 7;
                    v10 = v116++ >= 9;
                    if (v10)
                    {
                      goto LABEL_311;
                    }
                  }
                }

                v141 = 0;
                v142 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v53 = [a2 position];
                  if (v53 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_204;
                  }

                  v54 = 0;
                  v55 = 0;
                  v56 = 0;
                  while (1)
                  {
                    v143 = 0;
                    v57 = [a2 position] + 1;
                    if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v56 |= (v143 & 0x7F) << v54;
                    if ((v143 & 0x80) == 0)
                    {
                      break;
                    }

                    v54 += 7;
                    v10 = v55++ >= 9;
                    if (v10)
                    {
                      goto LABEL_107;
                    }
                  }

                  [a2 hasError];
LABEL_107:
                  PBRepeatedUInt32Add();
                }

              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_312;
                }

                return 0;
            }
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiConnectionQualityReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v207) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v207 & 0x7F) << v6;
      if ((v207 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v11 = v7++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = [a2 hasError] ? 0 : v8;
LABEL_16:
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
        *(a1 + 284) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v207 & 0x7F) << v13;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_406:
            v202 = 168;
            goto LABEL_469;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

        goto LABEL_406;
      case 2u:
        String = PBReaderReadString();

        *(a1 + 272) = String;
        continue;
      case 3u:
        v88 = PBReaderReadString();
        if (v88)
        {
          [a1 addAdditionalUniqueIDs:v88];
        }

        continue;
      case 4u:
        v94 = PBReaderReadString();
        if (v94)
        {
          [a1 addOtherUniqueIDs:v94];
        }

        continue;
      case 5u:
        *(a1 + 284) |= 0x80uLL;
        v207 = 0;
        v67 = [a2 position] + 8;
        if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 8, v68 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v205 = v207;
        v206 = 64;
        goto LABEL_489;
      case 6u:
        *(a1 + 284) |= 0x100uLL;
        v207 = 0;
        v121 = [a2 position] + 8;
        if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 8, v122 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v205 = v207;
        v206 = 72;
LABEL_489:
        *(a1 + v206) = v205;
        continue;
      case 7u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 284) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v207 & 0x7F) << v133;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v11 = v134++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_434;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v135;
        }

LABEL_434:
        v202 = 104;
        goto LABEL_469;
      case 8u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 284) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v207 & 0x7F) << v95;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_402;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v97;
        }

LABEL_402:
        v202 = 56;
        goto LABEL_469;
      case 9u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 284) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v207 & 0x7F) << v148;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v11 = v149++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_446;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v150;
        }

LABEL_446:
        v202 = 80;
        goto LABEL_469;
      case 0xAu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 284) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v207 & 0x7F) << v79;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v11 = v80++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_394;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v81;
        }

LABEL_394:
        v202 = 88;
        goto LABEL_469;
      case 0xBu:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 284) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v207 & 0x7F) << v143;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v11 = v144++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_442;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v145;
        }

LABEL_442:
        v202 = 96;
        goto LABEL_469;
      case 0xCu:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 284) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v207 & 0x7F) << v62;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_382;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v64;
        }

LABEL_382:
        v202 = 152;
        goto LABEL_469;
      case 0xDu:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 284) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v207 & 0x7F) << v74;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_390;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v76;
        }

LABEL_390:
        v202 = 48;
        goto LABEL_469;
      case 0xEu:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 284) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v207 & 0x7F) << v128;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v11 = v129++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_430;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v130;
        }

LABEL_430:
        v202 = 112;
        goto LABEL_469;
      case 0xFu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 284) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v207 & 0x7F) << v52;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_374;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v54;
        }

LABEL_374:
        v202 = 120;
        goto LABEL_469;
      case 0x10u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 284) |= 2uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v207 & 0x7F) << v89;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v11 = v90++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_398;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v91;
        }

LABEL_398:
        v202 = 16;
        goto LABEL_469;
      case 0x11u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 284) |= 8uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v207 & 0x7F) << v47;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v11 = v48++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_370;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v49;
        }

LABEL_370:
        v202 = 32;
        goto LABEL_469;
      case 0x12u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 284) |= 1uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v207 & 0x7F) << v106;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v11 = v107++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_414;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v108;
        }

LABEL_414:
        v202 = 8;
        goto LABEL_469;
      case 0x13u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        *(a1 + 284) |= 4uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v141 = [a2 position] + 1;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 1, v142 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v140 |= (v207 & 0x7F) << v138;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v11 = v139++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_438;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v140;
        }

LABEL_438:
        v202 = 24;
        goto LABEL_469;
      case 0x14u:
        v174 = 0;
        v175 = 0;
        v176 = 0;
        *(a1 + 284) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v177 = [a2 position] + 1;
          if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v176 |= (v207 & 0x7F) << v174;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v174 += 7;
          v11 = v175++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_464;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v176;
        }

LABEL_464:
        v202 = 128;
        goto LABEL_469;
      case 0x15u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 284) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v207 & 0x7F) << v116;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v11 = v117++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_422;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v118;
        }

LABEL_422:
        v202 = 40;
        goto LABEL_469;
      case 0x16u:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 284) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v126 = [a2 position] + 1;
          if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v125 |= (v207 & 0x7F) << v123;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v11 = v124++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_426;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v125;
        }

LABEL_426:
        v202 = 136;
        goto LABEL_469;
      case 0x17u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 284) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v207 & 0x7F) << v164;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v11 = v165++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_456;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v166;
        }

LABEL_456:
        v202 = 144;
        goto LABEL_469;
      case 0x18u:
        *(a1 + 284) |= 0x200000000uLL;
        LODWORD(v207) = 0;
        v184 = [a2 position] + 4;
        if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 4, v185 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v203 = v207;
        v204 = 244;
        goto LABEL_496;
      case 0x19u:
        *(a1 + 284) |= 0x80000000uLL;
        LODWORD(v207) = 0;
        v86 = [a2 position] + 4;
        if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 4, v87 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v203 = v207;
        v204 = 236;
        goto LABEL_496;
      case 0x1Au:
        *(a1 + 284) |= 0x800000000uLL;
        LODWORD(v207) = 0;
        v84 = [a2 position] + 4;
        if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 4, v85 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v203 = v207;
        v204 = 252;
        goto LABEL_496;
      case 0x1Bu:
        *(a1 + 284) |= 0x400000000uLL;
        LODWORD(v207) = 0;
        v198 = [a2 position] + 4;
        if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 4, v199 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v203 = v207;
        v204 = 248;
        goto LABEL_496;
      case 0x1Cu:
        *(a1 + 284) |= 0x100000000uLL;
        LODWORD(v207) = 0;
        v40 = [a2 position] + 4;
        if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 4, v41 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v203 = v207;
        v204 = 240;
        goto LABEL_496;
      case 0x1Du:
        *(a1 + 284) |= 0x1000000000uLL;
        LODWORD(v207) = 0;
        v186 = [a2 position] + 4;
        if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 4, v187 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v203 = v207;
        v204 = 256;
LABEL_496:
        *(a1 + v204) = v203;
        continue;
      case 0x1Eu:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        *(a1 + 284) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v191 = [a2 position] + 1;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v190 |= (v207 & 0x7F) << v188;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v188 += 7;
          v11 = v189++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_473;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v190;
        }

LABEL_473:
        v201 = 264;
        goto LABEL_478;
      case 0x1Fu:
        v153 = 0;
        v154 = 0;
        v155 = 0;
        *(a1 + 284) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v156 = [a2 position] + 1;
          if (v156 >= [a2 position] && (v157 = objc_msgSend(a2, "position") + 1, v157 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v155 |= (v207 & 0x7F) << v153;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v153 += 7;
          v11 = v154++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_450;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v155;
        }

LABEL_450:
        v201 = 196;
        goto LABEL_478;
      case 0x20u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 284) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v207 & 0x7F) << v101;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v11 = v102++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_410;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v103;
        }

LABEL_410:
        v201 = 212;
        goto LABEL_478;
      case 0x21u:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 284) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v207 & 0x7F) << v158;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v11 = v159++ >= 9;
          if (v11)
          {
            LOBYTE(v163) = 0;
            goto LABEL_452;
          }
        }

        v163 = (v160 != 0) & ~[a2 hasError];
LABEL_452:
        *(a1 + 280) = v163;
        continue;
      case 0x22u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 284) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v207 & 0x7F) << v57;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_378;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v59;
        }

LABEL_378:
        v201 = 216;
        goto LABEL_478;
      case 0x23u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 284) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v207 & 0x7F) << v42;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_366;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v44;
        }

LABEL_366:
        v201 = 184;
        goto LABEL_478;
      case 0x24u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 284) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v207 & 0x7F) << v30;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_358;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v32;
        }

LABEL_358:
        v201 = 192;
        goto LABEL_478;
      case 0x25u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 284) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v207 & 0x7F) << v35;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_362;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v37;
        }

LABEL_362:
        v201 = 204;
        goto LABEL_478;
      case 0x26u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 284) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v207 & 0x7F) << v25;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_354;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_354:
        v201 = 208;
        goto LABEL_478;
      case 0x27u:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        *(a1 + 284) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v196 = [a2 position] + 1;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v195 |= (v207 & 0x7F) << v193;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v11 = v194++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_477;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v195;
        }

LABEL_477:
        v201 = 260;
        goto LABEL_478;
      case 0x28u:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        *(a1 + 284) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v207 & 0x7F) << v169;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v11 = v170++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_460;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v171;
        }

LABEL_460:
        v201 = 268;
        goto LABEL_478;
      case 0x29u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 284) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v207 & 0x7F) << v69;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_386;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v71;
        }

LABEL_386:
        v201 = 200;
        goto LABEL_478;
      case 0x2Au:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 284) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v207 & 0x7F) << v111;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_418;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v113;
        }

LABEL_418:
        v201 = 232;
        goto LABEL_478;
      case 0x2Bu:
        v179 = 0;
        v180 = 0;
        v181 = 0;
        *(a1 + 284) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v207) = 0;
          v182 = [a2 position] + 1;
          if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v181 |= (v207 & 0x7F) << v179;
          if ((v207 & 0x80) == 0)
          {
            break;
          }

          v179 += 7;
          v11 = v180++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v181;
        }

LABEL_468:
        v202 = 160;
LABEL_469:
        *(a1 + v202) = v18;
        continue;
      case 0x2Cu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 284) |= 0x400000uLL;
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
      LOBYTE(v207) = 0;
      v22 = [a2 position] + 1;
      if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v21 |= (v207 & 0x7F) << v19;
      if ((v207 & 0x80) == 0)
      {
        break;
      }

      v19 += 7;
      v11 = v20++ >= 9;
      if (v11)
      {
        v24 = 0;
        goto LABEL_350;
      }
    }

    if ([a2 hasError])
    {
      v24 = 0;
    }

    else
    {
      v24 = v21;
    }

LABEL_350:
    v201 = 188;
LABEL_478:
    *(a1 + v201) = v24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiDPSAWDLSnapshotReadFrom(uint64_t a1, void *a2)
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
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
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
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v41 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v41 & 0x7F) << v31;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v33;
          }

LABEL_75:
          v36 = 24;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v40 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v40 & 0x7F) << v19;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v21;
          }

LABEL_67:
          v36 = 20;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v39 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v39 & 0x7F) << v25;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v30 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v27;
          }

LABEL_71:
          *(a1 + 8) = v30;
          goto LABEL_77;
        }

        if (v12 != 2)
        {
          goto LABEL_40;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v42 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v42 & 0x7F) << v13;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_63:
        v36 = 16;
      }

      *(a1 + v36) = v18;
LABEL_77:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiDPSActiveProbeStatsReadFrom(uint64_t a1, void *a2)
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
        v63 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v63 & 0x7F) << v5;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              v71 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v71 & 0x7F) << v40;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v10 = v41++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_131;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v42;
            }

LABEL_131:
            v61 = 20;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_110;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 48) |= 0x10u;
            while (1)
            {
              v70 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v70 & 0x7F) << v24;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_119;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v26;
            }

LABEL_119:
            v61 = 28;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v64 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v64 & 0x7F) << v34;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v10 = v35++ >= 9;
              if (v10)
              {
                v39 = 0;
                goto LABEL_127;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v36;
            }

LABEL_127:
            *(a1 + 8) = v39;
            goto LABEL_149;
          }

          if (v12 != 2)
          {
            goto LABEL_110;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v72 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v72 & 0x7F) << v19;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_115;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v21;
          }

LABEL_115:
          v61 = 16;
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v69 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v69 & 0x7F) << v50;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v10 = v51++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_139;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v52;
          }

LABEL_139:
          v61 = 24;
        }

        else
        {
          if (v12 != 6)
          {
LABEL_110:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_149;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 48) |= 0x20u;
          while (1)
          {
            v68 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v68 & 0x7F) << v29;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_123;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v31;
          }

LABEL_123:
          v61 = 32;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 48) |= 0x40u;
            while (1)
            {
              v67 = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v67 & 0x7F) << v45;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v10 = v46++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_135;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v47;
            }

LABEL_135:
            v61 = 36;
            break;
          case 8:
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 48) |= 0x100u;
            while (1)
            {
              v66 = 0;
              v58 = [a2 position] + 1;
              if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v57 |= (v66 & 0x7F) << v55;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v10 = v56++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_147;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v57;
            }

LABEL_147:
            v61 = 44;
            break;
          case 9:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 48) |= 0x80u;
            while (1)
            {
              v65 = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v65 & 0x7F) << v13;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_143;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_143:
            v61 = 40;
            break;
          default:
            goto LABEL_110;
        }
      }

      *(a1 + v61) = v18;
LABEL_149:
      v62 = [a2 position];
    }

    while (v62 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}