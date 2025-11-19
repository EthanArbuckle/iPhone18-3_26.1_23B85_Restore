uint64_t AWDWiFiDPSBTSnapshotReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
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

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v35 = 0;
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

          v27 |= (v35 & 0x7F) << v25;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_56;
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

LABEL_56:
        v31 = 20;
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 == 1)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v34 = 0;
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

              v15 |= (v34 & 0x7F) << v13;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_61;
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

LABEL_61:
            *(a1 + 8) = v18;
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

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v36 = 0;
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

          v21 |= (v36 & 0x7F) << v19;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_52;
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

LABEL_52:
        v31 = 16;
      }

      *(a1 + v31) = v24;
LABEL_62:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiDPSCountersSampleReadFrom(uint64_t a1, void *a2)
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
        v19 = objc_alloc_init(AWDWiFiNWActivityControllerStats);

        *(a1 + 16) = v19;
        v23 = 0;
        v24 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiNWActivityControllerStatsReadFrom(v19, a2);
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

    v21 = objc_alloc_init(AWDWiFiNWActivityPeerStats);

    *(a1 + 24) = v21;
    v23 = 0;
    v24 = 0;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    result = AWDWiFiNWActivityPeerStatsReadFrom(v21, a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiDPSEpilogueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v58) = 0;
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

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
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
          *(a1 + 100) |= 1u;
          while (1)
          {
            LOBYTE(v58) = 0;
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

            v14 |= (v58 & 0x7F) << v12;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_117:
              *(a1 + 8) = v17;
              goto LABEL_127;
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

          goto LABEL_117;
        case 2u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 100) |= 0x10u;
          while (1)
          {
            LOBYTE(v58) = 0;
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

            v46 |= (v58 & 0x7F) << v44;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_121;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v46;
          }

LABEL_121:
          v56 = 48;
          goto LABEL_126;
        case 3u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 100) |= 2u;
          while (1)
          {
            LOBYTE(v58) = 0;
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

            v30 |= (v58 & 0x7F) << v28;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v30;
          }

LABEL_105:
          v56 = 24;
          goto LABEL_126;
        case 4u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 100) |= 8u;
          while (1)
          {
            LOBYTE(v58) = 0;
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

            v36 |= (v58 & 0x7F) << v34;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v36;
          }

LABEL_109:
          v56 = 32;
          goto LABEL_126;
        case 5u:
          v20 = objc_alloc_init(AWDWADiagnosisActionAssociationDifferences);

          *(a1 + 56) = v20;
          goto LABEL_80;
        case 6u:
          v20 = objc_alloc_init(AWDWADiagnosisActionAssociationDifferences);
          [a1 addAssociationChanges:v20];

LABEL_80:
          v58 = 0;
          v59 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWADiagnosisActionAssociationDifferencesReadFrom(v20, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_90;
        case 7u:
          v49 = objc_alloc_init(AWDWAQuickDpsStats);

          *(a1 + 72) = v49;
          v58 = 0;
          v59 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWAQuickDpsStatsReadFrom(v49, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_90;
        case 8u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 100) |= 4u;
          while (1)
          {
            LOBYTE(v58) = 0;
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

            v41 |= (v58 & 0x7F) << v39;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_113;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v41;
          }

LABEL_113:
          v56 = 28;
          goto LABEL_126;
        case 9u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 100) |= 0x20u;
          while (1)
          {
            LOBYTE(v58) = 0;
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

            v53 |= (v58 & 0x7F) << v51;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_125;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v53;
          }

LABEL_125:
          v56 = 80;
LABEL_126:
          *(a1 + v56) = v33;
          goto LABEL_127;
        case 0xAu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 100) |= 0x40u;
          break;
        case 0xBu:
          v50 = objc_alloc_init(AWDWASymptomsDnsStats);

          *(a1 + 88) = v50;
          v58 = 0;
          v59 = 0;
          result = PBReaderPlaceMark();
          if (result)
          {
            result = AWDWASymptomsDnsStatsReadFrom(v50, a2);
            if (result)
            {
              goto LABEL_90;
            }
          }

          return result;
        case 0xCu:
          v18 = objc_alloc_init(AWDWAPeerDiscoveryInfo);

          *(a1 + 64) = v18;
          v58 = 0;
          v59 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWAPeerDiscoveryInfoReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_90;
        case 0xDu:
          v21 = objc_alloc_init(AWDWAAssociatedAPInfo);
          [a1 addAccessPointInfo:v21];

          v58 = 0;
          v59 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWAAssociatedAPInfoReadFrom(v21, a2);
          if (!result)
          {
            return result;
          }

LABEL_90:
          PBReaderRecallMark();
          goto LABEL_127;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_127;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v58) = 0;
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

        v24 |= (v58 & 0x7F) << v22;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v10 = v23++ >= 9;
        if (v10)
        {
          LOBYTE(v27) = 0;
          goto LABEL_101;
        }
      }

      v27 = (v24 != 0) & ~[a2 hasError];
LABEL_101:
      *(a1 + 96) = v27;
LABEL_127:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiDPSNotificationReadFrom(uint64_t a1, void *a2)
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
        v39 = 0;
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

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
      if ((v11 >> 3) <= 2)
      {
        break;
      }

      if (v12 == 3)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v42 = 0;
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

          v34 |= (v42 & 0x7F) << v32;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v10 = v33++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_73;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v34;
        }

LABEL_73:
        v37 = 16;
LABEL_74:
        *(a1 + v37) = v18;
        goto LABEL_75;
      }

      if (v12 != 4)
      {
LABEL_40:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_75;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 28) |= 8u;
      while (1)
      {
        v43 = 0;
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

        v21 |= (v43 & 0x7F) << v19;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v10 = v20++ >= 9;
        if (v10)
        {
          LOBYTE(v24) = 0;
          goto LABEL_65;
        }
      }

      v24 = (v21 != 0) & ~[a2 hasError];
LABEL_65:
      *(a1 + 24) = v24;
LABEL_75:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        v40 = 0;
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

        v28 |= (v40 & 0x7F) << v26;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v10 = v27++ >= 9;
        if (v10)
        {
          v31 = 0;
          goto LABEL_69;
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

LABEL_69:
      *(a1 + 8) = v31;
      goto LABEL_75;
    }

    if (v12 != 2)
    {
      goto LABEL_40;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    *(a1 + 28) |= 4u;
    while (1)
    {
      v41 = 0;
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

      v15 |= (v41 & 0x7F) << v13;
      if ((v41 & 0x80) == 0)
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
    v37 = 20;
    goto LABEL_74;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiDPSPerACTxCompletionSnapshotReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 5)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v33 = 0;
            v34 = 0;
            v15 = 0;
            *(a1 + 52) |= 0x200u;
            while (1)
            {
              v74 = 0;
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

              v15 |= (v74 & 0x7F) << v33;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v18 = v34++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__success;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__success;
            goto LABEL_143;
          }

          if (v12 == 2)
          {
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v73 = 0;
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

              v15 |= (v73 & 0x7F) << v29;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__dropped;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__dropped;
LABEL_143:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_146:
            *(a1 + *v20) = v19;
            goto LABEL_147;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v49 = 0;
              v50 = 0;
              v15 = 0;
              *(a1 + 52) |= 0x80u;
              while (1)
              {
                v72 = 0;
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

                v15 |= (v72 & 0x7F) << v49;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v18 = v50++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__noBuf;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__noBuf;
              goto LABEL_143;
            case 4:
              v37 = 0;
              v38 = 0;
              v15 = 0;
              *(a1 + 52) |= 0x100u;
              while (1)
              {
                v71 = 0;
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

                v15 |= (v71 & 0x7F) << v37;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v18 = v38++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__noResources;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__noResources;
              goto LABEL_143;
            case 5:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 52) |= 0x40u;
              while (1)
              {
                v70 = 0;
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

                v15 |= (v70 & 0x7F) << v21;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v18 = v22++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__noAck;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__noAck;
              goto LABEL_143;
          }
        }
      }

      else if (v12 > 8)
      {
        switch(v12)
        {
          case 9:
            v57 = 0;
            v58 = 0;
            v15 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              v66 = 0;
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

              v15 |= (v66 & 0x7F) << v57;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v18 = v58++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__firmwareFreePacket;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__firmwareFreePacket;
            goto LABEL_143;
          case 0xA:
            v45 = 0;
            v46 = 0;
            v15 = 0;
            *(a1 + 52) |= 0x20u;
            while (1)
            {
              v65 = 0;
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

              v15 |= (v65 & 0x7F) << v45;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v18 = v46++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__maxRetries;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__maxRetries;
            goto LABEL_143;
          case 0xB:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              v64 = 0;
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

              v15 |= (v64 & 0x7F) << v25;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v18 = v26++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__forceLifetimeExp;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__forceLifetimeExp;
            goto LABEL_143;
        }
      }

      else
      {
        switch(v12)
        {
          case 6:
            v53 = 0;
            v54 = 0;
            v15 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              v69 = 0;
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

              v15 |= (v69 & 0x7F) << v53;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v18 = v54++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__chipModeError;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__chipModeError;
            goto LABEL_143;
          case 7:
            v41 = 0;
            v42 = 0;
            v15 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v68 = 0;
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

              v15 |= (v68 & 0x7F) << v41;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v18 = v42++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__expired;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__expired;
            goto LABEL_143;
          case 8:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 52) |= 0x400u;
            while (1)
            {
              v67 = 0;
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

              v15 |= (v67 & 0x7F) << v13;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__txFailure;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiDPSPerACTxCompletionSnapshot__txFailure;
            goto LABEL_143;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_147:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiDPSReportReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
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

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v27 & 0x7F) << v17;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v10 = v18++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_60;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v19;
            }

LABEL_60:
            *(a1 + 8) = v22;
            goto LABEL_55;
          case 2:
            v25 = objc_alloc_init(AWDWiFiDPSNotification);
            [a1 addStallNotification:v25];

            v27 = 0;
            v28 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiDPSNotificationReadFrom(v25, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          case 3:
            v15 = objc_alloc_init(AWDWiFiDPSActiveProbeStats);
            [a1 addProbeResult:v15];

            v27 = 0;
            v28 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiDPSActiveProbeStatsReadFrom(v15, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v24 = objc_alloc_init(AWDWiFiDPSSnapshot);

          *(a1 + 40) = v24;
          v27 = 0;
          v28 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiDPSSnapshotReadFrom(&v24->super.super.isa, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        if (v12 == 7)
        {
          v16 = objc_alloc_init(AWDWiFiUSBEventNotification);
          [a1 addUsbEvent:v16];

          v27 = 0;
          v28 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiUSBEventNotificationReadFrom(v16, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v23 = objc_alloc_init(AWDWiFiDPSCountersSample);
          [a1 addDpsCounterSample:v23];

          v27 = 0;
          v28 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiDPSCountersSampleReadFrom(v23, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        if (v12 == 5)
        {
          v13 = objc_alloc_init(AWDWiFiDPSEpilogue);

          *(a1 + 24) = v13;
          v27 = 0;
          v28 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiDPSEpilogueReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

LABEL_54:
          PBReaderRecallMark();
          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiDPSSnapshotReadFrom(id *a1, void *a2)
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
        LOBYTE(v21) = 0;
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

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v15 = objc_alloc_init(AWDWiFiDPSPerACTxCompletionSnapshot);

            v16 = 9;
            goto LABEL_37;
          }

          if (v12 == 4)
          {
            v15 = objc_alloc_init(AWDWiFiDPSPerACTxCompletionSnapshot);

            v16 = 8;
            goto LABEL_37;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v15 = objc_alloc_init(AWDWiFiDPSPerACTxCompletionSnapshot);

            v16 = 6;
            goto LABEL_37;
          }

          if (v12 == 2)
          {
            v15 = objc_alloc_init(AWDWiFiDPSPerACTxCompletionSnapshot);

            v16 = 7;
LABEL_37:
            a1[v16] = v15;
            v21 = 0;
            v22 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiDPSPerACTxCompletionSnapshotReadFrom(v15, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_47;
          }
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v19 = objc_alloc_init(AWDWiFiDPSBTSnapshot);

          a1[2] = v19;
          v21 = 0;
          v22 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiDPSBTSnapshotReadFrom(v19, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_47;
        }

        if (v12 == 6)
        {
          v17 = objc_alloc_init(AWDWiFiDPSAWDLSnapshot);

          a1[1] = v17;
          v21 = 0;
          v22 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiDPSAWDLSnapshotReadFrom(v17, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_47;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v13 = objc_alloc_init(AWDWiFiUsageSnapshot);

            v14 = 4;
            goto LABEL_45;
          case 8:
            v13 = objc_alloc_init(AWDWiFiUsageSnapshot);

            v14 = 5;
            goto LABEL_45;
          case 9:
            v13 = objc_alloc_init(AWDWiFiUsageSnapshot);

            v14 = 3;
LABEL_45:
            a1[v14] = v13;
            v21 = 0;
            v22 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiUsageSnapshotReadFrom(v13, a2);
            if (!result)
            {
              return result;
            }

LABEL_47:
            PBReaderRecallMark();
            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiLPMReportReadFrom(uint64_t a1, void *a2)
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
      v138 = 0;
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

      v8 |= (v138 & 0x7F) << v6;
      if ((v138 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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
        *(a1 + 248) |= 0x1000000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v13;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v13 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__timestamp;
          v20 = v14++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__timestamp;
        goto LABEL_321;
      case 2u:
        v73 = 0;
        v74 = 0;
        v15 = 0;
        *(a1 + 248) |= 1u;
        while (1)
        {
          v138 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v73;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v73 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__associatedDuration;
          v20 = v74++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__associatedDuration;
        goto LABEL_321;
      case 3u:
        v57 = 0;
        v58 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x800000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v57;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v57 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__sleepDuration;
          v20 = v58++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__sleepDuration;
        goto LABEL_321;
      case 4u:
        v65 = 0;
        v66 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x400000u;
        while (1)
        {
          v138 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v65;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v65 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__roamDuration;
          v20 = v66++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__roamDuration;
        goto LABEL_321;
      case 5u:
        v37 = 0;
        v38 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x100u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v37;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v37 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__phyOffDuration;
          v20 = v38++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__phyOffDuration;
        goto LABEL_321;
      case 6u:
        v85 = 0;
        v86 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x20000000u;
        while (1)
        {
          v138 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v85;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v85 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__transmitDuration;
          v20 = v86++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__transmitDuration;
        goto LABEL_321;
      case 7u:
        v97 = 0;
        v98 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x200000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v97;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v97 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__receiveDuration;
          v20 = v98++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__receiveDuration;
        goto LABEL_321;
      case 8u:
        v69 = 0;
        v70 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x2000000u;
        while (1)
        {
          v138 = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v69;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v69 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__totalLPASDuration;
          v20 = v70++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__totalLPASDuration;
        goto LABEL_321;
      case 9u:
        v109 = 0;
        v110 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x200u;
        while (1)
        {
          v138 = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v109;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v109 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumedInSelfManagedLPASMode;
          v20 = v110++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumedInSelfManagedLPASMode;
        goto LABEL_321;
      case 0xAu:
        v45 = 0;
        v46 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x8000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v45;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v45 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToMac;
          v20 = v46++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToMac;
        goto LABEL_321;
      case 0xBu:
        v105 = 0;
        v106 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x10000u;
        while (1)
        {
          v138 = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v105;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v105 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToRF;
          v20 = v106++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToRF;
        goto LABEL_321;
      case 0xCu:
        v33 = 0;
        v34 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x100000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v33;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v33 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToUserScan;
          v20 = v34++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToUserScan;
        goto LABEL_321;
      case 0xDu:
        v41 = 0;
        v42 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x20000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v41;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v41 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToRoamScan;
          v20 = v42++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToRoamScan;
        goto LABEL_321;
      case 0xEu:
        v93 = 0;
        v94 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x1000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v93;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v93 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToAssocScan;
          v20 = v94++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToAssocScan;
        goto LABEL_321;
      case 0xFu:
        v29 = 0;
        v30 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x2000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v29;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v29 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToEPNOScan;
          v20 = v30++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToEPNOScan;
        goto LABEL_321;
      case 0x10u:
        v61 = 0;
        v62 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x80000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v61;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v61 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToTx;
          v20 = v62++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToTx;
        goto LABEL_321;
      case 0x11u:
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x40000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v25;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v25 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToRx;
          v20 = v26++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToRx;
        goto LABEL_321;
      case 0x12u:
        v77 = 0;
        v78 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x4000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v77;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v77 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToFRTS;
          v20 = v78++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToFRTS;
        goto LABEL_321;
      case 0x13u:
        v101 = 0;
        v102 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x800u;
        while (1)
        {
          v138 = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v101;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v101 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToAWDLTx;
          v20 = v102++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToAWDLTx;
        goto LABEL_321;
      case 0x14u:
        v117 = 0;
        v118 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x400u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v117;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v117 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToAWDLRx;
          v20 = v118++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__powerConsumptionDueToAWDLRx;
        goto LABEL_321;
      case 0x15u:
        v81 = 0;
        v82 = 0;
        v15 = 0;
        *(a1 + 248) |= 4u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v81;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v81 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__beaconReceivedInLpas;
          v20 = v82++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__beaconReceivedInLpas;
        goto LABEL_321;
      case 0x16u:
        v89 = 0;
        v90 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x10u;
        while (1)
        {
          v138 = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v89;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v89 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__beaconsMissedInLpas;
          v20 = v90++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__beaconsMissedInLpas;
        goto LABEL_321;
      case 0x17u:
        v113 = 0;
        v114 = 0;
        v15 = 0;
        *(a1 + 248) |= 8u;
        while (1)
        {
          v138 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v113;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v113 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__beaconsEarlyTerminatedInLpas;
          v20 = v114++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__beaconsEarlyTerminatedInLpas;
        goto LABEL_321;
      case 0x18u:
        v121 = 0;
        v122 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x20u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v121;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v121 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__beaconsScheduledInLpas;
          v20 = v122++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__beaconsScheduledInLpas;
        goto LABEL_321;
      case 0x19u:
        v53 = 0;
        v54 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x4000000u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v53;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v53 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__totalLpasPowerBudget;
          v20 = v54++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__totalLpasPowerBudget;
        goto LABEL_321;
      case 0x1Au:
        v49 = 0;
        v50 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x40u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v49;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v49 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__lpasPowerBudgetRemaining;
          v20 = v50++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__lpasPowerBudgetRemaining;
        goto LABEL_321;
      case 0x1Bu:
        v133 = 0;
        v134 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x8000000u;
        while (1)
        {
          v138 = 0;
          v135 = [a2 position] + 1;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 1, v136 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v133;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v133 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__totalLpasPowerMonitoringPeriod;
          v20 = v134++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__totalLpasPowerMonitoringPeriod;
        goto LABEL_321;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x80u;
        while (1)
        {
          v138 = 0;
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

          v15 |= (v138 & 0x7F) << v21;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v21 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__lpasPowerPeriodRemaining;
          v20 = v22++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__lpasPowerPeriodRemaining;
        goto LABEL_321;
      case 0x1Du:
        v125 = 0;
        v126 = 0;
        v15 = 0;
        *(a1 + 248) |= 2u;
        while (1)
        {
          v138 = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v138 & 0x7F) << v125;
          if ((v138 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v125 += 7;
          v19 = &OBJC_IVAR___AWDWiFiLPMReport__associatedSleepDuration;
          v20 = v126++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiLPMReport__associatedSleepDuration;
        goto LABEL_321;
      case 0x1Eu:
        v129 = 0;
        v130 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x10000000u;
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
      v138 = 0;
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

      v15 |= (v138 & 0x7F) << v129;
      if ((v138 & 0x80) == 0)
      {
        break;
      }

      v18 = 0;
      v129 += 7;
      v19 = &OBJC_IVAR___AWDWiFiLPMReport__totalTimeForBugetExpiry;
      v20 = v130++ > 8;
      if (v20)
      {
        goto LABEL_324;
      }
    }

    v19 = &OBJC_IVAR___AWDWiFiLPMReport__totalTimeForBugetExpiry;
LABEL_321:
    if ([a2 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

LABEL_324:
    *(a1 + *v19) = v18;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiLTECoexBinReadFrom(uint64_t a1, void *a2)
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
              *(a1 + 104) |= 0x100u;
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
                  v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txreassocreq;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txreassocreq;
              goto LABEL_154;
            case 0xB:
              v61 = 0;
              v62 = 0;
              v15 = 0;
              *(a1 + 104) |= 0x200u;
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
                  v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txreassocrsp;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txreassocrsp;
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
              *(a1 + 104) |= 1u;
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
                  v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__ctsnotrxafterrts;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__ctsnotrxafterrts;
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
              *(a1 + 104) |= 0x20u;
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
                  v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txdeauth;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txdeauth;
              goto LABEL_154;
            case 8:
              v53 = 0;
              v54 = 0;
              v15 = 0;
              *(a1 + 104) |= 8u;
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
                  v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txassocreq;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txassocreq;
              goto LABEL_154;
            case 9:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 104) |= 0x10u;
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
                  v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txassocrsp;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txassocrsp;
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
            *(a1 + 104) |= 0x400u;
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
                v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txretrans;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txretrans;
            goto LABEL_154;
          case 5:
            v57 = 0;
            v58 = 0;
            v15 = 0;
            *(a1 + 104) |= 0x80u;
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
                v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txnocts;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txnocts;
            goto LABEL_154;
          case 6:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 104) |= 0x800u;
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
                v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txrts;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txrts;
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
            *(a1 + 104) |= 2u;
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
                v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__rxframe;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__rxframe;
            goto LABEL_154;
          case 2:
            v49 = 0;
            v50 = 0;
            v15 = 0;
            *(a1 + 104) |= 0x40u;
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
                v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txframe;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__txframe;
            goto LABEL_154;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 104) |= 4u;
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
                v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__rxrtry;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTECoexBin__rxrtry;
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

uint64_t AWDWiFiLTECoexCountersReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
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

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
          v13 = objc_alloc_init(AWDWiFiLTECoexBin);

          v14 = 24;
LABEL_36:
          *(a1 + v14) = v13;
          v23[0] = 0;
          v23[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiLTECoexBinReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_43;
        }

        if (v12 == 4)
        {
          v13 = objc_alloc_init(AWDWiFiLTECoexBin);

          v14 = 16;
          goto LABEL_36;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v23[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v23[0] & 0x7F) << v15;
            if ((v23[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v10 = v16++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_42;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v17;
          }

LABEL_42:
          *(a1 + 8) = v20;
          goto LABEL_43;
        }

        if (v12 == 2)
        {
          v13 = objc_alloc_init(AWDWiFiLTECoexBin);

          v14 = 32;
          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiLTECoexTxBlankingReadFrom(uint64_t a1, void *a2)
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
        v47 = 0;
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

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
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
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v54 = 0;
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

              v15 |= (v54 & 0x7F) << v29;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__timestamp;
                goto LABEL_101;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__timestamp;
            goto LABEL_98;
          case 2:
            v41 = 0;
            v42 = 0;
            v15 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              v53 = 0;
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

              v15 |= (v53 & 0x7F) << v41;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v18 = v42++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type4BlankingCount;
                goto LABEL_101;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type4BlankingCount;
LABEL_98:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_101:
            *(a1 + *v20) = v19;
            goto LABEL_102;
          case 3:
            v21 = 0;
            v22 = 0;
            v15 = 0;
            *(a1 + 64) |= 8u;
            while (1)
            {
              v52 = 0;
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

              v15 |= (v52 & 0x7F) << v21;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v18 = v22++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type4ResumeCount;
                goto LABEL_101;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type4ResumeCount;
            goto LABEL_98;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v37 = 0;
          v38 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            v49 = 0;
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

            v15 |= (v49 & 0x7F) << v37;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v18 = v38++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type7ResumeCount;
              goto LABEL_101;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type7ResumeCount;
          goto LABEL_98;
        }

        if (v12 == 7)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v48 = 0;
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

            v15 |= (v48 & 0x7F) << v25;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v18 = v26++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type7BlankingTimeInMS;
              goto LABEL_101;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type7BlankingTimeInMS;
          goto LABEL_98;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v33 = 0;
          v34 = 0;
          v15 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v51 = 0;
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

            v15 |= (v51 & 0x7F) << v33;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v18 = v34++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type4BlankingTimeInMS;
              goto LABEL_101;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type4BlankingTimeInMS;
          goto LABEL_98;
        }

        if (v12 == 5)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v50 = 0;
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

            v15 |= (v50 & 0x7F) << v13;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v18 = v14++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type7BlankingCount;
              goto LABEL_101;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiLTECoexTxBlanking__type7BlankingCount;
          goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_102:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiLTEWCI2CountersReadFrom(_WORD *a1, void *a2)
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
        LOBYTE(v73[0]) = 0;
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

        v7 |= (v73[0] & 0x7F) << v5;
        if ((v73[0] & 0x80) == 0)
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
              v46 = 0;
              v47 = 0;
              v48 = 0;
              a1[52] |= 0x100u;
              while (1)
              {
                LOBYTE(v73[0]) = 0;
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

                v48 |= (v73[0] & 0x7F) << v46;
                if ((v73[0] & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v10 = v47++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_163;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v48;
              }

LABEL_163:
              v71 = 36;
              goto LABEL_180;
            case 0xB:
              v66 = 0;
              v67 = 0;
              v68 = 0;
              a1[52] |= 0x20u;
              while (1)
              {
                LOBYTE(v73[0]) = 0;
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

                v68 |= (v73[0] & 0x7F) << v66;
                if ((v73[0] & 0x80) == 0)
                {
                  break;
                }

                v66 += 7;
                v10 = v67++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_179;
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

LABEL_179:
              v71 = 24;
              goto LABEL_180;
            case 0xC:
              v29 = objc_alloc_init(AWDWiFiLTEWCI2CountersSliceSpecific);
              [a1 addWci2Counters:v29];

              v73[0] = 0;
              v73[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDWiFiLTEWCI2CountersSliceSpecificReadFrom(v29, a2);
              if (!result)
              {
                return result;
              }

              PBReaderRecallMark();
              goto LABEL_181;
          }
        }

        else
        {
          switch(v12)
          {
            case 7:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              a1[52] |= 0x40u;
              while (1)
              {
                LOBYTE(v73[0]) = 0;
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

                v38 |= (v73[0] & 0x7F) << v36;
                if ((v73[0] & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v10 = v37++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_155;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v38;
              }

LABEL_155:
              v71 = 28;
              goto LABEL_180;
            case 8:
              v56 = 0;
              v57 = 0;
              v58 = 0;
              a1[52] |= 8u;
              while (1)
              {
                LOBYTE(v73[0]) = 0;
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

                v58 |= (v73[0] & 0x7F) << v56;
                if ((v73[0] & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                v10 = v57++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_171;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v58;
              }

LABEL_171:
              v71 = 16;
              goto LABEL_180;
            case 9:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              a1[52] |= 4u;
              while (1)
              {
                LOBYTE(v73[0]) = 0;
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

                v21 |= (v73[0] & 0x7F) << v19;
                if ((v73[0] & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v10 = v20++ >= 9;
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
                v18 = v21;
              }

LABEL_143:
              v71 = 12;
              goto LABEL_180;
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
            v43 = 0;
            a1[52] |= 2u;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
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

              v43 |= (v73[0] & 0x7F) << v41;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v10 = v42++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_159;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v43;
            }

LABEL_159:
            v71 = 8;
            goto LABEL_180;
          case 5:
            v61 = 0;
            v62 = 0;
            v63 = 0;
            a1[52] |= 1u;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v73[0] & 0x7F) << v61;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v10 = v62++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_175;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v63;
            }

LABEL_175:
            v71 = 4;
            goto LABEL_180;
          case 6:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            a1[52] |= 0x80u;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
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

              v26 |= (v73[0] & 0x7F) << v24;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
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
              v18 = v26;
            }

LABEL_147:
            v71 = 32;
            goto LABEL_180;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            a1[52] |= 0x10u;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
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

              v33 |= (v73[0] & 0x7F) << v31;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v10 = v32++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_151;
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

LABEL_151:
            v71 = 20;
            goto LABEL_180;
          case 2:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            a1[52] |= 0x400u;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
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

              v53 |= (v73[0] & 0x7F) << v51;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v10 = v52++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_167;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v53;
            }

LABEL_167:
            v71 = 44;
            goto LABEL_180;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            a1[52] |= 0x200u;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
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

              v15 |= (v73[0] & 0x7F) << v13;
              if ((v73[0] & 0x80) == 0)
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
            v71 = 40;
LABEL_180:
            *&a1[v71] = v18;
            goto LABEL_181;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_181:
      v72 = [a2 position];
    }

    while (v72 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiLTEWCI2CountersSliceSpecificReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 5)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v33 = 0;
            v34 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x10u;
            while (1)
            {
              v74 = 0;
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

              v15 |= (v74 & 0x7F) << v33;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v18 = v34++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__timestamp;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__timestamp;
            goto LABEL_143;
          }

          if (v12 == 2)
          {
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x400u;
            while (1)
            {
              v73 = 0;
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

              v15 |= (v73 & 0x7F) << v29;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__wlanRxPriTimeInMS;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__wlanRxPriTimeInMS;
LABEL_143:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_146:
            *(a1 + *v20) = v19;
            goto LABEL_147;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v49 = 0;
              v50 = 0;
              v15 = 0;
              *(a1 + 96) |= 0x200u;
              while (1)
              {
                v72 = 0;
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

                v15 |= (v72 & 0x7F) << v49;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v18 = v50++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__wlanRxPriCount;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__wlanRxPriCount;
              goto LABEL_143;
            case 4:
              v37 = 0;
              v38 = 0;
              v15 = 0;
              *(a1 + 96) |= 2u;
              while (1)
              {
                v71 = 0;
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

                v15 |= (v71 & 0x7F) << v37;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v18 = v38++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__lteTxPowerLimitTimeInMS;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__lteTxPowerLimitTimeInMS;
              goto LABEL_143;
            case 5:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 96) |= 1u;
              while (1)
              {
                v70 = 0;
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

                v15 |= (v70 & 0x7F) << v21;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v18 = v22++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__lteTxPowerLimitCount;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__lteTxPowerLimitCount;
              goto LABEL_143;
          }
        }
      }

      else if (v12 > 8)
      {
        switch(v12)
        {
          case 9:
            v57 = 0;
            v58 = 0;
            v15 = 0;
            *(a1 + 96) |= 4u;
            while (1)
            {
              v66 = 0;
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

              v15 |= (v66 & 0x7F) << v57;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v18 = v58++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__timeSharingWLANIntervalCount;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__timeSharingWLANIntervalCount;
            goto LABEL_143;
          case 0xA:
            v45 = 0;
            v46 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x100u;
            while (1)
            {
              v65 = 0;
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

              v15 |= (v65 & 0x7F) << v45;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v18 = v46++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__wlanProtectionFramesDueToLTECoexCount;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__wlanProtectionFramesDueToLTECoexCount;
            goto LABEL_143;
          case 0xB:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x20u;
            while (1)
            {
              v64 = 0;
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

              v15 |= (v64 & 0x7F) << v25;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v18 = v26++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__type4DueToTimerExpiryCount;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__type4DueToTimerExpiryCount;
            goto LABEL_143;
        }
      }

      else
      {
        switch(v12)
        {
          case 6:
            v53 = 0;
            v54 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x80u;
            while (1)
            {
              v69 = 0;
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

              v15 |= (v69 & 0x7F) << v53;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v18 = v54++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__type4HonouredTimeInMS;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__type4HonouredTimeInMS;
            goto LABEL_143;
          case 7:
            v41 = 0;
            v42 = 0;
            v15 = 0;
            *(a1 + 96) |= 0x40u;
            while (1)
            {
              v68 = 0;
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

              v15 |= (v68 & 0x7F) << v41;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v18 = v42++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__type4HonouredCount;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__type4HonouredCount;
            goto LABEL_143;
          case 8:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 96) |= 8u;
            while (1)
            {
              v67 = 0;
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

              v15 |= (v67 & 0x7F) << v13;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__timeSharingWLANTimeInMS;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiLTEWCI2CountersSliceSpecific__timeSharingWLANTimeInMS;
            goto LABEL_143;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_147:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiLprxStatsReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 3)
      {
        if (v12 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v57 = 0;
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

            v31 |= (v57 & 0x7F) << v29;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v34 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v31;
          }

LABEL_94:
          v51 = 24;
          goto LABEL_120;
        }

        if (v12 == 2)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v56 = 0;
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

            v48 |= (v56 & 0x7F) << v46;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v10 = v47++ >= 9;
            if (v10)
            {
              v34 = 0;
              goto LABEL_119;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v48;
          }

LABEL_119:
          v51 = 16;
          goto LABEL_120;
        }

        if (v12 != 3)
        {
          goto LABEL_62;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 48) |= 0x40u;
        while (1)
        {
          v61 = 0;
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

          v21 |= (v61 & 0x7F) << v19;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_114;
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

LABEL_114:
        v52 = 44;
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v59 = 0;
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

            v43 |= (v59 & 0x7F) << v41;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v43;
          }

LABEL_102:
          v52 = 32;
        }

        else
        {
          if (v12 != 7)
          {
LABEL_62:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_121;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 48) |= 0x10u;
          while (1)
          {
            v58 = 0;
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

            v26 |= (v58 & 0x7F) << v24;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_110;
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

LABEL_110:
          v52 = 36;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v55 = 0;
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

            v38 |= (v55 & 0x7F) << v36;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              v34 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v38;
          }

LABEL_98:
          v51 = 8;
LABEL_120:
          *(a1 + v51) = v34;
          goto LABEL_121;
        }

        if (v12 != 5)
        {
          goto LABEL_62;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 48) |= 0x20u;
        while (1)
        {
          v60 = 0;
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

          v15 |= (v60 & 0x7F) << v13;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_106;
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

LABEL_106:
        v52 = 40;
      }

      *(a1 + v52) = v18;
LABEL_121:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetric11axLinkChangeDataReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (1)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v276) = 0;
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

      v8 |= (v276 & 0x7F) << v6;
      if ((v276 & 0x80) == 0)
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
    if ([a2 hasError])
    {
      break;
    }

    v13 = v12 & 7;
    if (v13 == 4)
    {
      break;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 384) |= 1uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v16 |= (v276 & 0x7F) << v14;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_505:
            *(a1 + 176) = v19;
            goto LABEL_575;
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

        goto LABEL_505;
      case 2u:
        if (v13 != 2)
        {
          v261 = 0;
          v262 = 0;
          v263 = 0;
          while (1)
          {
            LOBYTE(v276) = 0;
            v264 = [a2 position] + 1;
            if (v264 >= [a2 position] && (v265 = objc_msgSend(a2, "position") + 1, v265 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v263 |= (v276 & 0x7F) << v261;
            if ((v276 & 0x80) == 0)
            {
              goto LABEL_639;
            }

            v261 += 7;
            v11 = v262++ >= 9;
            if (v11)
            {
              goto LABEL_640;
            }
          }
        }

        v276 = 0;
        v277 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v144 = [a2 position];
          if (v144 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_427;
          }

          v145 = 0;
          v146 = 0;
          v147 = 0;
          while (1)
          {
            v278 = 0;
            v148 = [a2 position] + 1;
            if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v147 |= (v278 & 0x7F) << v145;
            if ((v278 & 0x80) == 0)
            {
              break;
            }

            v145 += 7;
            v11 = v146++ >= 9;
            if (v11)
            {
              goto LABEL_269;
            }
          }

          [a2 hasError];
LABEL_269:
          PBRepeatedInt32Add();
        }

      case 3u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 384) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v276 & 0x7F) << v97;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v11 = v98++ >= 9;
          if (v11)
          {
            LOBYTE(v96) = 0;
            goto LABEL_484;
          }
        }

        v96 = (v99 != 0) & ~[a2 hasError];
LABEL_484:
        v240 = 381;
        goto LABEL_485;
      case 4u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 384) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v93 |= (v276 & 0x7F) << v91;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            LOBYTE(v96) = 0;
            goto LABEL_482;
          }
        }

        v96 = (v93 != 0) & ~[a2 hasError];
LABEL_482:
        v240 = 380;
LABEL_485:
        *(a1 + v240) = v96;
        goto LABEL_575;
      case 5u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 384) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v276 & 0x7F) << v129;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v11 = v130++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_501;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v131;
        }

LABEL_501:
        v239 = 348;
        goto LABEL_574;
      case 6u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 384) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v276 & 0x7F) << v155;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v11 = v156++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_521;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v157;
        }

LABEL_521:
        v239 = 356;
        goto LABEL_574;
      case 7u:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        *(a1 + 384) |= 8uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v194 = [a2 position] + 1;
          if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v193 |= (v276 & 0x7F) << v191;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v11 = v192++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_545;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v193;
        }

LABEL_545:
        v239 = 192;
        goto LABEL_574;
      case 8u:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        *(a1 + 384) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v276 & 0x7F) << v196;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v11 = v197++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_549;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v198;
        }

LABEL_549:
        v239 = 196;
        goto LABEL_574;
      case 9u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 384) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v75 |= (v276 & 0x7F) << v73;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v11 = v74++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_476;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v75;
        }

LABEL_476:
        v239 = 344;
        goto LABEL_574;
      case 0xAu:
        v201 = 0;
        v202 = 0;
        v203 = 0;
        *(a1 + 384) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v204 = [a2 position] + 1;
          if (v204 >= [a2 position] && (v205 = objc_msgSend(a2, "position") + 1, v205 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v203 |= (v276 & 0x7F) << v201;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v201 += 7;
          v11 = v202++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_553;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v203;
        }

LABEL_553:
        v239 = 204;
        goto LABEL_574;
      case 0xBu:
        Data = PBReaderReadData();

        v42 = Data;
        v43 = 336;
        goto LABEL_429;
      case 0x10u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 384) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v276 & 0x7F) << v134;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v11 = v135++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_509;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v136;
        }

LABEL_509:
        v239 = 352;
        goto LABEL_574;
      case 0x11u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 384) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v276 & 0x7F) << v119;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v11 = v120++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_493;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v121;
        }

LABEL_493:
        v239 = 376;
        goto LABEL_574;
      case 0x12u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 384) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v276 & 0x7F) << v67;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_472;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v69;
        }

LABEL_472:
        v239 = 324;
        goto LABEL_574;
      case 0x13u:
        v181 = 0;
        v182 = 0;
        v183 = 0;
        *(a1 + 384) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v184 = [a2 position] + 1;
          if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (v276 & 0x7F) << v181;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v181 += 7;
          v11 = v182++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_537;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v183;
        }

LABEL_537:
        v239 = 360;
        goto LABEL_574;
      case 0x14u:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(a1 + 384) |= 2uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v189 = [a2 position] + 1;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v188 |= (v276 & 0x7F) << v186;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v11 = v187++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_541;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v188;
        }

LABEL_541:
        v239 = 184;
        goto LABEL_574;
      case 0x15u:
        v212 = 0;
        v213 = 0;
        v214 = 0;
        *(a1 + 384) |= 4uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v214 |= (v276 & 0x7F) << v212;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v212 += 7;
          v11 = v213++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_561;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v214;
        }

LABEL_561:
        v239 = 188;
        goto LABEL_574;
      case 0x16u:
        v207 = 0;
        v208 = 0;
        v209 = 0;
        *(a1 + 384) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v210 = [a2 position] + 1;
          if (v210 >= [a2 position] && (v211 = objc_msgSend(a2, "position") + 1, v211 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v209 |= (v276 & 0x7F) << v207;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v207 += 7;
          v11 = v208++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_557;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v209;
        }

LABEL_557:
        v239 = 200;
        goto LABEL_574;
      case 0x20u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 384) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v58 |= (v276 & 0x7F) << v56;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_464;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v58;
        }

LABEL_464:
        v239 = 304;
        goto LABEL_574;
      case 0x21u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 384) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v276 & 0x7F) << v124;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v11 = v125++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_497;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v126;
        }

LABEL_497:
        v239 = 300;
        goto LABEL_574;
      case 0x22u:
        v222 = 0;
        v223 = 0;
        v224 = 0;
        *(a1 + 384) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v225 = [a2 position] + 1;
          if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 1, v226 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v224 |= (v276 & 0x7F) << v222;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v222 += 7;
          v11 = v223++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_569;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v224;
        }

LABEL_569:
        v239 = 320;
        goto LABEL_574;
      case 0x23u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 384) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v64 |= (v276 & 0x7F) << v62;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v64;
        }

LABEL_468:
        v239 = 292;
        goto LABEL_574;
      case 0x24u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 384) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v117 = [a2 position] + 1;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v116 |= (v276 & 0x7F) << v114;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v11 = v115++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_489;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v116;
        }

LABEL_489:
        v239 = 296;
        goto LABEL_574;
      case 0x25u:
        v78 = PBReaderReadData();

        v42 = v78;
        v43 = 312;
        goto LABEL_429;
      case 0x30u:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 384) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v163 = [a2 position] + 1;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v162 |= (v276 & 0x7F) << v160;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v11 = v161++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_525;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v162;
        }

LABEL_525:
        v239 = 364;
        goto LABEL_574;
      case 0x31u:
        v72 = PBReaderReadData();

        v42 = v72;
        v43 = 368;
        goto LABEL_429;
      case 0x32u:
        if (v13 != 2)
        {
          v241 = 0;
          v242 = 0;
          v243 = 0;
          while (1)
          {
            LOBYTE(v276) = 0;
            v244 = [a2 position] + 1;
            if (v244 >= [a2 position] && (v245 = objc_msgSend(a2, "position") + 1, v245 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v243 |= (v276 & 0x7F) << v241;
            if ((v276 & 0x80) == 0)
            {
              goto LABEL_639;
            }

            v241 += 7;
            v11 = v242++ >= 9;
            if (v11)
            {
              goto LABEL_640;
            }
          }
        }

        v276 = 0;
        v277 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v45 = [a2 position];
          if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_427;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          while (1)
          {
            v278 = 0;
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

            v48 |= (v278 & 0x7F) << v46;
            if ((v278 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              goto LABEL_79;
            }
          }

          [a2 hasError];
LABEL_79:
          PBRepeatedInt32Add();
        }

      case 0x33u:
        if (v13 == 2)
        {
          v276 = 0;
          v277 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v227 = [a2 position];
            if (v227 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v228 = 0;
            v229 = 0;
            v230 = 0;
            while (1)
            {
              v278 = 0;
              v231 = [a2 position] + 1;
              if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 1, v232 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v230 |= (v278 & 0x7F) << v228;
              if ((v278 & 0x80) == 0)
              {
                break;
              }

              v228 += 7;
              v11 = v229++ >= 9;
              if (v11)
              {
                goto LABEL_426;
              }
            }

            [a2 hasError];
LABEL_426:
            PBRepeatedInt32Add();
          }

LABEL_427:
          PBReaderRecallMark();
        }

        else
        {
          v271 = 0;
          v272 = 0;
          v273 = 0;
          while (1)
          {
            LOBYTE(v276) = 0;
            v274 = [a2 position] + 1;
            if (v274 >= [a2 position] && (v275 = objc_msgSend(a2, "position") + 1, v275 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v273 |= (v276 & 0x7F) << v271;
            if ((v276 & 0x80) == 0)
            {
              break;
            }

            v271 += 7;
            v11 = v272++ >= 9;
            if (v11)
            {
              goto LABEL_640;
            }
          }

LABEL_639:
          [a2 hasError];
LABEL_640:
          PBRepeatedInt32Add();
        }

LABEL_575:
        v4 = a2;
        break;
      case 0x34u:
        if (v13 != 2)
        {
          v246 = 0;
          v247 = 0;
          v248 = 0;
          while (1)
          {
            LOBYTE(v276) = 0;
            v249 = [a2 position] + 1;
            if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 1, v250 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v248 |= (v276 & 0x7F) << v246;
            if ((v276 & 0x80) == 0)
            {
              goto LABEL_639;
            }

            v246 += 7;
            v11 = v247++ >= 9;
            if (v11)
            {
              goto LABEL_640;
            }
          }
        }

        v276 = 0;
        v277 = 0;
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
            goto LABEL_427;
          }

          v86 = 0;
          v87 = 0;
          v88 = 0;
          while (1)
          {
            v278 = 0;
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

            v88 |= (v278 & 0x7F) << v86;
            if ((v278 & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            v11 = v87++ >= 9;
            if (v11)
            {
              goto LABEL_152;
            }
          }

          [a2 hasError];
LABEL_152:
          PBRepeatedInt32Add();
        }

      case 0x35u:
        if (v13 != 2)
        {
          v251 = 0;
          v252 = 0;
          v253 = 0;
          while (1)
          {
            LOBYTE(v276) = 0;
            v254 = [a2 position] + 1;
            if (v254 >= [a2 position] && (v255 = objc_msgSend(a2, "position") + 1, v255 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v253 |= (v276 & 0x7F) << v251;
            if ((v276 & 0x80) == 0)
            {
              goto LABEL_639;
            }

            v251 += 7;
            v11 = v252++ >= 9;
            if (v11)
            {
              goto LABEL_640;
            }
          }
        }

        v276 = 0;
        v277 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v102 = [a2 position];
          if (v102 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_427;
          }

          v103 = 0;
          v104 = 0;
          v105 = 0;
          while (1)
          {
            v278 = 0;
            v106 = [a2 position] + 1;
            if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v105 |= (v278 & 0x7F) << v103;
            if ((v278 & 0x80) == 0)
            {
              break;
            }

            v103 += 7;
            v11 = v104++ >= 9;
            if (v11)
            {
              goto LABEL_185;
            }
          }

          [a2 hasError];
LABEL_185:
          PBRepeatedInt32Add();
        }

      case 0x36u:
        if (v13 != 2)
        {
          v266 = 0;
          v267 = 0;
          v268 = 0;
          while (1)
          {
            LOBYTE(v276) = 0;
            v269 = [a2 position] + 1;
            if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 1, v270 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v268 |= (v276 & 0x7F) << v266;
            if ((v276 & 0x80) == 0)
            {
              goto LABEL_639;
            }

            v266 += 7;
            v11 = v267++ >= 9;
            if (v11)
            {
              goto LABEL_640;
            }
          }
        }

        v276 = 0;
        v277 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v175 = [a2 position];
          if (v175 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_427;
          }

          v176 = 0;
          v177 = 0;
          v178 = 0;
          while (1)
          {
            v278 = 0;
            v179 = [a2 position] + 1;
            if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v178 |= (v278 & 0x7F) << v176;
            if ((v278 & 0x80) == 0)
            {
              break;
            }

            v176 += 7;
            v11 = v177++ >= 9;
            if (v11)
            {
              goto LABEL_329;
            }
          }

          [a2 hasError];
LABEL_329:
          PBRepeatedInt32Add();
        }

      case 0x37u:
        if (v13 != 2)
        {
          v256 = 0;
          v257 = 0;
          v258 = 0;
          while (1)
          {
            LOBYTE(v276) = 0;
            v259 = [a2 position] + 1;
            if (v259 >= [a2 position] && (v260 = objc_msgSend(a2, "position") + 1, v260 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v258 |= (v276 & 0x7F) << v256;
            if ((v276 & 0x80) == 0)
            {
              goto LABEL_639;
            }

            v256 += 7;
            v11 = v257++ >= 9;
            if (v11)
            {
              goto LABEL_640;
            }
          }
        }

        v276 = 0;
        v277 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v108 = [a2 position];
          if (v108 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_427;
          }

          v109 = 0;
          v110 = 0;
          v111 = 0;
          while (1)
          {
            v278 = 0;
            v112 = [a2 position] + 1;
            if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v111 |= (v278 & 0x7F) << v109;
            if ((v278 & 0x80) == 0)
            {
              break;
            }

            v109 += 7;
            v11 = v110++ >= 9;
            if (v11)
            {
              goto LABEL_200;
            }
          }

          [a2 hasError];
LABEL_200:
          PBRepeatedInt32Add();
        }

      case 0x38u:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 384) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v28 |= (v276 & 0x7F) << v26;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_448;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v28;
        }

LABEL_448:
        v239 = 208;
        goto LABEL_574;
      case 0x3Cu:
        v61 = PBReaderReadData();

        v42 = v61;
        v43 = 240;
        goto LABEL_429;
      case 0x3Du:
        v206 = PBReaderReadData();

        v42 = v206;
        v43 = 256;
        goto LABEL_429;
      case 0x3Eu:
        v233 = PBReaderReadData();

        v42 = v233;
        v43 = 224;
        goto LABEL_429;
      case 0x3Fu:
        v41 = PBReaderReadData();

        v42 = v41;
        v43 = 328;
LABEL_429:
        *(a1 + v43) = v42;
        goto LABEL_575;
      case 0x40u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 384) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v276 & 0x7F) << v170;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v11 = v171++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_533;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v172;
        }

LABEL_533:
        v239 = 248;
        goto LABEL_574;
      case 0x41u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 384) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v38 |= (v276 & 0x7F) << v36;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_456;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v38;
        }

LABEL_456:
        v239 = 268;
        goto LABEL_574;
      case 0x42u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 384) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v33 |= (v276 & 0x7F) << v31;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_452;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v33;
        }

LABEL_452:
        v239 = 272;
        goto LABEL_574;
      case 0x43u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 384) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v81 |= (v276 & 0x7F) << v79;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v11 = v80++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_480;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v81;
        }

LABEL_480:
        v239 = 264;
        goto LABEL_574;
      case 0x44u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 384) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v276 & 0x7F) << v139;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v11 = v140++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_513;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v141;
        }

LABEL_513:
        v239 = 232;
        goto LABEL_574;
      case 0x45u:
        v217 = 0;
        v218 = 0;
        v219 = 0;
        *(a1 + 384) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v220 = [a2 position] + 1;
          if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v219 |= (v276 & 0x7F) << v217;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v217 += 7;
          v11 = v218++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_565;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v219;
        }

LABEL_565:
        v239 = 276;
        goto LABEL_574;
      case 0x46u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 384) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v22 |= (v276 & 0x7F) << v20;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_444;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v22;
        }

LABEL_444:
        v239 = 280;
        goto LABEL_574;
      case 0x47u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 384) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
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

          v53 |= (v276 & 0x7F) << v51;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_460;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v53;
        }

LABEL_460:
        v239 = 212;
        goto LABEL_574;
      case 0x48u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 384) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v276 & 0x7F) << v150;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v11 = v151++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_517;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v152;
        }

LABEL_517:
        v239 = 216;
        goto LABEL_574;
      case 0x49u:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 384) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v168 = [a2 position] + 1;
          if (v168 >= [a2 position] && (v169 = objc_msgSend(a2, "position") + 1, v169 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v167 |= (v276 & 0x7F) << v165;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v11 = v166++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_529;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v167;
        }

LABEL_529:
        v239 = 284;
        goto LABEL_574;
      case 0x4Au:
        v234 = 0;
        v235 = 0;
        v236 = 0;
        *(a1 + 384) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v276) = 0;
          v237 = [a2 position] + 1;
          if (v237 >= [a2 position] && (v238 = objc_msgSend(a2, "position") + 1, v238 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v236 |= (v276 & 0x7F) << v234;
          if ((v276 & 0x80) == 0)
          {
            break;
          }

          v234 += 7;
          v11 = v235++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_573;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v236;
        }

LABEL_573:
        v239 = 288;
LABEL_574:
        *(a1 + v239) = v25;
        goto LABEL_575;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_575;
        }

        return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetric11axStatsReadFrom(uint64_t a1, void *a2)
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
        v18 = objc_alloc_init(AWDHEStats);

        *(a1 + 16) = v18;
        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDHEStatsReadFrom(v18, a2);
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

uint64_t AWDWiFiMetricActiveProbeStatsReadFrom(uint64_t a1, void *a2)
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
        v82 = 0;
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

        v7 |= (v82 & 0x7F) << v5;
        if ((v82 & 0x80) == 0)
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
          *(a1 + 64) |= 1u;
          while (1)
          {
            v83 = 0;
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

            v14 |= (v83 & 0x7F) << v12;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_168:
              *(a1 + 8) = v17;
              goto LABEL_190;
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

          goto LABEL_168;
        case 2u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 64) |= 0x200u;
          while (1)
          {
            v95 = 0;
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

            v56 |= (v95 & 0x7F) << v54;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_172;
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

LABEL_172:
          v80 = 48;
          goto LABEL_189;
        case 3u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            v94 = 0;
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

            v41 |= (v94 & 0x7F) << v39;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_156;
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

LABEL_156:
          v80 = 36;
          goto LABEL_189;
        case 4u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 64) |= 8u;
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
              goto LABEL_160;
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

LABEL_160:
          v80 = 24;
          goto LABEL_189;
        case 5u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 64) |= 0x1000u;
          while (1)
          {
            v92 = 0;
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

            v26 |= (v92 & 0x7F) << v24;
            if ((v92 & 0x80) == 0)
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
          v80 = 60;
          goto LABEL_189;
        case 6u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 64) |= 0x100u;
          while (1)
          {
            v91 = 0;
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

            v61 |= (v91 & 0x7F) << v59;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v10 = v60++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_176;
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

LABEL_176:
          v80 = 44;
          goto LABEL_189;
        case 7u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v90 = 0;
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

            v67 |= (v90 & 0x7F) << v65;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v10 = v66++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_180;
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

LABEL_180:
          v80 = 32;
          goto LABEL_189;
        case 8u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v89 = 0;
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

            v51 |= (v89 & 0x7F) << v49;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v10 = v50++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v51;
          }

LABEL_164:
          v80 = 20;
          goto LABEL_189;
        case 9u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 64) |= 0x800u;
          while (1)
          {
            v88 = 0;
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

            v77 |= (v88 & 0x7F) << v75;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v10 = v76++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_188;
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

LABEL_188:
          v80 = 56;
          goto LABEL_189;
        case 0xAu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            v87 = 0;
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

            v36 |= (v87 & 0x7F) << v34;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
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
            v23 = v36;
          }

LABEL_152:
          v80 = 40;
          goto LABEL_189;
        case 0xBu:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v86 = 0;
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

            v72 |= (v86 & 0x7F) << v70;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v10 = v71++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_184;
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

LABEL_184:
          v80 = 28;
          goto LABEL_189;
        case 0xCu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            v85 = 0;
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

            v20 |= (v85 & 0x7F) << v18;
            if ((v85 & 0x80) == 0)
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
          v80 = 16;
          goto LABEL_189;
        case 0xDu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 64) |= 0x400u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_190;
      }

      while (1)
      {
        v84 = 0;
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

        v31 |= (v84 & 0x7F) << v29;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v10 = v30++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_148;
        }
      }

      v23 = [a2 hasError] ? 0 : v31;
LABEL_148:
      v80 = 52;
LABEL_189:
      *(a1 + v80) = v23;
LABEL_190:
      v81 = [a2 position];
    }

    while (v81 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricCustomNetworkSettingReadFrom(uint64_t a1, void *a2)
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
        v58 = 0;
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

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
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
        if (v12 > 6)
        {
          if (v12 == 7)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 44) |= 0x20u;
            while (1)
            {
              v61 = 0;
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

              v52 |= (v61 & 0x7F) << v50;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v10 = v51++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_117;
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

LABEL_117:
            v56 = 32;
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

              goto LABEL_135;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              v60 = 0;
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

              v31 |= (v60 & 0x7F) << v29;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v10 = v30++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_133;
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

LABEL_133:
            v56 = 16;
          }
        }

        else if (v12 == 5)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            v63 = 0;
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

            v42 |= (v63 & 0x7F) << v40;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v10 = v41++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_109;
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

LABEL_109:
          v56 = 20;
        }

        else
        {
          if (v12 != 6)
          {
            goto LABEL_100;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 44) |= 0x40u;
          while (1)
          {
            v62 = 0;
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

            v21 |= (v62 & 0x7F) << v19;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_125;
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

LABEL_125:
          v56 = 36;
        }
      }

      else if (v12 > 2)
      {
        if (v12 == 3)
        {
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 44) |= 0x80u;
          while (1)
          {
            v65 = 0;
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

            v47 |= (v65 & 0x7F) << v45;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v10 = v46++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_113;
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

LABEL_113:
          v56 = 40;
        }

        else
        {
          if (v12 != 4)
          {
            goto LABEL_100;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 0x10u;
          while (1)
          {
            v64 = 0;
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

            v26 |= (v64 & 0x7F) << v24;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_129;
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

LABEL_129:
          v56 = 28;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v59 = 0;
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

            v36 |= (v59 & 0x7F) << v34;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v39 = 0;
              goto LABEL_105;
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

LABEL_105:
          *(a1 + 8) = v39;
          goto LABEL_135;
        }

        if (v12 != 2)
        {
          goto LABEL_100;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v66 = 0;
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

          v15 |= (v66 & 0x7F) << v13;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_121;
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

LABEL_121:
        v56 = 24;
      }

      *(a1 + v56) = v18;
LABEL_135:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}