uint64_t AWDWiFiQualityScoreReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          v33 = 0;
          v34 = 0;
          v15 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
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

            v15 |= (v44 & 0x7F) << v33;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v18 = v34++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiQualityScore__channelQuality;
              goto LABEL_78;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiQualityScore__channelQuality;
          goto LABEL_75;
        }

        if (v12 == 2)
        {
          v21 = 0;
          v22 = 0;
          v15 = 0;
          *(a1 + 28) |= 0x10u;
          while (1)
          {
            v43 = 0;
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

            v15 |= (v43 & 0x7F) << v21;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v18 = v22++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiQualityScore__txLoss;
              goto LABEL_78;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiQualityScore__txLoss;
LABEL_75:
          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

LABEL_78:
          *(a1 + *v20) = v19;
          goto LABEL_79;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v42 = 0;
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

              v15 |= (v42 & 0x7F) << v25;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v18 = v26++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiQualityScore__rxLoss;
                goto LABEL_78;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiQualityScore__rxLoss;
            goto LABEL_75;
          case 4:
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v41 = 0;
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

              v15 |= (v41 & 0x7F) << v29;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiQualityScore__txLatency;
                goto LABEL_78;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiQualityScore__txLatency;
            goto LABEL_75;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 28) |= 2u;
            while (1)
            {
              v40 = 0;
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

              v15 |= (v40 & 0x7F) << v13;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiQualityScore__rxLatency;
                goto LABEL_78;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiQualityScore__rxLatency;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiRangingRttDataReadFrom(uint64_t a1, void *a2)
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
        v78 = 0;
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

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v12;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v17 = v13++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__flags;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__flags;
          goto LABEL_170;
        case 2u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x1000u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v52;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v17 = v53++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__rtt;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__rtt;
          goto LABEL_170;
        case 3u:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x800u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v40;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v17 = v41++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__rssi;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__rssi;
          goto LABEL_170;
        case 4u:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x2000u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v44;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v17 = v45++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__snr;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__snr;
          goto LABEL_170;
        case 5u:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            v78 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v78 & 0x7F) << v28;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v17 = v29++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__coreId;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__coreId;
          goto LABEL_170;
        case 6u:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v56;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v17 = v57++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__losPeakRatio;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__losPeakRatio;
          goto LABEL_170;
        case 7u:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v78 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v78 & 0x7F) << v64;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v17 = v65++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__bitErrorRate;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__bitErrorRate;
          goto LABEL_170;
        case 8u:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x400u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v48;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v17 = v49++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__phyError;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__phyError;
          goto LABEL_170;
        case 9u:
          v72 = 0;
          v73 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x4000u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v72;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v17 = v73++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__status;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__status;
          goto LABEL_170;
        case 0xAu:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x200u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v36;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v17 = v37++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerSnr;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerSnr;
          goto LABEL_170;
        case 0xBu:
          v68 = 0;
          v69 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x80u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v68;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v17 = v69++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerLosPeakRatio;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerLosPeakRatio;
          goto LABEL_170;
        case 0xCu:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x40u;
          while (1)
          {
            v78 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v78 & 0x7F) << v24;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v17 = v25++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerCoreId;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerCoreId;
          goto LABEL_170;
        case 0xDu:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x20u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v32;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v17 = v33++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerBitErrorRate;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerBitErrorRate;
          goto LABEL_170;
        case 0xEu:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 68) |= 0x100u;
          while (1)
          {
            v78 = 0;
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

            v14 |= (v78 & 0x7F) << v60;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v17 = v61++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerPhyError;
              goto LABEL_173;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__peerPhyError;
          goto LABEL_170;
        case 0xFu:
          v20 = 0;
          v21 = 0;
          v14 = 0;
          *(a1 + 68) |= 2u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_174;
          }

          return 0;
      }

      while (1)
      {
        v78 = 0;
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

        v14 |= (v78 & 0x7F) << v20;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v17 = v21++ > 8;
        if (v17)
        {
          v18 = 0;
          v19 = &OBJC_IVAR___AWDWiFiRangingRttData__channel;
          goto LABEL_173;
        }
      }

      v19 = &OBJC_IVAR___AWDWiFiRangingRttData__channel;
LABEL_170:
      v18 = [a2 hasError] ? 0 : v14;
LABEL_173:
      *(a1 + *v19) = v18;
LABEL_174:
      v76 = [a2 position];
    }

    while (v76 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiRetStatsReadFrom(uint64_t a1, void *a2)
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
        v31 = 0;
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

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
      if ((v11 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v32 = 0;
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

          v15 |= (v32 & 0x7F) << v25;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v18 = v26++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDWiFiRetStats__rxDuration;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDWiFiRetStats__rxDuration;
        goto LABEL_52;
      }

      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 4u;
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
          v18 = v14++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDWiFiRetStats__timestamp;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDWiFiRetStats__timestamp;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = 0;
    v22 = 0;
    v15 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v33 = 0;
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

      v15 |= (v33 & 0x7F) << v21;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v18 = v22++ > 8;
      if (v18)
      {
        v19 = 0;
        v20 = &OBJC_IVAR___AWDWiFiRetStats__retDuration;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDWiFiRetStats__retDuration;
LABEL_52:
    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

LABEL_55:
    *(a1 + *v20) = v19;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiSDBReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v28[0]) = 0;
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

        v7 |= (v28[0] & 0x7F) << v5;
        if ((v28[0] & 0x80) == 0)
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

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
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

          v23 |= (v28[0] & 0x7F) << v21;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v10 = v22++ >= 9;
          if (v10)
          {
            v26 = 0;
            goto LABEL_46;
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

LABEL_46:
        *(a1 + 16) = v26;
      }

      else if (v12 == 2)
      {
        v19 = objc_alloc_init(AWDWiFiSDBSliceSpecific);
        [a1 addSliceStats:v19];

        v28[0] = 0;
        v28[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiSDBSliceSpecificReadFrom(v19, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
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

          v15 |= (v28[0] & 0x7F) << v13;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_50;
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

LABEL_50:
        *(a1 + 8) = v18;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiSDBSliceSpecificReadFrom(uint64_t a1, void *a2)
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
        v83 = 0;
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

        v7 |= (v83 & 0x7F) << v5;
        if ((v83 & 0x80) == 0)
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
          *(a1 + 76) |= 1u;
          while (1)
          {
            v87 = 0;
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

            v14 |= (v87 & 0x7F) << v12;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_168:
              v80 = 8;
              goto LABEL_185;
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
          *(a1 + 76) |= 0x400u;
          while (1)
          {
            v96 = 0;
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

            v56 |= (v96 & 0x7F) << v54;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v56;
          }

LABEL_172:
          v81 = 64;
          goto LABEL_190;
        case 3u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 76) |= 0x1000u;
          while (1)
          {
            v95 = 0;
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

            v41 |= (v95 & 0x7F) << v39;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_156;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v41;
          }

LABEL_156:
          v81 = 72;
          goto LABEL_190;
        case 4u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 76) |= 0x800u;
          while (1)
          {
            v94 = 0;
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

            v46 |= (v94 & 0x7F) << v44;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v46;
          }

LABEL_160:
          v81 = 68;
          goto LABEL_190;
        case 5u:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 76) |= 0x80u;
          while (1)
          {
            v93 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v93 & 0x7F) << v23;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_144;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v25;
          }

LABEL_144:
          v81 = 52;
          goto LABEL_190;
        case 6u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 76) |= 0x100u;
          while (1)
          {
            v92 = 0;
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

            v61 |= (v92 & 0x7F) << v59;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v10 = v60++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_176;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v61;
          }

LABEL_176:
          v81 = 56;
          goto LABEL_190;
        case 7u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 76) |= 0x200u;
          while (1)
          {
            v91 = 0;
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

            v67 |= (v91 & 0x7F) << v65;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v10 = v66++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_180;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v67;
          }

LABEL_180:
          v81 = 60;
          goto LABEL_190;
        case 8u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 76) |= 0x20u;
          while (1)
          {
            v90 = 0;
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

            v51 |= (v90 & 0x7F) << v49;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v10 = v50++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v51;
          }

LABEL_164:
          v81 = 44;
          goto LABEL_190;
        case 9u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 76) |= 0x40u;
          while (1)
          {
            v89 = 0;
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

            v77 |= (v89 & 0x7F) << v75;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v10 = v76++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_189;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v77;
          }

LABEL_189:
          v81 = 48;
          goto LABEL_190;
        case 0xAu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 76) |= 0x10u;
          while (1)
          {
            v88 = 0;
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

            v36 |= (v88 & 0x7F) << v34;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_152;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v36;
          }

LABEL_152:
          v81 = 40;
LABEL_190:
          *(a1 + v81) = v28;
          goto LABEL_191;
        case 0xBu:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 76) |= 8u;
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
              v17 = 0;
              goto LABEL_184;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v72;
          }

LABEL_184:
          v80 = 32;
          goto LABEL_185;
        case 0xCu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 76) |= 4u;
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
              v17 = 0;
              goto LABEL_140;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v20;
          }

LABEL_140:
          v80 = 24;
          goto LABEL_185;
        case 0xDu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 76) |= 2u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_191;
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
          v17 = 0;
          goto LABEL_148;
        }
      }

      v17 = [a2 hasError] ? 0 : v31;
LABEL_148:
      v80 = 16;
LABEL_185:
      *(a1 + v80) = v17;
LABEL_191:
      v82 = [a2 position];
    }

    while (v82 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiSlowWiFiReportReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
          v22 = objc_alloc_init(AWDLinkQualityMeasurements);
          [a1 addLinkQualSample:v22];

          v24 = 0;
          v25 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDLinkQualityMeasurementsReadFrom(v22, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_41;
        }

        if (v12 == 4)
        {
          v15 = objc_alloc_init(AWDWiFiUSBEventNotification);
          [a1 addUsbEvent:v15];

          v24 = 0;
          v25 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiUSBEventNotificationReadFrom(v15, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v10 = v17++ >= 9;
            if (v10)
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
            v21 = v18;
          }

LABEL_45:
          *(a1 + 8) = v21;
          goto LABEL_46;
        }

        if (v12 == 2)
        {
          v13 = objc_alloc_init(AWDSlowWiFiNotification);

          *(a1 + 24) = v13;
          v24 = 0;
          v25 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDSlowWiFiNotificationReadFrom(v13, a2);
          if (!result)
          {
            return result;
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
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiSoftAPReadFrom(uint64_t a1, void *a2)
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
        v94 = 0;
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

        v7 |= (v94 & 0x7F) << v5;
        if ((v94 & 0x80) == 0)
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
          *(a1 + 84) |= 8u;
          while (1)
          {
            v94 = 0;
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

            v14 |= (v94 & 0x7F) << v12;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_188:
              v92 = 32;
              goto LABEL_201;
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

          goto LABEL_188;
        case 2u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 84) |= 2u;
          while (1)
          {
            v94 = 0;
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

            v63 |= (v94 & 0x7F) << v61;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_192;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v63;
          }

LABEL_192:
          v92 = 16;
          goto LABEL_201;
        case 3u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 84) |= 0x40u;
          while (1)
          {
            v94 = 0;
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

            v47 |= (v94 & 0x7F) << v45;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v10 = v46++ >= 9;
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
            v23 = v47;
          }

LABEL_176:
          v91 = 48;
          goto LABEL_214;
        case 4u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 84) |= 0x400u;
          while (1)
          {
            v94 = 0;
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

            v53 |= (v94 & 0x7F) << v51;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
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
            v23 = v53;
          }

LABEL_180:
          v91 = 64;
          goto LABEL_214;
        case 5u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 84) |= 0x2000u;
          while (1)
          {
            v94 = 0;
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

            v31 |= (v94 & 0x7F) << v29;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_166;
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

LABEL_166:
          v91 = 76;
          goto LABEL_214;
        case 6u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 84) |= 4u;
          while (1)
          {
            v94 = 0;
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

            v68 |= (v94 & 0x7F) << v66;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_196;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v68;
          }

LABEL_196:
          v92 = 24;
          goto LABEL_201;
        case 7u:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v94 = 0;
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

            v78 |= (v94 & 0x7F) << v76;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v10 = v77++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_205;
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

LABEL_205:
          v91 = 40;
          goto LABEL_214;
        case 8u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 84) |= 0x100u;
          while (1)
          {
            v94 = 0;
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

            v58 |= (v94 & 0x7F) << v56;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
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
            v23 = v58;
          }

LABEL_184:
          v91 = 56;
          goto LABEL_214;
        case 9u:
          v86 = 0;
          v87 = 0;
          v88 = 0;
          *(a1 + 84) |= 0x20u;
          while (1)
          {
            v94 = 0;
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

            v88 |= (v94 & 0x7F) << v86;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            v10 = v87++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_213;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v88;
          }

LABEL_213:
          v91 = 44;
          goto LABEL_214;
        case 0xAu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 84) |= 0x200u;
          while (1)
          {
            v94 = 0;
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

            v42 |= (v94 & 0x7F) << v40;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v10 = v41++ >= 9;
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
            v23 = v42;
          }

LABEL_172:
          v91 = 60;
          goto LABEL_214;
        case 0xBu:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 84) |= 0x80u;
          while (1)
          {
            v94 = 0;
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

            v83 |= (v94 & 0x7F) << v81;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v10 = v82++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_209;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v83;
          }

LABEL_209:
          v91 = 52;
          goto LABEL_214;
        case 0xCu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 84) |= 0x1000u;
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
              goto LABEL_162;
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

LABEL_162:
          v91 = 72;
          goto LABEL_214;
        case 0xDu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 84) |= 0x4000u;
          while (1)
          {
            v94 = 0;
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

            v36 |= (v94 & 0x7F) << v34;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              LOBYTE(v39) = 0;
              goto LABEL_168;
            }
          }

          v39 = (v36 != 0) & ~[a2 hasError];
LABEL_168:
          *(a1 + 80) = v39;
          goto LABEL_215;
        case 0xEu:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            v94 = 0;
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

            v73 |= (v94 & 0x7F) << v71;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v10 = v72++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_200;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v73;
          }

LABEL_200:
          v92 = 8;
LABEL_201:
          *(a1 + v92) = v17;
          goto LABEL_215;
        case 0xFu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 84) |= 0x800u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_215;
      }

      while (1)
      {
        v94 = 0;
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

        v20 |= (v94 & 0x7F) << v18;
        if ((v94 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v10 = v19++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_158;
        }
      }

      v23 = [a2 hasError] ? 0 : v20;
LABEL_158:
      v91 = 68;
LABEL_214:
      *(a1 + v91) = v23;
LABEL_215:
      v93 = [a2 position];
    }

    while (v93 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiSoftAPClientReadFrom(uint64_t a1, void *a2)
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
        v55 = 0;
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

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
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
        break;
      }

      if (v12 > 5)
      {
        if (v12 == 6)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 32) |= 8u;
          while (1)
          {
            v61 = 0;
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

            v44 |= (v61 & 0x7F) << v42;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v10 = v43++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_100;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v44;
          }

LABEL_100:
          v53 = 24;
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

            goto LABEL_115;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v60 = 0;
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

            v27 |= (v60 & 0x7F) << v25;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_108;
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

LABEL_108:
          v53 = 16;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 32) |= 0x40u;
          while (1)
          {
            v57 = 0;
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

            v39 |= (v57 & 0x7F) << v37;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v10 = v38++ >= 9;
            if (v10)
            {
              LOBYTE(v24) = 0;
              goto LABEL_96;
            }
          }

          v24 = (v39 != 0) & ~[a2 hasError];
LABEL_96:
          v52 = 30;
LABEL_114:
          *(a1 + v52) = v24;
          goto LABEL_115;
        }

        if (v12 != 5)
        {
          goto LABEL_62;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v62 = 0;
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

          v15 |= (v62 & 0x7F) << v13;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_104;
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

LABEL_104:
        v53 = 20;
      }

      *(a1 + v53) = v18;
LABEL_115:
      v54 = [a2 position];
      if (v54 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 1:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v56 = 0;
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

          v32 |= (v56 & 0x7F) << v30;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            v35 = 0;
            goto LABEL_94;
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

LABEL_94:
        *(a1 + 8) = v35;
        goto LABEL_115;
      case 2:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 32) |= 0x10u;
        while (1)
        {
          v59 = 0;
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

          v49 |= (v59 & 0x7F) << v47;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v10 = v48++ >= 9;
          if (v10)
          {
            LOBYTE(v24) = 0;
            goto LABEL_113;
          }
        }

        v24 = (v49 != 0) & ~[a2 hasError];
LABEL_113:
        v52 = 28;
        break;
      case 3:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 32) |= 0x20u;
        while (1)
        {
          v58 = 0;
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

          v21 |= (v58 & 0x7F) << v19;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            LOBYTE(v24) = 0;
            goto LABEL_111;
          }
        }

        v24 = (v21 != 0) & ~[a2 hasError];
LABEL_111:
        v52 = 29;
        break;
      default:
        goto LABEL_62;
    }

    goto LABEL_114;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiTDMReadFrom(void *a1, void *a2)
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
        LOBYTE(v15[0]) = 0;
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

        v7 |= (v15[0] & 0x7F) << v5;
        if ((v15[0] & 0x80) == 0)
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

      if ((v11 >> 3) == 1)
      {
        v12 = objc_alloc_init(AWDWiFiTDMSlice);
        [a1 addSliceStats:v12];

        v15[0] = 0;
        v15[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiTDMSliceReadFrom(v12, a2);
        if (!result)
        {
          return result;
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

uint64_t AWDWiFiTDMSliceReadFrom(uint64_t a1, void *a2)
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
        v79 = 0;
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

        v7 |= (v79 & 0x7F) << v5;
        if ((v79 & 0x80) == 0)
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
      if ((v11 >> 3) <= 6)
      {
        break;
      }

      if (v12 <= 9)
      {
        switch(v12)
        {
          case 7:
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 68) |= 0x10u;
            while (1)
            {
              v82 = 0;
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

              v42 |= (v82 & 0x7F) << v40;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v10 = v41++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_165;
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

LABEL_165:
            v76 = 36;
            break;
          case 8:
            v60 = 0;
            v61 = 0;
            v62 = 0;
            *(a1 + 68) |= 0x20u;
            while (1)
            {
              v81 = 0;
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

              v62 |= (v81 & 0x7F) << v60;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v10 = v61++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_181;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v62;
            }

LABEL_181:
            v76 = 40;
            break;
          case 9:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 68) |= 8u;
            while (1)
            {
              v80 = 0;
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

              v21 |= (v80 & 0x7F) << v19;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_149;
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

LABEL_149:
            v76 = 32;
            break;
          default:
            goto LABEL_140;
        }

LABEL_186:
        *(a1 + v76) = v18;
        goto LABEL_192;
      }

      switch(v12)
      {
        case 0xA:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 68) |= 4u;
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
              v34 = 0;
              goto LABEL_173;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v52;
          }

LABEL_173:
          v77 = 24;
          break;
        case 0xB:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            v90 = 0;
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

            v72 |= (v90 & 0x7F) << v70;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v10 = v71++ >= 9;
            if (v10)
            {
              v34 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v72;
          }

LABEL_190:
          v77 = 16;
          break;
        case 0xC:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v89 = 0;
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

            v31 |= (v89 & 0x7F) << v29;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v34 = 0;
              goto LABEL_157;
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

LABEL_157:
          v77 = 8;
          break;
        default:
LABEL_140:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_192;
      }

      *(a1 + v77) = v34;
LABEL_192:
      v78 = [a2 position];
      if (v78 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 3)
    {
      switch(v12)
      {
        case 4:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 68) |= 0x40u;
          while (1)
          {
            v85 = 0;
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

            v47 |= (v85 & 0x7F) << v45;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v10 = v46++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_169;
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

LABEL_169:
          v76 = 44;
          break;
        case 5:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 68) |= 0x80u;
          while (1)
          {
            v84 = 0;
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

            v67 |= (v84 & 0x7F) << v65;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v10 = v66++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_185;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v67;
          }

LABEL_185:
          v76 = 48;
          break;
        case 6:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 68) |= 0x100u;
          while (1)
          {
            v83 = 0;
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

            v26 |= (v83 & 0x7F) << v24;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_153;
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

LABEL_153:
          v76 = 52;
          break;
        default:
          goto LABEL_140;
      }
    }

    else
    {
      switch(v12)
      {
        case 1:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 68) |= 0x200u;
          while (1)
          {
            v88 = 0;
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

            v37 |= (v88 & 0x7F) << v35;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v10 = v36++ >= 9;
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
            v18 = v37;
          }

LABEL_161:
          v76 = 56;
          break;
        case 2:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 68) |= 0x800u;
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
              v18 = 0;
              goto LABEL_177;
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

LABEL_177:
          v76 = 64;
          break;
        case 3:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 68) |= 0x400u;
          while (1)
          {
            v86 = 0;
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

            v15 |= (v86 & 0x7F) << v13;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_145;
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

LABEL_145:
          v76 = 60;
          break;
        default:
          goto LABEL_140;
      }
    }

    goto LABEL_186;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiTxInhibitEventReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v36 = 0;
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

          v26 |= (v36 & 0x7F) << v24;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            LOBYTE(v29) = 0;
            goto LABEL_54;
          }
        }

        v29 = (v26 != 0) & ~[a2 hasError];
LABEL_54:
        *(a1 + 24) = v29;
      }

      else
      {
        if (v12 == 2)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v34 = 0;
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

            v21 |= (v34 & 0x7F) << v19;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_52;
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

LABEL_52:
          v31 = 16;
        }

        else
        {
          if (v12 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_60;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v35 = 0;
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

            v15 |= (v35 & 0x7F) << v13;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_58;
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

LABEL_58:
          v31 = 8;
        }

        *(a1 + v31) = v18;
      }

LABEL_60:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiUIConfigureEventReadFrom(uint64_t a1, void *a2)
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
        v34 = 0;
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

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v37 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v37 & 0x7F) << v27;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_63;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v29;
          }

LABEL_63:
          v32 = 32;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_65;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v36 = 0;
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

            v16 |= (v36 & 0x7F) << v14;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v10 = v15++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_55;
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

LABEL_55:
          v32 = 16;
        }

        *(a1 + v32) = v19;
      }

      else if (v12 == 1)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v35 = 0;
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

          v23 |= (v35 & 0x7F) << v21;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v10 = v22++ >= 9;
          if (v10)
          {
            v26 = 0;
            goto LABEL_59;
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

LABEL_59:
        *(a1 + 8) = v26;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_32;
        }

        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

LABEL_65:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiUIEventReadFrom(uint64_t a1, void *a2)
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
        v34 = 0;
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

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v36 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v36 & 0x7F) << v27;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              LOBYTE(v32) = 0;
              goto LABEL_61;
            }
          }

          v32 = (v29 != 0) & ~[a2 hasError];
LABEL_61:
          *(a1 + 28) = v32;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v37 = 0;
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

            v16 |= (v37 & 0x7F) << v14;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v10 = v15++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_55;
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

LABEL_55:
          *(a1 + 24) = v19;
        }
      }

      else if (v12 == 1)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v35 = 0;
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

          v23 |= (v35 & 0x7F) << v21;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v10 = v22++ >= 9;
          if (v10)
          {
            v26 = 0;
            goto LABEL_59;
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

LABEL_59:
        *(a1 + 8) = v26;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_32;
        }

        String = PBReaderReadString();

        *(a1 + 16) = String;
      }

LABEL_62:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiUIJoinEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
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

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
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
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v38[0] & 0x7F) << v27;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v10 = v28++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_66;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v29;
            }

LABEL_66:
            v36 = 16;
            goto LABEL_71;
          case 5:
            String = PBReaderReadString();

            v33 = String;
            v34 = 32;
            goto LABEL_58;
          case 6:
            v19 = objc_alloc_init(AWDWiFiUIScanCount);
            [a1 addSectionCounts:v19];

            v38[0] = 0;
            v38[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiUIScanCountReadFrom(v19, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_72;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
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

              v23 |= (v38[0] & 0x7F) << v21;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_62;
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

LABEL_62:
            *(a1 + 8) = v26;
            goto LABEL_72;
          case 2:
            v32 = PBReaderReadString();

            v33 = v32;
            v34 = 24;
LABEL_58:
            *(a1 + v34) = v33;
            goto LABEL_72;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
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

              v15 |= (v38[0] & 0x7F) << v13;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_70;
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

LABEL_70:
            v36 = 48;
LABEL_71:
            *(a1 + v36) = v18;
            goto LABEL_72;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_72:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiUIScanCountReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v22 = 0;
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

          v15 |= (v22 & 0x7F) << v13;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_34;
          }
        }

        v18 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v18;
      }

      else if ((v11 >> 3) == 1)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiUIScanSessionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v29[0]) = 0;
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

        v7 |= (v29[0] & 0x7F) << v5;
        if ((v29[0] & 0x80) == 0)
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
          v26 = objc_alloc_init(AWDWiFiUIScanCount);
          [a1 addCounts:v26];

          v29[0] = 0;
          v29[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiUIScanCountReadFrom(v26, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_54;
        }

        if (v12 == 4)
        {
          String = PBReaderReadString();

          *(a1 + 32) = String;
          goto LABEL_54;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
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

            v22 |= (v29[0] & 0x7F) << v20;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_53;
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

LABEL_53:
          *(a1 + 8) = v25;
          goto LABEL_54;
        }

        if (v12 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
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

            v15 |= (v29[0] & 0x7F) << v13;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_49;
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

LABEL_49:
          *(a1 + 24) = v18;
          goto LABEL_54;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiUSBEventNotificationReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
        if (v12 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v47 = 0;
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

            v38 |= (v47 & 0x7F) << v36;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v38;
          }

LABEL_79:
          v43 = 16;
        }

        else
        {
          if (v12 != 2)
          {
LABEL_68:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_88;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v46 = 0;
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

            v21 |= (v46 & 0x7F) << v19;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_86;
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

LABEL_86:
          v43 = 20;
        }

        *(a1 + v43) = v24;
      }

      else if (v12 == 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v48 = 0;
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

          v27 |= (v48 & 0x7F) << v25;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v30 = 0;
            goto LABEL_73;
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

LABEL_73:
        *(a1 + 8) = v30;
      }

      else
      {
        if (v12 == 4)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v50 = 0;
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

            v33 |= (v50 & 0x7F) << v31;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              LOBYTE(v18) = 0;
              goto LABEL_75;
            }
          }

          v18 = (v33 != 0) & ~[a2 hasError];
LABEL_75:
          v42 = 24;
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_68;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 28) |= 0x10u;
          while (1)
          {
            v49 = 0;
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

            v15 |= (v49 & 0x7F) << v13;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              LOBYTE(v18) = 0;
              goto LABEL_81;
            }
          }

          v18 = (v15 != 0) & ~[a2 hasError];
LABEL_81:
          v42 = 25;
        }

        *(a1 + v42) = v18;
      }

LABEL_88:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiUsageSnapshotReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDWiFiWcpsStatsReadFrom(uint64_t a1, void *a2)
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
      v190 = 0;
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

      v8 |= (v190 & 0x7F) << v6;
      if ((v190 & 0x80) == 0)
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
        *(a1 + 352) |= 0x40000000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v13;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v13 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__timestamp;
          v20 = v14++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__timestamp;
        goto LABEL_451;
      case 2u:
        v97 = 0;
        v98 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x4000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v97;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v97 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__durationBucket;
          v20 = v98++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__durationBucket;
        goto LABEL_451;
      case 3u:
        v81 = 0;
        v82 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x2000000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v81;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v81 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentageActive;
          v20 = v82++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentageActive;
        goto LABEL_451;
      case 4u:
        v89 = 0;
        v90 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x4000000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v89;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v89 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentagePowerSave;
          v20 = v90++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentagePowerSave;
        goto LABEL_451;
      case 5u:
        v57 = 0;
        v58 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x10000000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v57;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v57 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentageWcpsEnabled;
          v20 = v58++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentageWcpsEnabled;
        goto LABEL_451;
      case 6u:
        v117 = 0;
        v118 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x20000000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v117;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v117 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentageWcpsReduced;
          v20 = v118++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentageWcpsReduced;
        goto LABEL_451;
      case 7u:
        v129 = 0;
        v130 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x8000000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v129;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v129 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentageWcpsDisabled;
          v20 = v130++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__percentageWcpsDisabled;
        goto LABEL_451;
      case 8u:
        v93 = 0;
        v94 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x2000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v93;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v93 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntVoGoodPeriods;
          v20 = v94++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntVoGoodPeriods;
        goto LABEL_451;
      case 9u:
        v141 = 0;
        v142 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x1000uLL;
        while (1)
        {
          v190 = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v190 & 0x7F) << v141;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v141 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntVoBadPeriods;
          v20 = v142++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntVoBadPeriods;
        goto LABEL_451;
      case 0xAu:
        v69 = 0;
        v70 = 0;
        v15 = 0;
        *(a1 + 352) |= 2uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v69;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v69 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgRssi;
          v20 = v70++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgRssi;
        goto LABEL_451;
      case 0xBu:
        v137 = 0;
        v138 = 0;
        v15 = 0;
        *(a1 + 352) |= 8uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v137;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v137 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgSnr;
          v20 = v138++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgSnr;
        goto LABEL_451;
      case 0xCu:
        v53 = 0;
        v54 = 0;
        v15 = 0;
        *(a1 + 352) |= 1uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v53;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v53 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgCca;
          v20 = v54++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgCca;
        goto LABEL_451;
      case 0xDu:
        v65 = 0;
        v66 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x10uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v65;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v65 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgTxAirLatency;
          v20 = v66++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgTxAirLatency;
        goto LABEL_451;
      case 0xEu:
        v125 = 0;
        v126 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x20uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v125;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v125 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgTxPacketLoss;
          v20 = v126++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgTxPacketLoss;
        goto LABEL_451;
      case 0xFu:
        v45 = 0;
        v46 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x40uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v45;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v45 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgTxRetrans;
          v20 = v46++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgTxRetrans;
        goto LABEL_451;
      case 0x10u:
        v85 = 0;
        v86 = 0;
        v15 = 0;
        *(a1 + 352) |= 4uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v85;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v85 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgRxRetry;
          v20 = v86++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__avgRxRetry;
        goto LABEL_451;
      case 0x11u:
        v41 = 0;
        v42 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x20000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v41;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v41 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endRssi;
          v20 = v42++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endRssi;
        goto LABEL_451;
      case 0x12u:
        v105 = 0;
        v106 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x80000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v105;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v105 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endSnr;
          v20 = v106++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endSnr;
        goto LABEL_451;
      case 0x13u:
        v133 = 0;
        v134 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x8000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v133;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v133 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endCca;
          v20 = v134++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endCca;
        goto LABEL_451;
      case 0x14u:
        v161 = 0;
        v162 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x100000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v161;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v161 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endTxAirLatency;
          v20 = v162++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endTxAirLatency;
        goto LABEL_451;
      case 0x15u:
        v113 = 0;
        v114 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x200000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v113;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v113 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endTxPacketLoss;
          v20 = v114++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endTxPacketLoss;
        goto LABEL_451;
      case 0x16u:
        v121 = 0;
        v122 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x400000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v121;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v121 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endTxRetrans;
          v20 = v122++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endTxRetrans;
        goto LABEL_451;
      case 0x17u:
        v153 = 0;
        v154 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x40000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v153;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v153 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endRxRetry;
          v20 = v154++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endRxRetry;
        goto LABEL_451;
      case 0x18u:
        v169 = 0;
        v170 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x80000000uLL;
        while (1)
        {
          v190 = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v190 & 0x7F) << v169;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v169 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minRssi;
          v20 = v170++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minRssi;
        goto LABEL_451;
      case 0x19u:
        v77 = 0;
        v78 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x200000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v77;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v77 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minSnr;
          v20 = v78++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minSnr;
        goto LABEL_451;
      case 0x1Au:
        v73 = 0;
        v74 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x40000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v73;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v73 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minCca;
          v20 = v74++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minCca;
        goto LABEL_451;
      case 0x1Bu:
        v185 = 0;
        v186 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x400000000uLL;
        while (1)
        {
          v190 = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v190 & 0x7F) << v185;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v185 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minTxAirLatency;
          v20 = v186++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minTxAirLatency;
        goto LABEL_451;
      case 0x1Cu:
        v33 = 0;
        v34 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x800000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v33;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v33 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minTxPacketLoss;
          v20 = v34++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minTxPacketLoss;
        goto LABEL_451;
      case 0x1Du:
        v173 = 0;
        v174 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x1000000000uLL;
        while (1)
        {
          v190 = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v190 & 0x7F) << v173;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v173 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minTxRetrans;
          v20 = v174++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minTxRetrans;
        goto LABEL_451;
      case 0x1Eu:
        v177 = 0;
        v178 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x100000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v177;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v177 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minRxRetry;
          v20 = v178++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__minRxRetry;
        goto LABEL_451;
      case 0x1Fu:
        v145 = 0;
        v146 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x1000000uLL;
        while (1)
        {
          v190 = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v190 & 0x7F) << v145;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v145 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxRssi;
          v20 = v146++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxRssi;
        goto LABEL_451;
      case 0x20u:
        v101 = 0;
        v102 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x20000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v101;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v101 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxnSnr;
          v20 = v102++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxnSnr;
        goto LABEL_451;
      case 0x21u:
        v149 = 0;
        v150 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x800000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v149;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v149 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxCca;
          v20 = v150++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxCca;
        goto LABEL_451;
      case 0x22u:
        v49 = 0;
        v50 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x4000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v49;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v49 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxTxAirLatency;
          v20 = v50++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxTxAirLatency;
        goto LABEL_451;
      case 0x23u:
        v37 = 0;
        v38 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x8000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v37;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v37 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxTxPacketLoss;
          v20 = v38++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxTxPacketLoss;
        goto LABEL_451;
      case 0x24u:
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x10000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v25;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v25 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxTxRetrans;
          v20 = v26++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxTxRetrans;
        goto LABEL_451;
      case 0x25u:
        v29 = 0;
        v30 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x2000000uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v29;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v29 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxRxRetry;
          v20 = v30++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__maxRxRetry;
        goto LABEL_451;
      case 0x26u:
        v21 = 0;
        v22 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x400uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v21;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v21 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntRedBtConnLatLow;
          v20 = v22++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntRedBtConnLatLow;
        goto LABEL_451;
      case 0x27u:
        v181 = 0;
        v182 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x800uLL;
        while (1)
        {
          v190 = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v190 & 0x7F) << v181;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v181 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntRedBtDisconnLatHi;
          v20 = v182++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntRedBtDisconnLatHi;
        goto LABEL_451;
      case 0x28u:
        v157 = 0;
        v158 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x100uLL;
        while (1)
        {
          v190 = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v190 & 0x7F) << v157;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v157 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntDisBtConnLatHi;
          v20 = v158++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntDisBtConnLatHi;
        goto LABEL_451;
      case 0x29u:
        v61 = 0;
        v62 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x200uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v61;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v61 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntDisBtEv3;
          v20 = v62++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntDisBtEv3;
        goto LABEL_451;
      case 0x2Au:
        v109 = 0;
        v110 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x80uLL;
        while (1)
        {
          v190 = 0;
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

          v15 |= (v190 & 0x7F) << v109;
          if ((v190 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v109 += 7;
          v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntAwdlActive;
          v20 = v110++ > 8;
          if (v20)
          {
            goto LABEL_454;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiWcpsStats__cntAwdlActive;
        goto LABEL_451;
      case 0x2Bu:
        v165 = 0;
        v166 = 0;
        v15 = 0;
        *(a1 + 352) |= 0x10000uLL;
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
      v190 = 0;
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

      v15 |= (v190 & 0x7F) << v165;
      if ((v190 & 0x80) == 0)
      {
        break;
      }

      v18 = 0;
      v165 += 7;
      v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endLinkState;
      v20 = v166++ > 8;
      if (v20)
      {
        goto LABEL_454;
      }
    }

    v19 = &OBJC_IVAR___AWDWiFiWcpsStats__endLinkState;
LABEL_451:
    if ([a2 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

LABEL_454:
    *(a1 + *v19) = v18;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiAssociationReadFrom(uint64_t a1, void *a2)
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
        v69 = 0;
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

        v7 |= (v69 & 0x7F) << v5;
        if ((v69 & 0x80) == 0)
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
          *(a1 + 104) |= 1u;
          while (1)
          {
            v70 = 0;
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

            v14 |= (v70 & 0x7F) << v12;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_130:
              *(a1 + 8) = v17;
              goto LABEL_144;
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

          goto LABEL_130;
        case 2u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 104) |= 0x10u;
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

            v50 |= (v72 & 0x7F) << v48;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v10 = v49++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_134;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v50;
          }

LABEL_134:
          v67 = 64;
          goto LABEL_143;
        case 3u:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 104) |= 4u;
          while (1)
          {
            v78 = 0;
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

            v39 |= (v78 & 0x7F) << v37;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v10 = v38++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_122;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v39;
          }

LABEL_122:
          v67 = 32;
          goto LABEL_143;
        case 4u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 104) |= 0x80u;
          while (1)
          {
            v77 = 0;
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

            v44 |= (v77 & 0x7F) << v42;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v10 = v43++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_126;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v44;
          }

LABEL_126:
          v67 = 96;
          goto LABEL_143;
        case 5u:
          Data = PBReaderReadData();

          v25 = Data;
          v26 = 24;
          goto LABEL_95;
        case 6u:
          String = PBReaderReadString();

          v25 = String;
          v26 = 88;
          goto LABEL_95;
        case 7u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 104) |= 8u;
          while (1)
          {
            v76 = 0;
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

            v57 |= (v76 & 0x7F) << v55;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v10 = v56++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_138;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v57;
          }

LABEL_138:
          v67 = 48;
          goto LABEL_143;
        case 8u:
          v47 = PBReaderReadData();

          v25 = v47;
          v26 = 56;
          goto LABEL_95;
        case 9u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 104) |= 0x20u;
          while (1)
          {
            v75 = 0;
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

            v63 |= (v75 & 0x7F) << v61;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_142;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v63;
          }

LABEL_142:
          v67 = 68;
          goto LABEL_143;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 104) |= 0x100u;
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

            v34 |= (v74 & 0x7F) << v32;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_118;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v34;
          }

LABEL_118:
          v67 = 100;
          goto LABEL_143;
        case 0xBu:
          v60 = PBReaderReadString();

          v25 = v60;
          v26 = 40;
          goto LABEL_95;
        case 0xCu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 104) |= 0x40u;
          while (1)
          {
            v71 = 0;
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

            v20 |= (v71 & 0x7F) << v18;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_110;
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

LABEL_110:
          v67 = 72;
          goto LABEL_143;
        case 0xDu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 104) |= 2u;
          break;
        case 0xEu:
          v54 = PBReaderReadString();

          v25 = v54;
          v26 = 80;
LABEL_95:
          *(a1 + v26) = v25;
          goto LABEL_144;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_144;
      }

      while (1)
      {
        v73 = 0;
        v30 = [a2 position] + 1;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v29 |= (v73 & 0x7F) << v27;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v10 = v28++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_114;
        }
      }

      v23 = [a2 hasError] ? 0 : v29;
LABEL_114:
      v67 = 16;
LABEL_143:
      *(a1 + v67) = v23;
LABEL_144:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiAwdlD2dMigrationStatsReadFrom(uint64_t a1, void *a2)
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
        v59 = 0;
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

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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
            *(a1 + 52) |= 0x20u;
            while (1)
            {
              v64 = 0;
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

              v52 |= (v64 & 0x7F) << v50;
              if ((v64 & 0x80) == 0)
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
            v57 = 40;
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

              goto LABEL_136;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              v63 = 0;
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

              v32 |= (v63 & 0x7F) << v30;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v10 = v31++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_134;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v32;
            }

LABEL_134:
            v57 = 32;
          }

          goto LABEL_135;
        }

        if (v12 == 5)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 52) |= 0x80u;
          while (1)
          {
            v65 = 0;
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

            v42 |= (v65 & 0x7F) << v40;
            if ((v65 & 0x80) == 0)
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
          v57 = 48;
LABEL_135:
          *(a1 + v57) = v18;
          goto LABEL_136;
        }

        if (v12 != 6)
        {
          goto LABEL_100;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 52) |= 4u;
        while (1)
        {
          v60 = 0;
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

          v21 |= (v60 & 0x7F) << v19;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_125;
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

LABEL_125:
        v56 = 24;
      }

      else if (v12 > 2)
      {
        if (v12 != 3)
        {
          if (v12 != 4)
          {
            goto LABEL_100;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 52) |= 0x40u;
          while (1)
          {
            v67 = 0;
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

            v27 |= (v67 & 0x7F) << v25;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_130;
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

LABEL_130:
          v57 = 44;
          goto LABEL_135;
        }

        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          v61 = 0;
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

          v47 |= (v61 & 0x7F) << v45;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v10 = v46++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_113;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v47;
        }

LABEL_113:
        v56 = 8;
      }

      else
      {
        if (v12 != 1)
        {
          if (v12 != 2)
          {
            goto LABEL_100;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 52) |= 0x10u;
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
          v57 = 36;
          goto LABEL_135;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 52) |= 2u;
        while (1)
        {
          v62 = 0;
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

          v37 |= (v62 & 0x7F) << v35;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v10 = v36++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_105;
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

LABEL_105:
        v56 = 16;
      }

      *(a1 + v56) = v24;
LABEL_136:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiAwdlHistogramBinReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) == 3)
      {
        *(a1 + 32) |= 4u;
        v23 = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v19 = v23;
        v20 = &OBJC_IVAR___AWDWifiAwdlHistogramBin__value;
        goto LABEL_37;
      }

      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        *(a1 + 32) |= 2u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v19 = v23;
        v20 = &OBJC_IVAR___AWDWifiAwdlHistogramBin__binStart;
LABEL_37:
        *(a1 + *v20) = v19;
        goto LABEL_38;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 32) |= 1u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      [objc_msgSend(a2 "data")];
      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v19 = v23;
    v20 = &OBJC_IVAR___AWDWifiAwdlHistogramBin__binEnd;
    goto LABEL_37;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiAwdlServiceRecordReadFrom(uint64_t a1, void *a2)
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

      switch(v12)
      {
        case 3:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v40 = 0;
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

            v22 |= (v40 & 0x7F) << v20;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_65;
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

LABEL_65:
          v37 = 20;
LABEL_78:
          *(a1 + v37) = v19;
          break;
        case 4:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v43 = 0;
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

            v27 |= (v43 & 0x7F) << v25;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v30 = 0;
              goto LABEL_69;
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

LABEL_69:
          *(a1 + 8) = v30;
          break;
        case 5:
          Data = PBReaderReadData();

          *(a1 + 24) = Data;
          break;
        default:
          goto LABEL_60;
      }

LABEL_79:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v42 = 0;
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

        v33 |= (v42 & 0x7F) << v31;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v10 = v32++ >= 9;
        if (v10)
        {
          v19 = 0;
          goto LABEL_73;
        }
      }

      if ([a2 hasError])
      {
        v19 = 0;
      }

      else
      {
        v19 = v33;
      }

LABEL_73:
      v37 = 16;
    }

    else
    {
      if (v12 != 2)
      {
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_79;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 8u;
      while (1)
      {
        v41 = 0;
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

        v16 |= (v41 & 0x7F) << v14;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v10 = v15++ >= 9;
        if (v10)
        {
          v19 = 0;
          goto LABEL_77;
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

LABEL_77:
      v37 = 32;
    }

    goto LABEL_78;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiAwdlStateInfoReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
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

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v28 = 0;
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

          v20 |= (v28 & 0x7F) << v18;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v10 = v19++ >= 9;
          if (v10)
          {
            v23 = 0;
            goto LABEL_46;
          }
        }

        v23 = [a2 hasError] ? 0 : v20;
LABEL_46:
        *(a1 + 8) = v23;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v27 = 0;
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

          v14 |= (v27 & 0x7F) << v12;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_42;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_42:
        *(a1 + 16) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiHardwareVersionReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
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
        String = PBReaderReadString();

        *(a1 + 16) = String;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v22 = 0;
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

          v14 |= (v22 & 0x7F) << v12;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_34;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_34:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiLinkQualityRecordReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v171) = 0;
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

      v8 |= (v171 & 0x7F) << v6;
      if ((v171 & 0x80) == 0)
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
        *(a1 + 160) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v15 |= (v171 & 0x7F) << v13;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_342:
            v167 = 136;
            goto LABEL_403;
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

        goto LABEL_342;
      case 2u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 160) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v83 |= (v171 & 0x7F) << v81;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v11 = v82++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_346;
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

LABEL_346:
        v167 = 132;
        goto LABEL_403;
      case 3u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 160) |= 0x10000000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v63 |= (v171 & 0x7F) << v61;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
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
          v18 = v63;
        }

LABEL_326:
        v167 = 144;
        goto LABEL_403;
      case 4u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 160) |= 0x200u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v73 |= (v171 & 0x7F) << v71;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v11 = v72++ >= 9;
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
          v18 = v73;
        }

LABEL_334:
        v167 = 68;
        goto LABEL_403;
      case 5u:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 160) |= 0x100u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v41 |= (v171 & 0x7F) << v39;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
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
          v18 = v41;
        }

LABEL_310:
        v167 = 64;
        goto LABEL_403;
      case 6u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 160) |= 0x2000u;
        while (1)
        {
          LOBYTE(v171) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v171 & 0x7F) << v102;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v11 = v103++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_362;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v104;
        }

LABEL_362:
        v167 = 84;
        goto LABEL_403;
      case 7u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 160) |= 0x1000u;
        while (1)
        {
          LOBYTE(v171) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v171 & 0x7F) << v117;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
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
          v18 = v119;
        }

LABEL_374:
        v167 = 80;
        goto LABEL_403;
      case 8u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 160) |= 0x8000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v78 |= (v171 & 0x7F) << v76;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
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
          v18 = v78;
        }

LABEL_338:
        v167 = 92;
        goto LABEL_403;
      case 9u:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 160) |= 0x100000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v134 |= (v171 & 0x7F) << v132;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v11 = v133++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_386;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v134;
        }

LABEL_386:
        v167 = 112;
        goto LABEL_403;
      case 0xAu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 160) |= 0x80000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v51 |= (v171 & 0x7F) << v49;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
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
          v18 = v51;
        }

LABEL_318:
        v167 = 108;
        goto LABEL_403;
      case 0xBu:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 160) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v171) = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v171 & 0x7F) << v127;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v11 = v128++ >= 9;
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
          v18 = v129;
        }

LABEL_382:
        v167 = 128;
        goto LABEL_403;
      case 0xCu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 160) |= 0x10000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v36 |= (v171 & 0x7F) << v34;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
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
          v18 = v36;
        }

LABEL_306:
        v167 = 96;
        goto LABEL_403;
      case 0xDu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 160) |= 0x40000000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v46 |= (v171 & 0x7F) << v44;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
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
          v18 = v46;
        }

LABEL_314:
        v167 = 152;
        goto LABEL_403;
      case 0xEu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 160) |= 0x8000000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v114 |= (v171 & 0x7F) << v112;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
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
          v18 = v114;
        }

LABEL_370:
        v167 = 140;
        goto LABEL_403;
      case 0xFu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 160) |= 0x4000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v31 |= (v171 & 0x7F) << v29;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_302;
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

LABEL_302:
        v167 = 88;
        goto LABEL_403;
      case 0x10u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 160) |= 0x80u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v68 |= (v171 & 0x7F) << v66;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v11 = v67++ >= 9;
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
          v18 = v68;
        }

LABEL_330:
        v167 = 60;
        goto LABEL_403;
      case 0x11u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 160) |= 0x400000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v26 |= (v171 & 0x7F) << v24;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_298;
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

LABEL_298:
        v167 = 120;
        goto LABEL_403;
      case 0x12u:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 160) |= 0x40000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v94 |= (v171 & 0x7F) << v92;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_354;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v94;
        }

LABEL_354:
        v167 = 104;
        goto LABEL_403;
      case 0x13u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 160) |= 0x20000000u;
        while (1)
        {
          LOBYTE(v171) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v171 & 0x7F) << v122;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_378;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v124;
        }

LABEL_378:
        v167 = 148;
        goto LABEL_403;
      case 0x14u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 160) |= 0x200000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v150 |= (v171 & 0x7F) << v148;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v11 = v149++ >= 9;
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
          v18 = v150;
        }

LABEL_398:
        v167 = 116;
        goto LABEL_403;
      case 0x15u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 160) |= 0x40u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v99 |= (v171 & 0x7F) << v97;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v11 = v98++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_358;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v99;
        }

LABEL_358:
        v167 = 56;
        goto LABEL_403;
      case 0x16u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 160) |= 0x400u;
        while (1)
        {
          LOBYTE(v171) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v171 & 0x7F) << v107;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_366;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v109;
        }

LABEL_366:
        v167 = 72;
        goto LABEL_403;
      case 0x17u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 160) |= 0x800u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v145 |= (v171 & 0x7F) << v143;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v11 = v144++ >= 9;
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
          v18 = v145;
        }

LABEL_394:
        v167 = 76;
        goto LABEL_403;
      case 0x18u:
        *(a1 + 160) |= 1u;
        v171 = 0;
        v153 = [a2 position] + 8;
        if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 8, v154 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v169 = v171;
        v170 = 8;
        goto LABEL_416;
      case 0x19u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 160) |= 0x800000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v58 |= (v171 & 0x7F) << v56;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_322;
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

LABEL_322:
        v167 = 124;
        goto LABEL_403;
      case 0x1Au:
        *(a1 + 160) |= 0x10u;
        v171 = 0;
        v54 = [a2 position] + 8;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 8, v55 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v169 = v171;
        v170 = 40;
        goto LABEL_416;
      case 0x1Bu:
        *(a1 + 160) |= 0x20u;
        v171 = 0;
        v165 = [a2 position] + 8;
        if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 8, v166 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v169 = v171;
        v170 = 48;
LABEL_416:
        *(a1 + v170) = v169;
        continue;
      case 0x1Cu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 160) |= 0x80000000;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v21 |= (v171 & 0x7F) << v19;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_294;
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

LABEL_294:
        v167 = 156;
        goto LABEL_403;
      case 0x1Du:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 160) |= 0x20000u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v157 |= (v171 & 0x7F) << v155;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v11 = v156++ >= 9;
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
          v18 = v157;
        }

LABEL_402:
        v167 = 100;
LABEL_403:
        *(a1 + v167) = v18;
        continue;
      case 0x1Eu:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 160) |= 2u;
        while (1)
        {
          LOBYTE(v171) = 0;
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

          v162 |= (v171 & 0x7F) << v160;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v11 = v161++ >= 9;
          if (v11)
          {
            v91 = 0;
            goto LABEL_408;
          }
        }

        if ([a2 hasError])
        {
          v91 = 0;
        }

        else
        {
          v91 = v162;
        }

LABEL_408:
        v168 = 16;
        goto LABEL_409;
      case 0x1Fu:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 160) |= 8u;
        while (1)
        {
          LOBYTE(v171) = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v171 & 0x7F) << v137;
          if ((v171 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v11 = v138++ >= 9;
          if (v11)
          {
            v91 = 0;
            goto LABEL_390;
          }
        }

        if ([a2 hasError])
        {
          v91 = 0;
        }

        else
        {
          v91 = v139;
        }

LABEL_390:
        v168 = 32;
        goto LABEL_409;
      case 0x20u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 160) |= 4u;
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
      LOBYTE(v171) = 0;
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

      v88 |= (v171 & 0x7F) << v86;
      if ((v171 & 0x80) == 0)
      {
        break;
      }

      v86 += 7;
      v11 = v87++ >= 9;
      if (v11)
      {
        v91 = 0;
        goto LABEL_350;
      }
    }

    if ([a2 hasError])
    {
      v91 = 0;
    }

    else
    {
      v91 = v88;
    }

LABEL_350:
    v168 = 24;
LABEL_409:
    *(a1 + v168) = v91;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiMetricWiFiTetheredDeviceOUIReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v22 = 0;
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

          v15 |= (v22 & 0x7F) << v13;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_34;
          }
        }

        v18 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v18;
      }

      else if ((v11 >> 3) == 1)
      {
        Data = PBReaderReadData();

        *(a1 + 16) = Data;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiMostUsedNetworksReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 5)
      {
        if (v12 <= 7)
        {
          if (v12 == 6)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 64) |= 8u;
            while (1)
            {
              LOBYTE(v58) = 0;
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

              v39 |= (v58 & 0x7F) << v37;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v10 = v38++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_116;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v39;
            }

LABEL_116:
            v56 = 44;
          }

          else
          {
            if (v12 != 7)
            {
LABEL_99:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_130;
            }

            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 64) |= 0x40u;
            while (1)
            {
              LOBYTE(v58) = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v58 & 0x7F) << v27;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v10 = v28++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_108;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v29;
            }

LABEL_108:
            v56 = 56;
          }

          goto LABEL_129;
        }

        if (v12 == 8)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 64) |= 0x20u;
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
              v18 = 0;
              goto LABEL_120;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v46;
          }

LABEL_120:
          v56 = 52;
          goto LABEL_129;
        }

        if (v12 == 9)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            LOBYTE(v58) = 0;
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

            v52 |= (v58 & 0x7F) << v50;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v10 = v51++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_128;
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

LABEL_128:
          v56 = 40;
LABEL_129:
          *(a1 + v56) = v18;
          goto LABEL_130;
        }

        if (v12 != 10)
        {
          goto LABEL_99;
        }

        String = PBReaderReadString();

        v20 = String;
        v21 = 32;
      }

      else
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v58) = 0;
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

              v34 |= (v58 & 0x7F) << v32;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_112;
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

LABEL_112:
            v56 = 16;
          }

          else
          {
            if (v12 != 2)
            {
              goto LABEL_99;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 64) |= 0x10u;
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
                v18 = 0;
                goto LABEL_104;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v24;
            }

LABEL_104:
            v56 = 48;
          }

          goto LABEL_129;
        }

        if (v12 == 3)
        {
          *(a1 + 64) |= 1u;
          v58 = 0;
          v42 = [a2 position] + 8;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v58;
          goto LABEL_130;
        }

        if (v12 != 4)
        {
          if (v12 != 5)
          {
            goto LABEL_99;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            LOBYTE(v58) = 0;
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

            v15 |= (v58 & 0x7F) << v13;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_124;
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

LABEL_124:
          v56 = 60;
          goto LABEL_129;
        }

        Data = PBReaderReadData();

        v20 = Data;
        v21 = 24;
      }

      *(a1 + v21) = v20;
LABEL_130:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiP2PAirplayHistogramBinReadFrom(uint64_t a1, void *a2)
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
        v31 = 0;
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

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
      if ((v11 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v34 = 0;
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

          v15 |= (v34 & 0x7F) << v25;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v18 = v26++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDWifiP2PAirplayHistogramBin__count;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDWifiP2PAirplayHistogramBin__count;
        goto LABEL_52;
      }

      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v33 = 0;
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

          v15 |= (v33 & 0x7F) << v13;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v18 = v14++ > 8;
          if (v18)
          {
            v19 = 0;
            v20 = &OBJC_IVAR___AWDWifiP2PAirplayHistogramBin__binStart;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDWifiP2PAirplayHistogramBin__binStart;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = 0;
    v22 = 0;
    v15 = 0;
    *(a1 + 20) |= 1u;
    while (1)
    {
      v32 = 0;
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

      v15 |= (v32 & 0x7F) << v21;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v18 = v22++ > 8;
      if (v18)
      {
        v19 = 0;
        v20 = &OBJC_IVAR___AWDWifiP2PAirplayHistogramBin__binEnd;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDWifiP2PAirplayHistogramBin__binEnd;
LABEL_52:
    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v15;
    }

LABEL_55:
    *(a1 + *v20) = v19;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiPowerStateReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
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

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v28 = 0;
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

          v20 |= (v28 & 0x7F) << v18;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v10 = v19++ >= 9;
          if (v10)
          {
            LOBYTE(v23) = 0;
            goto LABEL_44;
          }
        }

        v23 = (v20 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 16) = v23;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v27 = 0;
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

          v14 |= (v27 & 0x7F) << v12;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_42;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_42:
        *(a1 + 8) = v17;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiStatsReadFrom(uint64_t a1, void *a2)
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
        v88 = 0;
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

        v7 |= (v88 & 0x7F) << v5;
        if ((v88 & 0x80) == 0)
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
          *(a1 + 72) |= 0x1000u;
          while (1)
          {
            v99 = 0;
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

            v14 |= (v99 & 0x7F) << v12;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_177:
              v85 = 64;
              goto LABEL_203;
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

          goto LABEL_177;
        case 2u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            v101 = 0;
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

            v56 |= (v101 & 0x7F) << v54;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              v43 = 0;
              goto LABEL_181;
            }
          }

          if ([a2 hasError])
          {
            v43 = 0;
          }

          else
          {
            v43 = v56;
          }

LABEL_181:
          v86 = 16;
          goto LABEL_182;
        case 3u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v100 = 0;
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

            v40 |= (v100 & 0x7F) << v38;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v43 = 0;
              goto LABEL_165;
            }
          }

          if ([a2 hasError])
          {
            v43 = 0;
          }

          else
          {
            v43 = v40;
          }

LABEL_165:
          v86 = 8;
LABEL_182:
          *(a1 + v86) = v43;
          goto LABEL_204;
        case 4u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 72) |= 0x10u;
          while (1)
          {
            v98 = 0;
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

            v46 |= (v98 & 0x7F) << v44;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_169;
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

LABEL_169:
          v85 = 32;
          goto LABEL_203;
        case 5u:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            v97 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v97 & 0x7F) << v23;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v25;
          }

LABEL_153:
          v85 = 28;
          goto LABEL_203;
        case 6u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 72) |= 0x40u;
          while (1)
          {
            v102 = 0;
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

            v61 |= (v102 & 0x7F) << v59;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v10 = v60++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_186;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v61;
          }

LABEL_186:
          v85 = 40;
          goto LABEL_203;
        case 7u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 72) |= 0x20u;
          while (1)
          {
            v96 = 0;
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

            v71 |= (v96 & 0x7F) << v69;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v10 = v70++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_194;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v71;
          }

LABEL_194:
          v85 = 36;
          goto LABEL_203;
        case 8u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 72) |= 0x80u;
          while (1)
          {
            v95 = 0;
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

            v51 |= (v95 & 0x7F) << v49;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v10 = v50++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_173;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v51;
          }

LABEL_173:
          v85 = 44;
          goto LABEL_203;
        case 9u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 72) |= 0x2000u;
          while (1)
          {
            v94 = 0;
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

            v81 |= (v94 & 0x7F) << v79;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v10 = v80++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_202;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v81;
          }

LABEL_202:
          v85 = 68;
          goto LABEL_203;
        case 0xAu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 72) |= 0x800u;
          while (1)
          {
            v93 = 0;
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

            v35 |= (v93 & 0x7F) << v33;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v35;
          }

LABEL_161:
          v85 = 60;
          goto LABEL_203;
        case 0xBu:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 72) |= 0x400u;
          while (1)
          {
            v92 = 0;
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

            v76 |= (v92 & 0x7F) << v74;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v10 = v75++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_198;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v76;
          }

LABEL_198:
          v85 = 56;
          goto LABEL_203;
        case 0xCu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 72) |= 0x100u;
          while (1)
          {
            v91 = 0;
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

            v20 |= (v91 & 0x7F) << v18;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_149;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v20;
          }

LABEL_149:
          v85 = 48;
          goto LABEL_203;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 72) |= 0x200u;
          while (1)
          {
            v90 = 0;
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

            v30 |= (v90 & 0x7F) << v28;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_157;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v30;
          }

LABEL_157:
          v85 = 52;
          goto LABEL_203;
        case 0xEu:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 72) |= 4u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_204;
      }

      while (1)
      {
        v89 = 0;
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

        v66 |= (v89 & 0x7F) << v64;
        if ((v89 & 0x80) == 0)
        {
          break;
        }

        v64 += 7;
        v10 = v65++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_190;
        }
      }

      v17 = [a2 hasError] ? 0 : v66;
LABEL_190:
      v85 = 24;
LABEL_203:
      *(a1 + v85) = v17;
LABEL_204:
      v87 = [a2 position];
    }

    while (v87 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWifiCallingCallEndReportReadFrom(uint64_t a1, void *a2)
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
          LOBYTE(v123) = 0;
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

          v7 |= (v123 & 0x7F) << v5;
          if ((v123 & 0x80) == 0)
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
                *(a1 + 164) |= 1u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v15 |= (v123 & 0x7F) << v13;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v13 += 7;
                  v10 = v14++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
LABEL_221:
                    *(a1 + 104) = v18;
                    goto LABEL_239;
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

                goto LABEL_221;
              case 2u:
                String = PBReaderReadString();

                *(a1 + 112) = String;
                goto LABEL_239;
              case 3u:
                if (v12 != 2)
                {
                  v108 = 0;
                  v109 = 0;
                  v110 = 0;
                  while (1)
                  {
                    LOBYTE(v123) = 0;
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

                    v110 |= (v123 & 0x7F) << v108;
                    if ((v123 & 0x80) == 0)
                    {
                      goto LABEL_277;
                    }

                    v108 += 7;
                    v10 = v109++ >= 9;
                    if (v10)
                    {
                      goto LABEL_278;
                    }
                  }
                }

                v123 = 0;
                v124 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v52 = [a2 position];
                  if (v52 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_153;
                  }

                  v53 = 0;
                  v54 = 0;
                  v55 = 0;
                  while (1)
                  {
                    v125 = 0;
                    v56 = [a2 position] + 1;
                    if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v55 |= (v125 & 0x7F) << v53;
                    if ((v125 & 0x80) == 0)
                    {
                      break;
                    }

                    v53 += 7;
                    v10 = v54++ >= 9;
                    if (v10)
                    {
                      goto LABEL_101;
                    }
                  }

                  [a2 hasError];
LABEL_101:
                  PBRepeatedUInt32Add();
                }

              case 4u:
                if (v12 != 2)
                {
                  v113 = 0;
                  v114 = 0;
                  v115 = 0;
                  while (1)
                  {
                    LOBYTE(v123) = 0;
                    v116 = [a2 position] + 1;
                    if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v115 |= (v123 & 0x7F) << v113;
                    if ((v123 & 0x80) == 0)
                    {
                      goto LABEL_277;
                    }

                    v113 += 7;
                    v10 = v114++ >= 9;
                    if (v10)
                    {
                      goto LABEL_278;
                    }
                  }
                }

                v123 = 0;
                v124 = 0;
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
                    goto LABEL_153;
                  }

                  v64 = 0;
                  v65 = 0;
                  v66 = 0;
                  while (1)
                  {
                    v125 = 0;
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

                    v66 |= (v125 & 0x7F) << v64;
                    if ((v125 & 0x80) == 0)
                    {
                      break;
                    }

                    v64 += 7;
                    v10 = v65++ >= 9;
                    if (v10)
                    {
                      goto LABEL_125;
                    }
                  }

                  [a2 hasError];
LABEL_125:
                  PBRepeatedUInt32Add();
                }

              case 5u:
                if (v12 != 2)
                {
                  v103 = 0;
                  v104 = 0;
                  v105 = 0;
                  while (1)
                  {
                    LOBYTE(v123) = 0;
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

                    v105 |= (v123 & 0x7F) << v103;
                    if ((v123 & 0x80) == 0)
                    {
                      goto LABEL_277;
                    }

                    v103 += 7;
                    v10 = v104++ >= 9;
                    if (v10)
                    {
                      goto LABEL_278;
                    }
                  }
                }

                v123 = 0;
                v124 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v36 = [a2 position];
                  if (v36 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_153;
                  }

                  v37 = 0;
                  v38 = 0;
                  v39 = 0;
                  while (1)
                  {
                    v125 = 0;
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

                    v39 |= (v125 & 0x7F) << v37;
                    if ((v125 & 0x80) == 0)
                    {
                      break;
                    }

                    v37 += 7;
                    v10 = v38++ >= 9;
                    if (v10)
                    {
                      goto LABEL_68;
                    }
                  }

                  [a2 hasError];
LABEL_68:
                  PBRepeatedUInt32Add();
                }

              case 6u:
                if (v12 == 2)
                {
                  v123 = 0;
                  v124 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v75 = [a2 position];
                    if (v75 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v76 = 0;
                    v77 = 0;
                    v78 = 0;
                    while (1)
                    {
                      v125 = 0;
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

                      v78 |= (v125 & 0x7F) << v76;
                      if ((v125 & 0x80) == 0)
                      {
                        break;
                      }

                      v76 += 7;
                      v10 = v77++ >= 9;
                      if (v10)
                      {
                        goto LABEL_152;
                      }
                    }

                    [a2 hasError];
LABEL_152:
                    PBRepeatedUInt32Add();
                  }

LABEL_153:
                  PBReaderRecallMark();
                }

                else
                {
                  v118 = 0;
                  v119 = 0;
                  v120 = 0;
                  while (1)
                  {
                    LOBYTE(v123) = 0;
                    v121 = [a2 position] + 1;
                    if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v120 |= (v123 & 0x7F) << v118;
                    if ((v123 & 0x80) == 0)
                    {
                      break;
                    }

                    v118 += 7;
                    v10 = v119++ >= 9;
                    if (v10)
                    {
                      goto LABEL_278;
                    }
                  }

LABEL_277:
                  [a2 hasError];
LABEL_278:
                  PBRepeatedUInt32Add();
                }

LABEL_239:
                v102 = [a2 position];
                if (v102 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              case 7u:
                v86 = 0;
                v87 = 0;
                v88 = 0;
                *(a1 + 164) |= 0x100u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v88 |= (v123 & 0x7F) << v86;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v86 += 7;
                  v10 = v87++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_229;
                  }
                }

                if ([a2 hasError])
                {
                  v24 = 0;
                }

                else
                {
                  v24 = v88;
                }

LABEL_229:
                v101 = 148;
                goto LABEL_238;
              case 8u:
                v69 = 0;
                v70 = 0;
                v71 = 0;
                *(a1 + 164) |= 0x40u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v71 |= (v123 & 0x7F) << v69;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v69 += 7;
                  v10 = v70++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_217;
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

LABEL_217:
                v101 = 140;
                goto LABEL_238;
              case 9u:
                v96 = 0;
                v97 = 0;
                v98 = 0;
                *(a1 + 164) |= 4u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v98 |= (v123 & 0x7F) << v96;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v96 += 7;
                  v10 = v97++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_237;
                  }
                }

                if ([a2 hasError])
                {
                  v24 = 0;
                }

                else
                {
                  v24 = v98;
                }

LABEL_237:
                v101 = 124;
                goto LABEL_238;
              case 0xAu:
                v47 = 0;
                v48 = 0;
                v49 = 0;
                *(a1 + 164) |= 0x10u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v49 |= (v123 & 0x7F) << v47;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v47 += 7;
                  v10 = v48++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_209;
                  }
                }

                if ([a2 hasError])
                {
                  v24 = 0;
                }

                else
                {
                  v24 = v49;
                }

LABEL_209:
                v101 = 132;
                goto LABEL_238;
              case 0xBu:
                v91 = 0;
                v92 = 0;
                v93 = 0;
                *(a1 + 164) |= 0x20u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v93 |= (v123 & 0x7F) << v91;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v91 += 7;
                  v10 = v92++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_233;
                  }
                }

                if ([a2 hasError])
                {
                  v24 = 0;
                }

                else
                {
                  v24 = v93;
                }

LABEL_233:
                v101 = 136;
                goto LABEL_238;
              case 0xCu:
                v30 = 0;
                v31 = 0;
                v32 = 0;
                *(a1 + 164) |= 8u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v32 |= (v123 & 0x7F) << v30;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v30 += 7;
                  v10 = v31++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_201;
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

LABEL_201:
                v101 = 128;
                goto LABEL_238;
              case 0xDu:
                v42 = 0;
                v43 = 0;
                v44 = 0;
                *(a1 + 164) |= 0x80u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v44 |= (v123 & 0x7F) << v42;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v42 += 7;
                  v10 = v43++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_205;
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

LABEL_205:
                v101 = 144;
                goto LABEL_238;
              case 0xEu:
                v81 = 0;
                v82 = 0;
                v83 = 0;
                *(a1 + 164) |= 0x800u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v83 |= (v123 & 0x7F) << v81;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v81 += 7;
                  v10 = v82++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_225;
                  }
                }

                if ([a2 hasError])
                {
                  v24 = 0;
                }

                else
                {
                  v24 = v83;
                }

LABEL_225:
                v101 = 160;
                goto LABEL_238;
              case 0xFu:
                v25 = 0;
                v26 = 0;
                v27 = 0;
                *(a1 + 164) |= 0x400u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v27 |= (v123 & 0x7F) << v25;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v25 += 7;
                  v10 = v26++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_197;
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

LABEL_197:
                v101 = 156;
                goto LABEL_238;
              case 0x10u:
                v58 = 0;
                v59 = 0;
                v60 = 0;
                *(a1 + 164) |= 0x200u;
                while (1)
                {
                  LOBYTE(v123) = 0;
                  v61 = [a2 position] + 1;
                  if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                  {
                    [objc_msgSend(a2 "data")];
                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v60 |= (v123 & 0x7F) << v58;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v58 += 7;
                  v10 = v59++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_213;
                  }
                }

                if ([a2 hasError])
                {
                  v24 = 0;
                }

                else
                {
                  v24 = v60;
                }

LABEL_213:
                v101 = 152;
                goto LABEL_238;
              case 0x11u:
                v19 = 0;
                v20 = 0;
                v21 = 0;
                *(a1 + 164) |= 2u;
                while (1)
                {
                  LOBYTE(v123) = 0;
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

                  v21 |= (v123 & 0x7F) << v19;
                  if ((v123 & 0x80) == 0)
                  {
                    break;
                  }

                  v19 += 7;
                  v10 = v20++ >= 9;
                  if (v10)
                  {
                    v24 = 0;
                    goto LABEL_193;
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

LABEL_193:
                v101 = 120;
LABEL_238:
                *(a1 + v101) = v24;
                goto LABEL_239;
              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_239;
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

uint64_t AWDThroughputEvaluationReadFrom(uint64_t a1, void *a2)
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
        v499 = 0;
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

        v7 |= (v499 & 0x7F) << v5;
        if ((v499 & 0x80) == 0)
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
          *(a1 + 400) |= 0x200000000uLL;
          while (1)
          {
            v499 = 0;
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

            v14 |= (v499 & 0x7F) << v12;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_1054:
              v496 = 152;
              goto LABEL_1242;
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

          goto LABEL_1054;
        case 2u:
          v256 = 0;
          v257 = 0;
          v258 = 0;
          *(a1 + 400) |= 0x100uLL;
          while (1)
          {
            v499 = 0;
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

            v258 |= (v499 & 0x7F) << v256;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v256 += 7;
            v10 = v257++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1058;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v258;
          }

LABEL_1058:
          v496 = 52;
          goto LABEL_1242;
        case 3u:
          v230 = 0;
          v231 = 0;
          v232 = 0;
          *(a1 + 400) |= 1uLL;
          while (1)
          {
            v499 = 0;
            v233 = [a2 position] + 1;
            if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 1, v234 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v232 |= (v499 & 0x7F) << v230;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v230 += 7;
            v10 = v231++ >= 9;
            if (v10)
            {
              v235 = 0;
              goto LABEL_1034;
            }
          }

          if ([a2 hasError])
          {
            v235 = 0;
          }

          else
          {
            v235 = v232;
          }

LABEL_1034:
          *(a1 + 8) = -(v235 & 1) ^ (v235 >> 1);
          goto LABEL_1243;
        case 4u:
          v246 = 0;
          v247 = 0;
          v248 = 0;
          *(a1 + 400) |= 0x400000000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v248 |= (v499 & 0x7F) << v246;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v246 += 7;
            v10 = v247++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1046;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v248;
          }

LABEL_1046:
          v496 = 252;
          goto LABEL_1242;
        case 5u:
          v190 = 0;
          v191 = 0;
          v192 = 0;
          *(a1 + 400) |= 0x4000000000000000uLL;
          while (1)
          {
            v499 = 0;
            v193 = [a2 position] + 1;
            if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v192 |= (v499 & 0x7F) << v190;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v190 += 7;
            v10 = v191++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1006;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v192;
          }

LABEL_1006:
          v496 = 268;
          goto LABEL_1242;
        case 6u:
          v301 = 0;
          v302 = 0;
          v303 = 0;
          *(a1 + 400) |= 0x200uLL;
          while (1)
          {
            v499 = 0;
            v304 = [a2 position] + 1;
            if (v304 >= [a2 position] && (v305 = objc_msgSend(a2, "position") + 1, v305 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v303 |= (v499 & 0x7F) << v301;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v301 += 7;
            v10 = v302++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1093;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v303;
          }

LABEL_1093:
          v496 = 56;
          goto LABEL_1242;
        case 7u:
          v326 = 0;
          v327 = 0;
          v328 = 0;
          *(a1 + 400) |= 0x20uLL;
          while (1)
          {
            v499 = 0;
            v329 = [a2 position] + 1;
            if (v329 >= [a2 position] && (v330 = objc_msgSend(a2, "position") + 1, v330 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v328 |= (v499 & 0x7F) << v326;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v326 += 7;
            v10 = v327++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1113;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v328;
          }

LABEL_1113:
          v496 = 40;
          goto LABEL_1242;
        case 8u:
          v251 = 0;
          v252 = 0;
          v253 = 0;
          *(a1 + 400) |= 0x800000000uLL;
          while (1)
          {
            v499 = 0;
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

            v253 |= (v499 & 0x7F) << v251;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v251 += 7;
            v10 = v252++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1050;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v253;
          }

LABEL_1050:
          v496 = 160;
          goto LABEL_1242;
        case 9u:
          v341 = 0;
          v342 = 0;
          v343 = 0;
          *(a1 + 408) |= 0x200000u;
          while (1)
          {
            v499 = 0;
            v344 = [a2 position] + 1;
            if (v344 >= [a2 position] && (v345 = objc_msgSend(a2, "position") + 1, v345 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v343 |= (v499 & 0x7F) << v341;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v341 += 7;
            v10 = v342++ >= 9;
            if (v10)
            {
              v346 = 0;
              goto LABEL_1125;
            }
          }

          if ([a2 hasError])
          {
            v346 = 0;
          }

          else
          {
            v346 = v343;
          }

LABEL_1125:
          v17 = -(v346 & 1) ^ (v346 >> 1);
          v496 = 368;
          goto LABEL_1242;
        case 0xAu:
          v213 = 0;
          v214 = 0;
          v215 = 0;
          *(a1 + 400) |= 0x1000000000000000uLL;
          while (1)
          {
            v499 = 0;
            v216 = [a2 position] + 1;
            if (v216 >= [a2 position] && (v217 = objc_msgSend(a2, "position") + 1, v217 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v215 |= (v499 & 0x7F) << v213;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v213 += 7;
            v10 = v214++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1022;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v215;
          }

LABEL_1022:
          v496 = 260;
          goto LABEL_1242;
        case 0xBu:
          v336 = 0;
          v337 = 0;
          v338 = 0;
          *(a1 + 400) |= 0x2000000000000000uLL;
          while (1)
          {
            v499 = 0;
            v339 = [a2 position] + 1;
            if (v339 >= [a2 position] && (v340 = objc_msgSend(a2, "position") + 1, v340 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v338 |= (v499 & 0x7F) << v336;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v336 += 7;
            v10 = v337++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1121;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v338;
          }

LABEL_1121:
          v496 = 264;
          goto LABEL_1242;
        case 0xCu:
          v175 = 0;
          v176 = 0;
          v177 = 0;
          *(a1 + 400) |= 0x40000000000uLL;
          while (1)
          {
            v499 = 0;
            v178 = [a2 position] + 1;
            if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v177 |= (v499 & 0x7F) << v175;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v175 += 7;
            v10 = v176++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_994;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v177;
          }

LABEL_994:
          v496 = 188;
          goto LABEL_1242;
        case 0xDu:
          v208 = 0;
          v209 = 0;
          v210 = 0;
          *(a1 + 400) |= 0x200000000000000uLL;
          while (1)
          {
            v499 = 0;
            v211 = [a2 position] + 1;
            if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v210 |= (v499 & 0x7F) << v208;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v208 += 7;
            v10 = v209++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1018;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v210;
          }

LABEL_1018:
          v496 = 248;
          goto LABEL_1242;
        case 0xEu:
          v321 = 0;
          v322 = 0;
          v323 = 0;
          *(a1 + 400) |= 0x400000000uLL;
          while (1)
          {
            v499 = 0;
            v324 = [a2 position] + 1;
            if (v324 >= [a2 position] && (v325 = objc_msgSend(a2, "position") + 1, v325 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v323 |= (v499 & 0x7F) << v321;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v321 += 7;
            v10 = v322++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1109;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v323;
          }

LABEL_1109:
          v496 = 156;
          goto LABEL_1242;
        case 0xFu:
          v150 = 0;
          v151 = 0;
          v152 = 0;
          *(a1 + 400) |= 0x100000000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v152 |= (v499 & 0x7F) << v150;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v150 += 7;
            v10 = v151++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_974;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v152;
          }

LABEL_974:
          v496 = 244;
          goto LABEL_1242;
        case 0x10u:
          v236 = 0;
          v237 = 0;
          v238 = 0;
          *(a1 + 400) |= 0x10uLL;
          while (1)
          {
            v499 = 0;
            v239 = [a2 position] + 1;
            if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 1, v240 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v238 |= (v499 & 0x7F) << v236;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v236 += 7;
            v10 = v237++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1038;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v238;
          }

LABEL_1038:
          v496 = 36;
          goto LABEL_1242;
        case 0x11u:
          v135 = 0;
          v136 = 0;
          v137 = 0;
          *(a1 + 400) |= 0x2000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v137 |= (v499 & 0x7F) << v135;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v135 += 7;
            v10 = v136++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_962;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v137;
          }

LABEL_962:
          v496 = 168;
          goto LABEL_1242;
        case 0x12u:
          v271 = 0;
          v272 = 0;
          v273 = 0;
          *(a1 + 400) |= 0x8000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v273 |= (v499 & 0x7F) << v271;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v271 += 7;
            v10 = v272++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1070;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v273;
          }

LABEL_1070:
          v496 = 176;
          goto LABEL_1242;
        case 0x13u:
          v331 = 0;
          v332 = 0;
          v333 = 0;
          *(a1 + 400) |= 8uLL;
          while (1)
          {
            v499 = 0;
            v334 = [a2 position] + 1;
            if (v334 >= [a2 position] && (v335 = objc_msgSend(a2, "position") + 1, v335 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v333 |= (v499 & 0x7F) << v331;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v331 += 7;
            v10 = v332++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1117;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v333;
          }

LABEL_1117:
          v496 = 32;
          goto LABEL_1242;
        case 0x14u:
          v378 = 0;
          v379 = 0;
          v380 = 0;
          *(a1 + 400) |= 0x1000000000uLL;
          while (1)
          {
            v499 = 0;
            v381 = [a2 position] + 1;
            if (v381 >= [a2 position] && (v382 = objc_msgSend(a2, "position") + 1, v382 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v380 |= (v499 & 0x7F) << v378;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v378 += 7;
            v10 = v379++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1153;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v380;
          }

LABEL_1153:
          v496 = 164;
          goto LABEL_1242;
        case 0x15u:
          v291 = 0;
          v292 = 0;
          v293 = 0;
          *(a1 + 400) |= 0x4000000000uLL;
          while (1)
          {
            v499 = 0;
            v294 = [a2 position] + 1;
            if (v294 >= [a2 position] && (v295 = objc_msgSend(a2, "position") + 1, v295 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v293 |= (v499 & 0x7F) << v291;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v291 += 7;
            v10 = v292++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1085;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v293;
          }

LABEL_1085:
          v496 = 172;
          goto LABEL_1242;
        case 0x16u:
          v316 = 0;
          v317 = 0;
          v318 = 0;
          *(a1 + 400) |= 0x80000000000uLL;
          while (1)
          {
            v499 = 0;
            v319 = [a2 position] + 1;
            if (v319 >= [a2 position] && (v320 = objc_msgSend(a2, "position") + 1, v320 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v318 |= (v499 & 0x7F) << v316;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v316 += 7;
            v10 = v317++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1105;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v318;
          }

LABEL_1105:
          v496 = 192;
          goto LABEL_1242;
        case 0x17u:
          String = PBReaderReadString();

          v201 = String;
          v202 = 272;
          goto LABEL_641;
        case 0x18u:
          v398 = 0;
          v399 = 0;
          v400 = 0;
          *(a1 + 400) |= 0x100000uLL;
          while (1)
          {
            v499 = 0;
            v401 = [a2 position] + 1;
            if (v401 >= [a2 position] && (v402 = objc_msgSend(a2, "position") + 1, v402 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v400 |= (v499 & 0x7F) << v398;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v398 += 7;
            v10 = v399++ >= 9;
            if (v10)
            {
              v403 = 0;
              goto LABEL_1169;
            }
          }

          if ([a2 hasError])
          {
            v403 = 0;
          }

          else
          {
            v403 = v400;
          }

LABEL_1169:
          v17 = -(v403 & 1) ^ (v403 >> 1);
          v496 = 100;
          goto LABEL_1242;
        case 0x19u:
          v224 = 0;
          v225 = 0;
          v226 = 0;
          *(a1 + 400) |= 0x200000uLL;
          while (1)
          {
            v499 = 0;
            v227 = [a2 position] + 1;
            if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v226 |= (v499 & 0x7F) << v224;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v224 += 7;
            v10 = v225++ >= 9;
            if (v10)
            {
              v229 = 0;
              goto LABEL_1030;
            }
          }

          if ([a2 hasError])
          {
            v229 = 0;
          }

          else
          {
            v229 = v226;
          }

LABEL_1030:
          v17 = -(v229 & 1) ^ (v229 >> 1);
          v496 = 104;
          goto LABEL_1242;
        case 0x1Au:
          v218 = 0;
          v219 = 0;
          v220 = 0;
          *(a1 + 400) |= 0x40uLL;
          while (1)
          {
            v499 = 0;
            v221 = [a2 position] + 1;
            if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v220 |= (v499 & 0x7F) << v218;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v218 += 7;
            v10 = v219++ >= 9;
            if (v10)
            {
              v223 = 0;
              goto LABEL_1026;
            }
          }

          if ([a2 hasError])
          {
            v223 = 0;
          }

          else
          {
            v223 = v220;
          }

LABEL_1026:
          v17 = -(v223 & 1) ^ (v223 >> 1);
          v496 = 44;
          goto LABEL_1242;
        case 0x1Bu:
          v420 = 0;
          v421 = 0;
          v422 = 0;
          *(a1 + 408) |= 0x200u;
          while (1)
          {
            v499 = 0;
            v423 = [a2 position] + 1;
            if (v423 >= [a2 position] && (v424 = objc_msgSend(a2, "position") + 1, v424 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v422 |= (v499 & 0x7F) << v420;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v420 += 7;
            v10 = v421++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1185;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v422;
          }

LABEL_1185:
          v496 = 320;
          goto LABEL_1242;
        case 0x1Cu:
          v125 = 0;
          v126 = 0;
          v127 = 0;
          *(a1 + 408) |= 4u;
          while (1)
          {
            v499 = 0;
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

            v127 |= (v499 & 0x7F) << v125;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v125 += 7;
            v10 = v126++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_954;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v127;
          }

LABEL_954:
          v496 = 292;
          goto LABEL_1242;
        case 0x1Du:
          v404 = 0;
          v405 = 0;
          v406 = 0;
          *(a1 + 400) |= 0x20000000000uLL;
          while (1)
          {
            v499 = 0;
            v407 = [a2 position] + 1;
            if (v407 >= [a2 position] && (v408 = objc_msgSend(a2, "position") + 1, v408 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v406 |= (v499 & 0x7F) << v404;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v404 += 7;
            v10 = v405++ >= 9;
            if (v10)
            {
              v409 = 0;
              goto LABEL_1173;
            }
          }

          if ([a2 hasError])
          {
            v409 = 0;
          }

          else
          {
            v409 = v406;
          }

LABEL_1173:
          v17 = -(v409 & 1) ^ (v409 >> 1);
          v496 = 184;
          goto LABEL_1242;
        case 0x1Eu:
          v410 = 0;
          v411 = 0;
          v412 = 0;
          *(a1 + 408) |= 0x8000000u;
          while (1)
          {
            v499 = 0;
            v413 = [a2 position] + 1;
            if (v413 >= [a2 position] && (v414 = objc_msgSend(a2, "position") + 1, v414 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v412 |= (v499 & 0x7F) << v410;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v410 += 7;
            v10 = v411++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1177;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v412;
          }

LABEL_1177:
          v496 = 392;
          goto LABEL_1242;
        case 0x1Fu:
          v347 = 0;
          v348 = 0;
          v349 = 0;
          *(a1 + 400) |= 4uLL;
          while (1)
          {
            v499 = 0;
            v350 = [a2 position] + 1;
            if (v350 >= [a2 position] && (v351 = objc_msgSend(a2, "position") + 1, v351 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v349 |= (v499 & 0x7F) << v347;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v347 += 7;
            v10 = v348++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1129;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v349;
          }

LABEL_1129:
          v496 = 20;
          goto LABEL_1242;
        case 0x20u:
          v266 = 0;
          v267 = 0;
          v268 = 0;
          *(a1 + 400) |= 2uLL;
          while (1)
          {
            v499 = 0;
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

            v268 |= (v499 & 0x7F) << v266;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v266 += 7;
            v10 = v267++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1066;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v268;
          }

LABEL_1066:
          v496 = 16;
          goto LABEL_1242;
        case 0x21u:
          v352 = 0;
          v353 = 0;
          v354 = 0;
          *(a1 + 400) |= 0x80000000uLL;
          while (1)
          {
            v499 = 0;
            v355 = [a2 position] + 1;
            if (v355 >= [a2 position] && (v356 = objc_msgSend(a2, "position") + 1, v356 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v354 |= (v499 & 0x7F) << v352;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v352 += 7;
            v10 = v353++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1133;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v354;
          }

LABEL_1133:
          v496 = 144;
          goto LABEL_1242;
        case 0x22u:
          v155 = 0;
          v156 = 0;
          v157 = 0;
          *(a1 + 400) |= 0x40000000uLL;
          while (1)
          {
            v499 = 0;
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

            v157 |= (v499 & 0x7F) << v155;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v155 += 7;
            v10 = v156++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_978;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v157;
          }

LABEL_978:
          v496 = 140;
          goto LABEL_1242;
        case 0x23u:
          v130 = 0;
          v131 = 0;
          v132 = 0;
          *(a1 + 400) |= 0x8000000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v132 |= (v499 & 0x7F) << v130;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v130 += 7;
            v10 = v131++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_958;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v132;
          }

LABEL_958:
          v496 = 224;
          goto LABEL_1242;
        case 0x24u:
          v109 = 0;
          v110 = 0;
          v111 = 0;
          *(a1 + 400) |= 0x4000000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v111 |= (v499 & 0x7F) << v109;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v109 += 7;
            v10 = v110++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_942;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v111;
          }

LABEL_942:
          v496 = 220;
          goto LABEL_1242;
        case 0x25u:
          v114 = 0;
          v115 = 0;
          v116 = 0;
          *(a1 + 400) |= 0x10000000uLL;
          while (1)
          {
            v499 = 0;
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

            v116 |= (v499 & 0x7F) << v114;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v114 += 7;
            v10 = v115++ >= 9;
            if (v10)
            {
              v119 = 0;
              goto LABEL_946;
            }
          }

          if ([a2 hasError])
          {
            v119 = 0;
          }

          else
          {
            v119 = v116;
          }

LABEL_946:
          v17 = -(v119 & 1) ^ (v119 >> 1);
          v496 = 132;
          goto LABEL_1242;
        case 0x26u:
          v83 = 0;
          v84 = 0;
          v85 = 0;
          *(a1 + 400) |= 0x400000000000uLL;
          while (1)
          {
            v499 = 0;
            v86 = [a2 position] + 1;
            if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v85 |= (v499 & 0x7F) << v83;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v83 += 7;
            v10 = v84++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_924;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v85;
          }

LABEL_924:
          v496 = 204;
          goto LABEL_1242;
        case 0x27u:
          v415 = 0;
          v416 = 0;
          v417 = 0;
          *(a1 + 400) |= 0x800000000000000uLL;
          while (1)
          {
            v499 = 0;
            v418 = [a2 position] + 1;
            if (v418 >= [a2 position] && (v419 = objc_msgSend(a2, "position") + 1, v419 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v417 |= (v499 & 0x7F) << v415;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v415 += 7;
            v10 = v416++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1181;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v417;
          }

LABEL_1181:
          v496 = 256;
          goto LABEL_1242;
        case 0x28u:
          v373 = 0;
          v374 = 0;
          v375 = 0;
          *(a1 + 400) |= 0x8000000uLL;
          while (1)
          {
            v499 = 0;
            v376 = [a2 position] + 1;
            if (v376 >= [a2 position] && (v377 = objc_msgSend(a2, "position") + 1, v377 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v375 |= (v499 & 0x7F) << v373;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v373 += 7;
            v10 = v374++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1149;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v375;
          }

LABEL_1149:
          v496 = 128;
          goto LABEL_1242;
        case 0x29u:
          v195 = 0;
          v196 = 0;
          v197 = 0;
          *(a1 + 400) |= 0x4000000uLL;
          while (1)
          {
            v499 = 0;
            v198 = [a2 position] + 1;
            if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 1, v199 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v197 |= (v499 & 0x7F) << v195;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v195 += 7;
            v10 = v196++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1010;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v197;
          }

LABEL_1010:
          v496 = 124;
          goto LABEL_1242;
        case 0x2Au:
          v281 = 0;
          v282 = 0;
          v283 = 0;
          *(a1 + 408) |= 0x800u;
          while (1)
          {
            v499 = 0;
            v284 = [a2 position] + 1;
            if (v284 >= [a2 position] && (v285 = objc_msgSend(a2, "position") + 1, v285 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v283 |= (v499 & 0x7F) << v281;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v281 += 7;
            v10 = v282++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1078;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v283;
          }

LABEL_1078:
          v496 = 328;
          goto LABEL_1242;
        case 0x2Bu:
          v388 = 0;
          v389 = 0;
          v390 = 0;
          *(a1 + 408) |= 0x400u;
          while (1)
          {
            v499 = 0;
            v391 = [a2 position] + 1;
            if (v391 >= [a2 position] && (v392 = objc_msgSend(a2, "position") + 1, v392 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v390 |= (v499 & 0x7F) << v388;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v388 += 7;
            v10 = v389++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1161;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v390;
          }

LABEL_1161:
          v496 = 324;
          goto LABEL_1242;
        case 0x2Cu:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 408) |= 8u;
          while (1)
          {
            v499 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v499 & 0x7F) << v63;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v10 = v64++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_908;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v65;
          }

LABEL_908:
          v496 = 296;
          goto LABEL_1242;
        case 0x2Du:
          v145 = 0;
          v146 = 0;
          v147 = 0;
          *(a1 + 408) |= 0x2000u;
          while (1)
          {
            v499 = 0;
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

            v147 |= (v499 & 0x7F) << v145;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v145 += 7;
            v10 = v146++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_970;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v147;
          }

LABEL_970:
          v496 = 336;
          goto LABEL_1242;
        case 0x2Eu:
          v357 = 0;
          v358 = 0;
          v359 = 0;
          *(a1 + 408) |= 0x1000u;
          while (1)
          {
            v499 = 0;
            v360 = [a2 position] + 1;
            if (v360 >= [a2 position] && (v361 = objc_msgSend(a2, "position") + 1, v361 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v359 |= (v499 & 0x7F) << v357;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v357 += 7;
            v10 = v358++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1137;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v359;
          }

LABEL_1137:
          v496 = 332;
          goto LABEL_1242;
        case 0x2Fu:
          v445 = 0;
          v446 = 0;
          v447 = 0;
          *(a1 + 408) |= 0x4000u;
          while (1)
          {
            v499 = 0;
            v448 = [a2 position] + 1;
            if (v448 >= [a2 position] && (v449 = objc_msgSend(a2, "position") + 1, v449 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v447 |= (v499 & 0x7F) << v445;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v445 += 7;
            v10 = v446++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1205;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v447;
          }

LABEL_1205:
          v496 = 340;
          goto LABEL_1242;
        case 0x30u:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *(a1 + 408) |= 0x8000u;
          while (1)
          {
            v499 = 0;
            v96 = [a2 position] + 1;
            if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v95 |= (v499 & 0x7F) << v93;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            v10 = v94++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_932;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v95;
          }

LABEL_932:
          v496 = 344;
          goto LABEL_1242;
        case 0x31u:
          v160 = 0;
          v161 = 0;
          v162 = 0;
          *(a1 + 400) |= 0x400000uLL;
          while (1)
          {
            v499 = 0;
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

            v162 |= (v499 & 0x7F) << v160;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v160 += 7;
            v10 = v161++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_982;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v162;
          }

LABEL_982:
          v496 = 108;
          goto LABEL_1242;
        case 0x32u:
          v185 = 0;
          v186 = 0;
          v187 = 0;
          *(a1 + 400) |= 0x800000uLL;
          while (1)
          {
            v499 = 0;
            v188 = [a2 position] + 1;
            if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v187 |= (v499 & 0x7F) << v185;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v185 += 7;
            v10 = v186++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1002;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v187;
          }

LABEL_1002:
          v496 = 112;
          goto LABEL_1242;
        case 0x33u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 400) |= 0x1000000uLL;
          while (1)
          {
            v499 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v499 & 0x7F) << v53;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v10 = v54++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_900;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v55;
          }

LABEL_900:
          v496 = 116;
          goto LABEL_1242;
        case 0x34u:
          v465 = 0;
          v466 = 0;
          v467 = 0;
          *(a1 + 400) |= 0x20000000uLL;
          while (1)
          {
            v499 = 0;
            v468 = [a2 position] + 1;
            if (v468 >= [a2 position] && (v469 = objc_msgSend(a2, "position") + 1, v469 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v467 |= (v499 & 0x7F) << v465;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v465 += 7;
            v10 = v466++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1221;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v467;
          }

LABEL_1221:
          v496 = 136;
          goto LABEL_1242;
        case 0x35u:
          v440 = 0;
          v441 = 0;
          v442 = 0;
          *(a1 + 408) |= 2u;
          while (1)
          {
            v499 = 0;
            v443 = [a2 position] + 1;
            if (v443 >= [a2 position] && (v444 = objc_msgSend(a2, "position") + 1, v444 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v442 |= (v499 & 0x7F) << v440;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v440 += 7;
            v10 = v441++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1201;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v442;
          }

LABEL_1201:
          v496 = 288;
          goto LABEL_1242;
        case 0x36u:
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 400) |= 0x2000000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v90 |= (v499 & 0x7F) << v88;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v10 = v89++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_928;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v90;
          }

LABEL_928:
          v496 = 216;
          goto LABEL_1242;
        case 0x37u:
          v425 = 0;
          v426 = 0;
          v427 = 0;
          *(a1 + 408) |= 0x100000u;
          while (1)
          {
            v499 = 0;
            v428 = [a2 position] + 1;
            if (v428 >= [a2 position] && (v429 = objc_msgSend(a2, "position") + 1, v429 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v427 |= (v499 & 0x7F) << v425;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v425 += 7;
            v10 = v426++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1189;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v427;
          }

LABEL_1189:
          v496 = 364;
          goto LABEL_1242;
        case 0x38u:
          v435 = 0;
          v436 = 0;
          v437 = 0;
          *(a1 + 408) |= 0x80000u;
          while (1)
          {
            v499 = 0;
            v438 = [a2 position] + 1;
            if (v438 >= [a2 position] && (v439 = objc_msgSend(a2, "position") + 1, v439 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v437 |= (v499 & 0x7F) << v435;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v435 += 7;
            v10 = v436++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1197;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v437;
          }

LABEL_1197:
          v496 = 360;
          goto LABEL_1242;
        case 0x39u:
          v98 = 0;
          v99 = 0;
          v100 = 0;
          *(a1 + 400) |= 0x1000000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v100 |= (v499 & 0x7F) << v98;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v98 += 7;
            v10 = v99++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_936;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v100;
          }

LABEL_936:
          v496 = 212;
          goto LABEL_1242;
        case 0x3Au:
          v383 = 0;
          v384 = 0;
          v385 = 0;
          *(a1 + 400) |= 0x10000uLL;
          while (1)
          {
            v499 = 0;
            v386 = [a2 position] + 1;
            if (v386 >= [a2 position] && (v387 = objc_msgSend(a2, "position") + 1, v387 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v385 |= (v499 & 0x7F) << v383;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v383 += 7;
            v10 = v384++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1157;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v385;
          }

LABEL_1157:
          v496 = 84;
          goto LABEL_1242;
        case 0x3Bu:
          v165 = 0;
          v166 = 0;
          v167 = 0;
          *(a1 + 400) |= 0x8000uLL;
          while (1)
          {
            v499 = 0;
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

            v167 |= (v499 & 0x7F) << v165;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v165 += 7;
            v10 = v166++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_986;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v167;
          }

LABEL_986:
          v496 = 80;
          goto LABEL_1242;
        case 0x3Cu:
          v393 = 0;
          v394 = 0;
          v395 = 0;
          *(a1 + 400) |= 0x2000uLL;
          while (1)
          {
            v499 = 0;
            v396 = [a2 position] + 1;
            if (v396 >= [a2 position] && (v397 = objc_msgSend(a2, "position") + 1, v397 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v395 |= (v499 & 0x7F) << v393;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v393 += 7;
            v10 = v394++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1165;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v395;
          }

LABEL_1165:
          v496 = 72;
          goto LABEL_1242;
        case 0x3Du:
          v200 = PBReaderReadString();

          v201 = v200;
          v202 = 24;
LABEL_641:
          *(a1 + v202) = v201;
          goto LABEL_1243;
        case 0x3Eu:
          v296 = 0;
          v297 = 0;
          v298 = 0;
          *(a1 + 408) |= 0x10u;
          while (1)
          {
            v499 = 0;
            v299 = [a2 position] + 1;
            if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 1, v300 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v298 |= (v499 & 0x7F) << v296;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v296 += 7;
            v10 = v297++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1089;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v298;
          }

LABEL_1089:
          v496 = 300;
          goto LABEL_1242;
        case 0x3Fu:
          v311 = 0;
          v312 = 0;
          v313 = 0;
          *(a1 + 408) |= 0x20u;
          while (1)
          {
            v499 = 0;
            v314 = [a2 position] + 1;
            if (v314 >= [a2 position] && (v315 = objc_msgSend(a2, "position") + 1, v315 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v313 |= (v499 & 0x7F) << v311;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v311 += 7;
            v10 = v312++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1101;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v313;
          }

LABEL_1101:
          v496 = 304;
          goto LABEL_1242;
        case 0x40u:
          v241 = 0;
          v242 = 0;
          v243 = 0;
          *(a1 + 408) |= 0x40u;
          while (1)
          {
            v499 = 0;
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

            v243 |= (v499 & 0x7F) << v241;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v241 += 7;
            v10 = v242++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1042;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v243;
          }

LABEL_1042:
          v496 = 308;
          goto LABEL_1242;
        case 0x41u:
          v203 = 0;
          v204 = 0;
          v205 = 0;
          *(a1 + 400) |= 0x8000000000000000;
          while (1)
          {
            v499 = 0;
            v206 = [a2 position] + 1;
            if (v206 >= [a2 position] && (v207 = objc_msgSend(a2, "position") + 1, v207 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v205 |= (v499 & 0x7F) << v203;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v203 += 7;
            v10 = v204++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1014;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v205;
          }

LABEL_1014:
          v496 = 280;
          goto LABEL_1242;
        case 0x42u:
          v306 = 0;
          v307 = 0;
          v308 = 0;
          *(a1 + 408) |= 1u;
          while (1)
          {
            v499 = 0;
            v309 = [a2 position] + 1;
            if (v309 >= [a2 position] && (v310 = objc_msgSend(a2, "position") + 1, v310 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v308 |= (v499 & 0x7F) << v306;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v306 += 7;
            v10 = v307++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1097;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v308;
          }

LABEL_1097:
          v496 = 284;
          goto LABEL_1242;
        case 0x43u:
          v68 = 0;
          v69 = 0;
          v70 = 0;
          *(a1 + 400) |= 0x400uLL;
          while (1)
          {
            v499 = 0;
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

            v70 |= (v499 & 0x7F) << v68;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v10 = v69++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_912;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v70;
          }

LABEL_912:
          v496 = 60;
          goto LABEL_1242;
        case 0x44u:
          v140 = 0;
          v141 = 0;
          v142 = 0;
          *(a1 + 400) |= 0x1000uLL;
          while (1)
          {
            v499 = 0;
            v143 = [a2 position] + 1;
            if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v142 |= (v499 & 0x7F) << v140;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v140 += 7;
            v10 = v141++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_966;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v142;
          }

LABEL_966:
          v496 = 68;
          goto LABEL_1242;
        case 0x45u:
          v475 = 0;
          v476 = 0;
          v477 = 0;
          *(a1 + 400) |= 0x800uLL;
          while (1)
          {
            v499 = 0;
            v478 = [a2 position] + 1;
            if (v478 >= [a2 position] && (v479 = objc_msgSend(a2, "position") + 1, v479 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v477 |= (v499 & 0x7F) << v475;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v475 += 7;
            v10 = v476++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1229;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v477;
          }

LABEL_1229:
          v496 = 64;
          goto LABEL_1242;
        case 0x46u:
          v120 = 0;
          v121 = 0;
          v122 = 0;
          *(a1 + 400) |= 0x200000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v122 |= (v499 & 0x7F) << v120;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v120 += 7;
            v10 = v121++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_950;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v122;
          }

LABEL_950:
          v496 = 200;
          goto LABEL_1242;
        case 0x47u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 400) |= 0x800000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v40 |= (v499 & 0x7F) << v38;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_888;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v40;
          }

LABEL_888:
          v496 = 208;
          goto LABEL_1242;
        case 0x48u:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          *(a1 + 408) |= 0x10000u;
          while (1)
          {
            v499 = 0;
            v81 = [a2 position] + 1;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v80 |= (v499 & 0x7F) << v78;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v10 = v79++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_920;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v80;
          }

LABEL_920:
          v496 = 348;
          goto LABEL_1242;
        case 0x49u:
          v430 = 0;
          v431 = 0;
          v432 = 0;
          *(a1 + 408) |= 0x20000u;
          while (1)
          {
            v499 = 0;
            v433 = [a2 position] + 1;
            if (v433 >= [a2 position] && (v434 = objc_msgSend(a2, "position") + 1, v434 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v432 |= (v499 & 0x7F) << v430;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v430 += 7;
            v10 = v431++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1193;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v432;
          }

LABEL_1193:
          v496 = 352;
          goto LABEL_1242;
        case 0x4Au:
          v450 = 0;
          v451 = 0;
          v452 = 0;
          *(a1 + 408) |= 0x40000u;
          while (1)
          {
            v499 = 0;
            v453 = [a2 position] + 1;
            if (v453 >= [a2 position] && (v454 = objc_msgSend(a2, "position") + 1, v454 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v452 |= (v499 & 0x7F) << v450;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v450 += 7;
            v10 = v451++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1209;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v452;
          }

LABEL_1209:
          v496 = 356;
          goto LABEL_1242;
        case 0x4Bu:
          v460 = 0;
          v461 = 0;
          v462 = 0;
          *(a1 + 400) |= 0x100000000uLL;
          while (1)
          {
            v499 = 0;
            v463 = [a2 position] + 1;
            if (v463 >= [a2 position] && (v464 = objc_msgSend(a2, "position") + 1, v464 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v462 |= (v499 & 0x7F) << v460;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v460 += 7;
            v10 = v461++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1217;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v462;
          }

LABEL_1217:
          v496 = 148;
          goto LABEL_1242;
        case 0x4Cu:
          v103 = 0;
          v104 = 0;
          v105 = 0;
          *(a1 + 408) |= 0x10000000u;
          while (1)
          {
            v499 = 0;
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

            v105 |= (v499 & 0x7F) << v103;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v103 += 7;
            v10 = v104++ >= 9;
            if (v10)
            {
              LOBYTE(v108) = 0;
              goto LABEL_938;
            }
          }

          v108 = (v105 != 0) & ~[a2 hasError];
LABEL_938:
          v497 = 396;
          goto LABEL_1081;
        case 0x4Du:
          v286 = 0;
          v287 = 0;
          v288 = 0;
          *(a1 + 408) |= 0x20000000u;
          while (1)
          {
            v499 = 0;
            v289 = [a2 position] + 1;
            if (v289 >= [a2 position] && (v290 = objc_msgSend(a2, "position") + 1, v290 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v288 |= (v499 & 0x7F) << v286;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v286 += 7;
            v10 = v287++ >= 9;
            if (v10)
            {
              LOBYTE(v108) = 0;
              goto LABEL_1080;
            }
          }

          v108 = (v288 != 0) & ~[a2 hasError];
LABEL_1080:
          v497 = 397;
LABEL_1081:
          *(a1 + v497) = v108;
          goto LABEL_1243;
        case 0x4Eu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 400) |= 0x20000uLL;
          while (1)
          {
            v499 = 0;
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

            v45 |= (v499 & 0x7F) << v43;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_892;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v45;
          }

LABEL_892:
          v496 = 88;
          goto LABEL_1242;
        case 0x4Fu:
          v470 = 0;
          v471 = 0;
          v472 = 0;
          *(a1 + 400) |= 0x40000uLL;
          while (1)
          {
            v499 = 0;
            v473 = [a2 position] + 1;
            if (v473 >= [a2 position] && (v474 = objc_msgSend(a2, "position") + 1, v474 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v472 |= (v499 & 0x7F) << v470;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v470 += 7;
            v10 = v471++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1225;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v472;
          }

LABEL_1225:
          v496 = 92;
          goto LABEL_1242;
        case 0x50u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 400) |= 0x80000uLL;
          while (1)
          {
            v499 = 0;
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

            v35 |= (v499 & 0x7F) << v33;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_884;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v35;
          }

LABEL_884:
          v496 = 96;
          goto LABEL_1242;
        case 0x51u:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          *(a1 + 400) |= 0x4000uLL;
          while (1)
          {
            v499 = 0;
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

            v75 |= (v499 & 0x7F) << v73;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v10 = v74++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_916;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v75;
          }

LABEL_916:
          v496 = 76;
          goto LABEL_1242;
        case 0x52u:
          v180 = 0;
          v181 = 0;
          v182 = 0;
          *(a1 + 400) |= 0x80000000000000uLL;
          while (1)
          {
            v499 = 0;
            v183 = [a2 position] + 1;
            if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v182 |= (v499 & 0x7F) << v180;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v180 += 7;
            v10 = v181++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_998;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v182;
          }

LABEL_998:
          v496 = 240;
          goto LABEL_1242;
        case 0x53u:
          v170 = 0;
          v171 = 0;
          v172 = 0;
          *(a1 + 408) |= 0x2000000u;
          while (1)
          {
            v499 = 0;
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

            v172 |= (v499 & 0x7F) << v170;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v170 += 7;
            v10 = v171++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_990;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v172;
          }

LABEL_990:
          v496 = 384;
          goto LABEL_1242;
        case 0x54u:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 408) |= 0x800000u;
          while (1)
          {
            v499 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v499 & 0x7F) << v23;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_876;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v25;
          }

LABEL_876:
          v496 = 376;
          goto LABEL_1242;
        case 0x55u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 408) |= 0x4000000u;
          while (1)
          {
            v499 = 0;
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

            v20 |= (v499 & 0x7F) << v18;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_872;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v20;
          }

LABEL_872:
          v496 = 388;
          goto LABEL_1242;
        case 0x56u:
          v362 = 0;
          v363 = 0;
          v364 = 0;
          *(a1 + 408) |= 0x400000u;
          while (1)
          {
            v499 = 0;
            v365 = [a2 position] + 1;
            if (v365 >= [a2 position] && (v366 = objc_msgSend(a2, "position") + 1, v366 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v364 |= (v499 & 0x7F) << v362;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v362 += 7;
            v10 = v363++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1141;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v364;
          }

LABEL_1141:
          v496 = 372;
          goto LABEL_1242;
        case 0x57u:
          v368 = 0;
          v369 = 0;
          v370 = 0;
          *(a1 + 408) |= 0x1000000u;
          while (1)
          {
            v499 = 0;
            v371 = [a2 position] + 1;
            if (v371 >= [a2 position] && (v372 = objc_msgSend(a2, "position") + 1, v372 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v370 |= (v499 & 0x7F) << v368;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v368 += 7;
            v10 = v369++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1145;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v370;
          }

LABEL_1145:
          v496 = 380;
          goto LABEL_1242;
        case 0x58u:
          v455 = 0;
          v456 = 0;
          v457 = 0;
          *(a1 + 400) |= 0x10000000000uLL;
          while (1)
          {
            v499 = 0;
            v458 = [a2 position] + 1;
            if (v458 >= [a2 position] && (v459 = objc_msgSend(a2, "position") + 1, v459 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v457 |= (v499 & 0x7F) << v455;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v455 += 7;
            v10 = v456++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1213;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v457;
          }

LABEL_1213:
          v496 = 180;
          goto LABEL_1242;
        case 0x59u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 400) |= 0x80uLL;
          while (1)
          {
            v499 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v499 & 0x7F) << v58;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v10 = v59++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_904;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v60;
          }

LABEL_904:
          v496 = 48;
          goto LABEL_1242;
        case 0x5Au:
          v490 = 0;
          v491 = 0;
          v492 = 0;
          *(a1 + 408) |= 0x80u;
          while (1)
          {
            v499 = 0;
            v493 = [a2 position] + 1;
            if (v493 >= [a2 position] && (v494 = objc_msgSend(a2, "position") + 1, v494 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v492 |= (v499 & 0x7F) << v490;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v490 += 7;
            v10 = v491++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1241;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v492;
          }

LABEL_1241:
          v496 = 312;
          goto LABEL_1242;
        case 0x5Bu:
          v485 = 0;
          v486 = 0;
          v487 = 0;
          *(a1 + 400) |= 0x10000000000000uLL;
          while (1)
          {
            v499 = 0;
            v488 = [a2 position] + 1;
            if (v488 >= [a2 position] && (v489 = objc_msgSend(a2, "position") + 1, v489 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v487 |= (v499 & 0x7F) << v485;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v485 += 7;
            v10 = v486++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1237;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v487;
          }

LABEL_1237:
          v496 = 228;
          goto LABEL_1242;
        case 0x5Cu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 400) |= 0x40000000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v30 |= (v499 & 0x7F) << v28;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_880;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v30;
          }

LABEL_880:
          v496 = 236;
          goto LABEL_1242;
        case 0x5Du:
          v261 = 0;
          v262 = 0;
          v263 = 0;
          *(a1 + 408) |= 0x100u;
          while (1)
          {
            v499 = 0;
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

            v263 |= (v499 & 0x7F) << v261;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v261 += 7;
            v10 = v262++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1062;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v263;
          }

LABEL_1062:
          v496 = 316;
          goto LABEL_1242;
        case 0x5Eu:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 400) |= 0x100000000000uLL;
          while (1)
          {
            v499 = 0;
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

            v50 |= (v499 & 0x7F) << v48;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v10 = v49++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_896;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v50;
          }

LABEL_896:
          v496 = 196;
          goto LABEL_1242;
        case 0x5Fu:
          v276 = 0;
          v277 = 0;
          v278 = 0;
          *(a1 + 400) |= 0x20000000000000uLL;
          while (1)
          {
            v499 = 0;
            v279 = [a2 position] + 1;
            if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 1, v280 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v278 |= (v499 & 0x7F) << v276;
            if ((v499 & 0x80) == 0)
            {
              break;
            }

            v276 += 7;
            v10 = v277++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_1074;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v278;
          }

LABEL_1074:
          v496 = 232;
          goto LABEL_1242;
        case 0x60u:
          v480 = 0;
          v481 = 0;
          v482 = 0;
          *(a1 + 400) |= 0x2000000uLL;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_1243;
      }

      while (1)
      {
        v499 = 0;
        v483 = [a2 position] + 1;
        if (v483 >= [a2 position] && (v484 = objc_msgSend(a2, "position") + 1, v484 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v482 |= (v499 & 0x7F) << v480;
        if ((v499 & 0x80) == 0)
        {
          break;
        }

        v480 += 7;
        v10 = v481++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_1233;
        }
      }

      v17 = [a2 hasError] ? 0 : v482;
LABEL_1233:
      v496 = 120;
LABEL_1242:
      *(a1 + v496) = v17;
LABEL_1243:
      v498 = [a2 position];
    }

    while (v498 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMAntSelPolicyStatsReadFrom(uint64_t a1, void *a2)
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
        v45 = 0;
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

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
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

      switch(v12)
      {
        case 3:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v47 = 0;
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

            v27 |= (v47 & 0x7F) << v25;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_73;
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

LABEL_73:
          v42 = 20;
LABEL_87:
          *(a1 + v42) = v24;
          goto LABEL_88;
        case 4:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 28) |= 0x10u;
          while (1)
          {
            v50 = 0;
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

            v32 |= (v50 & 0x7F) << v30;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v10 = v31++ >= 9;
            if (v10)
            {
              LOBYTE(v18) = 0;
              goto LABEL_75;
            }
          }

          v18 = (v32 != 0) & ~[a2 hasError];
LABEL_75:
          v43 = 25;
          break;
        case 5:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v49 = 0;
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

            v15 |= (v49 & 0x7F) << v13;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              LOBYTE(v18) = 0;
              goto LABEL_81;
            }
          }

          v18 = (v15 != 0) & ~[a2 hasError];
LABEL_81:
          v43 = 24;
          break;
        default:
          goto LABEL_68;
      }

      *(a1 + v43) = v18;
LABEL_88:
      v44 = [a2 position];
      if (v44 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        v46 = 0;
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

        v37 |= (v46 & 0x7F) << v35;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v10 = v36++ >= 9;
        if (v10)
        {
          v40 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v37;
      }

LABEL_79:
      *(a1 + 8) = v40;
      goto LABEL_88;
    }

    if (v12 != 2)
    {
LABEL_68:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_88;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(a1 + 28) |= 2u;
    while (1)
    {
      v48 = 0;
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

      v21 |= (v48 & 0x7F) << v19;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v19 += 7;
      v10 = v20++ >= 9;
      if (v10)
      {
        v24 = 0;
        goto LABEL_86;
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

LABEL_86:
    v42 = 16;
    goto LABEL_87;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMFacetimeRecommendationReadFrom(uint64_t a1, void *a2)
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
      v175 = 0;
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

      v8 |= (v175 & 0x7F) << v6;
      if ((v175 & 0x80) == 0)
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
        *(a1 + 156) |= 1u;
        while (1)
        {
          v175 = 0;
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

          v15 |= (v175 & 0x7F) << v13;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_331:
            v174 = 8;
            goto LABEL_336;
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

        goto LABEL_331;
      case 2u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 156) |= 2u;
        while (1)
        {
          v175 = 0;
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

          v87 |= (v175 & 0x7F) << v85;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
          if (v11)
          {
            v90 = 0;
            goto LABEL_335;
          }
        }

        if ([a2 hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v87;
        }

LABEL_335:
        v18 = -(v90 & 1) ^ (v90 >> 1);
        v174 = 16;
        goto LABEL_336;
      case 3u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 156) |= 0x400000u;
        while (1)
        {
          v175 = 0;
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

          v66 |= (v175 & 0x7F) << v64;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_315;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v66;
        }

LABEL_315:
        v172 = 140;
        goto LABEL_394;
      case 4u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 156) |= 4u;
        while (1)
        {
          v175 = 0;
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

          v76 |= (v175 & 0x7F) << v74;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v79 = 0;
            goto LABEL_323;
          }
        }

        if ([a2 hasError])
        {
          v79 = 0;
        }

        else
        {
          v79 = v76;
        }

LABEL_323:
        v18 = -(v79 & 1) ^ (v79 >> 1);
        v174 = 24;
LABEL_336:
        *(a1 + v174) = v18;
        continue;
      case 5u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 156) |= 0x2000000u;
        while (1)
        {
          v175 = 0;
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

          v40 |= (v175 & 0x7F) << v38;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            LOBYTE(v43) = 0;
            goto LABEL_299;
          }
        }

        v43 = (v40 != 0) & ~[a2 hasError];
LABEL_299:
        v173 = 149;
        goto LABEL_381;
      case 6u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 156) |= 0x200000u;
        while (1)
        {
          v175 = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v175 & 0x7F) << v102;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v11 = v103++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_346;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v104;
        }

LABEL_346:
        v172 = 136;
        goto LABEL_394;
      case 7u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 156) |= 0x80000u;
        while (1)
        {
          v175 = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v175 & 0x7F) << v117;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
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
          v24 = v119;
        }

LABEL_358:
        v172 = 128;
        goto LABEL_394;
      case 8u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 156) |= 0x800000u;
        while (1)
        {
          v175 = 0;
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

          v82 |= (v175 & 0x7F) << v80;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_327;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v82;
        }

LABEL_327:
        v172 = 144;
        goto LABEL_394;
      case 9u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 156) |= 0x100000u;
        while (1)
        {
          v175 = 0;
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

          v130 |= (v175 & 0x7F) << v128;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v11 = v129++ >= 9;
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
          v24 = v130;
        }

LABEL_366:
        v172 = 132;
        goto LABEL_394;
      case 0xAu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 156) |= 0x4000u;
        while (1)
        {
          v175 = 0;
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

          v51 |= (v175 & 0x7F) << v49;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_307;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v51;
        }

LABEL_307:
        v172 = 96;
        goto LABEL_394;
      case 0xBu:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 156) |= 0x20u;
        while (1)
        {
          v175 = 0;
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

          v125 |= (v175 & 0x7F) << v123;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v11 = v124++ >= 9;
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
          v24 = v125;
        }

LABEL_362:
        v172 = 40;
        goto LABEL_394;
      case 0xCu:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 156) |= 0x10000u;
        while (1)
        {
          v175 = 0;
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

          v35 |= (v175 & 0x7F) << v33;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_297;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v35;
        }

LABEL_297:
        v172 = 116;
        goto LABEL_394;
      case 0xDu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 156) |= 0x400u;
        while (1)
        {
          v175 = 0;
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

          v46 |= (v175 & 0x7F) << v44;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_303;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v46;
        }

LABEL_303:
        v172 = 60;
        goto LABEL_394;
      case 0xEu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 156) |= 0x10u;
        while (1)
        {
          v175 = 0;
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

          v114 |= (v175 & 0x7F) << v112;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
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
          v24 = v114;
        }

LABEL_354:
        v172 = 36;
        goto LABEL_394;
      case 0xFu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 156) |= 0x40000u;
        while (1)
        {
          v175 = 0;
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

          v30 |= (v175 & 0x7F) << v28;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_293;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v30;
        }

LABEL_293:
        v172 = 124;
        goto LABEL_394;
      case 0x10u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 156) |= 0x8000u;
        while (1)
        {
          v175 = 0;
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

          v71 |= (v175 & 0x7F) << v69;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_319;
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

LABEL_319:
        v172 = 112;
        goto LABEL_394;
      case 0x11u:
        String = PBReaderReadString();

        v26 = String;
        v27 = 104;
        goto LABEL_202;
      case 0x12u:
        v96 = PBReaderReadString();

        v26 = v96;
        v27 = 80;
        goto LABEL_202;
      case 0x13u:
        v122 = PBReaderReadString();

        v26 = v122;
        v27 = 88;
LABEL_202:
        *(a1 + v27) = v26;
        continue;
      case 0x14u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 156) |= 0x1000u;
        while (1)
        {
          v175 = 0;
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

          v147 |= (v175 & 0x7F) << v145;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v11 = v146++ >= 9;
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
          v24 = v147;
        }

LABEL_378:
        v172 = 68;
        goto LABEL_394;
      case 0x15u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 156) |= 0x800u;
        while (1)
        {
          v175 = 0;
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

          v99 |= (v175 & 0x7F) << v97;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v11 = v98++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_342;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v99;
        }

LABEL_342:
        v172 = 64;
        goto LABEL_394;
      case 0x16u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 156) |= 0x2000u;
        while (1)
        {
          v175 = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v175 & 0x7F) << v107;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
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
          v24 = v109;
        }

LABEL_350:
        v172 = 72;
        goto LABEL_394;
      case 0x17u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 156) |= 0x200u;
        while (1)
        {
          v175 = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v175 & 0x7F) << v140;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v11 = v141++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_374;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v142;
        }

LABEL_374:
        v172 = 56;
        goto LABEL_394;
      case 0x18u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 156) |= 0x1000000u;
        while (1)
        {
          v175 = 0;
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

          v152 |= (v175 & 0x7F) << v150;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v11 = v151++ >= 9;
          if (v11)
          {
            LOBYTE(v43) = 0;
            goto LABEL_380;
          }
        }

        v43 = (v152 != 0) & ~[a2 hasError];
LABEL_380:
        v173 = 148;
        goto LABEL_381;
      case 0x19u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 156) |= 0x10000000u;
        while (1)
        {
          v175 = 0;
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

          v61 |= (v175 & 0x7F) << v59;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v11 = v60++ >= 9;
          if (v11)
          {
            LOBYTE(v43) = 0;
            goto LABEL_311;
          }
        }

        v43 = (v61 != 0) & ~[a2 hasError];
LABEL_311:
        v173 = 152;
        goto LABEL_381;
      case 0x1Au:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 156) |= 0x8000000u;
        while (1)
        {
          v175 = 0;
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

          v56 |= (v175 & 0x7F) << v54;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            LOBYTE(v43) = 0;
            goto LABEL_309;
          }
        }

        v43 = (v56 != 0) & ~[a2 hasError];
LABEL_309:
        v173 = 151;
        goto LABEL_381;
      case 0x1Bu:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 156) |= 0x20000u;
        while (1)
        {
          v175 = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v175 & 0x7F) << v167;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v11 = v168++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_393;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v169;
        }

LABEL_393:
        v172 = 120;
        goto LABEL_394;
      case 0x1Cu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 156) |= 8u;
        while (1)
        {
          v175 = 0;
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

          v21 |= (v175 & 0x7F) << v19;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_289;
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

LABEL_289:
        v172 = 32;
        goto LABEL_394;
      case 0x1Du:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 156) |= 0x40u;
        while (1)
        {
          v175 = 0;
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

          v157 |= (v175 & 0x7F) << v155;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v11 = v156++ >= 9;
          if (v11)
          {
            v160 = 0;
            goto LABEL_385;
          }
        }

        if ([a2 hasError])
        {
          v160 = 0;
        }

        else
        {
          v160 = v157;
        }

LABEL_385:
        v24 = -(v160 & 1) ^ (v160 >> 1);
        v172 = 44;
        goto LABEL_394;
      case 0x1Eu:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 156) |= 0x80u;
        while (1)
        {
          v175 = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v175 & 0x7F) << v161;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v11 = v162++ >= 9;
          if (v11)
          {
            v166 = 0;
            goto LABEL_389;
          }
        }

        if ([a2 hasError])
        {
          v166 = 0;
        }

        else
        {
          v166 = v163;
        }

LABEL_389:
        v24 = -(v166 & 1) ^ (v166 >> 1);
        v172 = 48;
        goto LABEL_394;
      case 0x1Fu:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 156) |= 0x100u;
        while (1)
        {
          v175 = 0;
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

          v135 |= (v175 & 0x7F) << v133;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v11 = v134++ >= 9;
          if (v11)
          {
            v138 = 0;
            goto LABEL_370;
          }
        }

        if ([a2 hasError])
        {
          v138 = 0;
        }

        else
        {
          v138 = v135;
        }

LABEL_370:
        v24 = -(v138 & 1) ^ (v138 >> 1);
        v172 = 52;
LABEL_394:
        *(a1 + v172) = v24;
        continue;
      case 0x20u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 156) |= 0x4000000u;
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
      v175 = 0;
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

      v93 |= (v175 & 0x7F) << v91;
      if ((v175 & 0x80) == 0)
      {
        break;
      }

      v91 += 7;
      v11 = v92++ >= 9;
      if (v11)
      {
        LOBYTE(v43) = 0;
        goto LABEL_338;
      }
    }

    v43 = (v93 != 0) & ~[a2 hasError];
LABEL_338:
    v173 = 150;
LABEL_381:
    *(a1 + v173) = v43;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMLinkPrefChange1ReadFrom(uint64_t a1, void *a2)
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
      v162 = 0;
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

      v8 |= (v162 & 0x7F) << v6;
      if ((v162 & 0x80) == 0)
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
        *(a1 + 128) |= 1u;
        while (1)
        {
          v162 = 0;
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

          v15 |= (v162 & 0x7F) << v13;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_341:
            *(a1 + 8) = v18;
            goto LABEL_399;
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

        goto LABEL_341;
      case 2u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 128) |= 2u;
        while (1)
        {
          v162 = 0;
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

          v92 |= (v162 & 0x7F) << v90;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v11 = v91++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v92;
        }

LABEL_345:
        v161 = 16;
        goto LABEL_398;
      case 3u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 128) |= 8u;
        while (1)
        {
          v162 = 0;
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

          v72 |= (v162 & 0x7F) << v70;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_325;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v72;
        }

LABEL_325:
        v161 = 24;
        goto LABEL_398;
      case 4u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 128) |= 4u;
        while (1)
        {
          v162 = 0;
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

          v117 |= (v162 & 0x7F) << v115;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v11 = v116++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_365;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v117;
        }

LABEL_365:
        v161 = 20;
        goto LABEL_398;
      case 5u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 128) |= 0x20u;
        while (1)
        {
          v162 = 0;
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

          v122 |= (v162 & 0x7F) << v120;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v11 = v121++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_369;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v122;
        }

LABEL_369:
        v161 = 32;
        goto LABEL_398;
      case 6u:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 128) |= 0x40000u;
        while (1)
        {
          v162 = 0;
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

          v77 |= (v162 & 0x7F) << v75;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_329;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v77;
        }

LABEL_329:
        v161 = 84;
        goto LABEL_398;
      case 0xAu:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 128) |= 0x200u;
        while (1)
        {
          v162 = 0;
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

          v97 |= (v162 & 0x7F) << v95;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v97;
        }

LABEL_349:
        v161 = 48;
        goto LABEL_398;
      case 0xBu:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 128) |= 0x80000u;
        while (1)
        {
          v162 = 0;
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

          v102 |= (v162 & 0x7F) << v100;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v102;
        }

LABEL_353:
        v161 = 88;
        goto LABEL_398;
      case 0xCu:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 128) |= 0x100u;
        while (1)
        {
          v162 = 0;
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

          v133 |= (v162 & 0x7F) << v131;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v11 = v132++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_377;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v133;
        }

LABEL_377:
        v161 = 44;
        goto LABEL_398;
      case 0xDu:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 128) |= 0x20000u;
        while (1)
        {
          v162 = 0;
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

          v127 |= (v162 & 0x7F) << v125;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v11 = v126++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_373;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v127;
        }

LABEL_373:
        v161 = 80;
        goto LABEL_398;
      case 0x14u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 128) |= 0x8000000u;
        while (1)
        {
          v162 = 0;
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

          v47 |= (v162 & 0x7F) << v45;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_305;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v47;
        }

LABEL_305:
        v161 = 120;
        goto LABEL_398;
      case 0x15u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 128) |= 0x10000000u;
        while (1)
        {
          v162 = 0;
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

          v82 |= (v162 & 0x7F) << v80;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_333;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v82;
        }

LABEL_333:
        v161 = 124;
        goto LABEL_398;
      case 0x16u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 128) |= 0x1000000u;
        while (1)
        {
          v162 = 0;
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

          v62 |= (v162 & 0x7F) << v60;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_317;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v62;
        }

LABEL_317:
        v161 = 108;
        goto LABEL_398;
      case 0x17u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 128) |= 0x800000u;
        while (1)
        {
          v162 = 0;
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

          v32 |= (v162 & 0x7F) << v30;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_293;
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

LABEL_293:
        v161 = 104;
        goto LABEL_398;
      case 0x18u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 128) |= 0x400000u;
        while (1)
        {
          v162 = 0;
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

          v107 |= (v162 & 0x7F) << v105;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_357;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v107;
        }

LABEL_357:
        v161 = 100;
        goto LABEL_398;
      case 0x19u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 128) |= 0x4000000u;
        while (1)
        {
          v162 = 0;
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

          v112 |= (v162 & 0x7F) << v110;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v11 = v111++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_361;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v112;
        }

LABEL_361:
        v161 = 116;
        goto LABEL_398;
      case 0x1Au:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        *(a1 + 128) |= 0x2000000u;
        while (1)
        {
          v162 = 0;
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

          v143 |= (v162 & 0x7F) << v141;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v11 = v142++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_385;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v143;
        }

LABEL_385:
        v161 = 112;
        goto LABEL_398;
      case 0x1Bu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 128) |= 0x200000u;
        while (1)
        {
          v162 = 0;
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

          v138 |= (v162 & 0x7F) << v136;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v11 = v137++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_381;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v138;
        }

LABEL_381:
        v161 = 96;
        goto LABEL_398;
      case 0x1Cu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 128) |= 0x100000u;
        while (1)
        {
          v162 = 0;
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

          v21 |= (v162 & 0x7F) << v19;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_285;
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

LABEL_285:
        v161 = 92;
        goto LABEL_398;
      case 0x1Du:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 128) |= 0x10u;
        while (1)
        {
          v162 = 0;
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

          v67 |= (v162 & 0x7F) << v65;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_321;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v67;
        }

LABEL_321:
        v161 = 28;
        goto LABEL_398;
      case 0x1Eu:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 128) |= 0x80u;
        while (1)
        {
          v162 = 0;
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

          v148 |= (v162 & 0x7F) << v146;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v11 = v147++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_389;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v148;
        }

LABEL_389:
        v161 = 40;
        goto LABEL_398;
      case 0x1Fu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 128) |= 0x40u;
        while (1)
        {
          v162 = 0;
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

          v27 |= (v162 & 0x7F) << v25;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_289;
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

LABEL_289:
        v161 = 36;
        goto LABEL_398;
      case 0x20u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 128) |= 0x10000u;
        while (1)
        {
          v162 = 0;
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

          v57 |= (v162 & 0x7F) << v55;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_313;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v57;
        }

LABEL_313:
        v161 = 76;
        goto LABEL_398;
      case 0x21u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 128) |= 0x400u;
        while (1)
        {
          v162 = 0;
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

          v42 |= (v162 & 0x7F) << v40;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_301;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v42;
        }

LABEL_301:
        v161 = 52;
        goto LABEL_398;
      case 0x22u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 128) |= 0x800u;
        while (1)
        {
          v162 = 0;
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

          v87 |= (v162 & 0x7F) << v85;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_337;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v87;
        }

LABEL_337:
        v161 = 56;
        goto LABEL_398;
      case 0x23u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 128) |= 0x1000u;
        while (1)
        {
          v162 = 0;
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

          v37 |= (v162 & 0x7F) << v35;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_297;
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

LABEL_297:
        v161 = 60;
        goto LABEL_398;
      case 0x24u:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 128) |= 0x2000u;
        while (1)
        {
          v162 = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v162 & 0x7F) << v156;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v11 = v157++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_397;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v158;
        }

LABEL_397:
        v161 = 64;
        goto LABEL_398;
      case 0x25u:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 128) |= 0x4000u;
        while (1)
        {
          v162 = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v162 & 0x7F) << v151;
          if ((v162 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v11 = v152++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_393;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v153;
        }

LABEL_393:
        v161 = 68;
        goto LABEL_398;
      case 0x26u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 128) |= 0x8000u;
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
      v162 = 0;
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

      v52 |= (v162 & 0x7F) << v50;
      if ((v162 & 0x80) == 0)
      {
        break;
      }

      v50 += 7;
      v11 = v51++ >= 9;
      if (v11)
      {
        v24 = 0;
        goto LABEL_309;
      }
    }

    if ([a2 hasError])
    {
      v24 = 0;
    }

    else
    {
      v24 = v52;
    }

LABEL_309:
    v161 = 72;
LABEL_398:
    *(a1 + v161) = v24;
LABEL_399:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMLinkPrefChange2ReadFrom(uint64_t a1, void *a2)
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
      v142 = 0;
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

      v8 |= (v142 & 0x7F) << v6;
      if ((v142 & 0x80) == 0)
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
        *(a1 + 112) |= 1u;
        while (1)
        {
          v142 = 0;
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

          v15 |= (v142 & 0x7F) << v13;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_297:
            *(a1 + 8) = v18;
            goto LABEL_347;
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

        goto LABEL_297;
      case 2u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 112) |= 2u;
        while (1)
        {
          v142 = 0;
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

          v87 |= (v142 & 0x7F) << v85;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_305;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v87;
        }

LABEL_305:
        v141 = 16;
        goto LABEL_346;
      case 3u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 112) |= 8u;
        while (1)
        {
          v142 = 0;
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

          v47 |= (v142 & 0x7F) << v45;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_269;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v47;
        }

LABEL_269:
        v141 = 24;
        goto LABEL_346;
      case 4u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 112) |= 4u;
        while (1)
        {
          v142 = 0;
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

          v82 |= (v142 & 0x7F) << v80;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_301;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v82;
        }

LABEL_301:
        v141 = 20;
        goto LABEL_346;
      case 5u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 112) |= 0x200u;
        while (1)
        {
          v142 = 0;
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

          v52 |= (v142 & 0x7F) << v50;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_273;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v52;
        }

LABEL_273:
        v141 = 48;
        goto LABEL_346;
      case 6u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 112) |= 0x400000u;
        while (1)
        {
          v142 = 0;
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

          v72 |= (v142 & 0x7F) << v70;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_289;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v72;
        }

LABEL_289:
        v141 = 100;
        goto LABEL_346;
      case 0xAu:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 112) |= 0x4000u;
        while (1)
        {
          v142 = 0;
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

          v97 |= (v142 & 0x7F) << v95;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_313;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v97;
        }

LABEL_313:
        v141 = 68;
        goto LABEL_346;
      case 0xBu:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 112) |= 0x800000u;
        while (1)
        {
          v142 = 0;
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

          v102 |= (v142 & 0x7F) << v100;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_317;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v102;
        }

LABEL_317:
        v141 = 104;
        goto LABEL_346;
      case 0xCu:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 112) |= 0x2000u;
        while (1)
        {
          v142 = 0;
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

          v122 |= (v142 & 0x7F) << v120;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v11 = v121++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_333;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v122;
        }

LABEL_333:
        v141 = 64;
        goto LABEL_346;
      case 0xDu:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 112) |= 0x200000u;
        while (1)
        {
          v142 = 0;
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

          v117 |= (v142 & 0x7F) << v115;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v11 = v116++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_329;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v117;
        }

LABEL_329:
        v141 = 96;
        goto LABEL_346;
      case 0x14u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 112) |= 0x1000000u;
        while (1)
        {
          v142 = 0;
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

          v42 |= (v142 & 0x7F) << v40;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_265;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v42;
        }

LABEL_265:
        v141 = 108;
        goto LABEL_346;
      case 0x15u:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 112) |= 0x100u;
        while (1)
        {
          v142 = 0;
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

          v77 |= (v142 & 0x7F) << v75;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_293;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v77;
        }

LABEL_293:
        v141 = 44;
        goto LABEL_346;
      case 0x16u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 112) |= 0x80u;
        while (1)
        {
          v142 = 0;
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

          v62 |= (v142 & 0x7F) << v60;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_281;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v62;
        }

LABEL_281:
        v141 = 40;
        goto LABEL_346;
      case 0x17u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 112) |= 0x40u;
        while (1)
        {
          v142 = 0;
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

          v32 |= (v142 & 0x7F) << v30;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_257;
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

LABEL_257:
        v141 = 36;
        goto LABEL_346;
      case 0x18u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 112) |= 0x20u;
        while (1)
        {
          v142 = 0;
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

          v107 |= (v142 & 0x7F) << v105;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_321;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v107;
        }

LABEL_321:
        v141 = 32;
        goto LABEL_346;
      case 0x19u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 112) |= 0x10u;
        while (1)
        {
          v142 = 0;
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

          v112 |= (v142 & 0x7F) << v110;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v11 = v111++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_325;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v112;
        }

LABEL_325:
        v141 = 28;
        goto LABEL_346;
      case 0x1Eu:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 112) |= 0x800u;
        while (1)
        {
          v142 = 0;
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

          v132 |= (v142 & 0x7F) << v130;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v11 = v131++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_341;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v132;
        }

LABEL_341:
        v141 = 56;
        goto LABEL_346;
      case 0x1Fu:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 112) |= 0x400u;
        while (1)
        {
          v142 = 0;
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

          v127 |= (v142 & 0x7F) << v125;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v11 = v126++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_337;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v127;
        }

LABEL_337:
        v141 = 52;
        goto LABEL_346;
      case 0x20u:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 112) |= 0x1000u;
        while (1)
        {
          v142 = 0;
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

          v21 |= (v142 & 0x7F) << v19;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_249;
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

LABEL_249:
        v141 = 60;
        goto LABEL_346;
      case 0x21u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 112) |= 0x8000u;
        while (1)
        {
          v142 = 0;
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

          v67 |= (v142 & 0x7F) << v65;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_285;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v67;
        }

LABEL_285:
        v141 = 72;
        goto LABEL_346;
      case 0x22u:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        *(a1 + 112) |= 0x10000u;
        while (1)
        {
          v142 = 0;
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

          v137 |= (v142 & 0x7F) << v135;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v11 = v136++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v137;
        }

LABEL_345:
        v141 = 76;
        goto LABEL_346;
      case 0x23u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 112) |= 0x20000u;
        while (1)
        {
          v142 = 0;
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

          v27 |= (v142 & 0x7F) << v25;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_253;
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

LABEL_253:
        v141 = 80;
        goto LABEL_346;
      case 0x24u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 112) |= 0x40000u;
        while (1)
        {
          v142 = 0;
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

          v57 |= (v142 & 0x7F) << v55;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_277;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v57;
        }

LABEL_277:
        v141 = 84;
        goto LABEL_346;
      case 0x25u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 112) |= 0x80000u;
        while (1)
        {
          v142 = 0;
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

          v37 |= (v142 & 0x7F) << v35;
          if ((v142 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_261;
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

LABEL_261:
        v141 = 88;
        goto LABEL_346;
      case 0x26u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 112) |= 0x100000u;
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
      v142 = 0;
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

      v92 |= (v142 & 0x7F) << v90;
      if ((v142 & 0x80) == 0)
      {
        break;
      }

      v90 += 7;
      v11 = v91++ >= 9;
      if (v11)
      {
        v24 = 0;
        goto LABEL_309;
      }
    }

    if ([a2 hasError])
    {
      v24 = 0;
    }

    else
    {
      v24 = v92;
    }

LABEL_309:
    v141 = 92;
LABEL_346:
    *(a1 + v141) = v24;
LABEL_347:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMLinkPrefChangeEventReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v238[0]) = 0;
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

      v8 |= (v238[0] & 0x7F) << v6;
      if ((v238[0] & 0x80) == 0)
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
        *(a1 + 228) |= 2uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v15 |= (v238[0] & 0x7F) << v13;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_488:
            v232 = 40;
            goto LABEL_489;
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

        goto LABEL_488;
      case 2u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 228) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v136 |= (v238[0] & 0x7F) << v134;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v11 = v135++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_493;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v136;
        }

LABEL_493:
        v231 = 100;
        goto LABEL_558;
      case 3u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 228) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v238[0] & 0x7F) << v99;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v11 = v100++ >= 9;
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
          v24 = v101;
        }

LABEL_460:
        v231 = 168;
        goto LABEL_558;
      case 4u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(a1 + 228) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v238[0] & 0x7F) << v162;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v11 = v163++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_513;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v164;
        }

LABEL_513:
        v231 = 200;
        goto LABEL_558;
      case 5u:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 228) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v238[0] & 0x7F) << v167;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v11 = v168++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_517;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v169;
        }

LABEL_517:
        v231 = 112;
        goto LABEL_558;
      case 6u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 228) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v116 |= (v238[0] & 0x7F) << v114;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v11 = v115++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_472;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v116;
        }

LABEL_472:
        v231 = 80;
        goto LABEL_558;
      case 7u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 228) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v141 |= (v238[0] & 0x7F) << v139;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v11 = v140++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_497;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v141;
        }

LABEL_497:
        v231 = 104;
        goto LABEL_558;
      case 8u:
        String = PBReaderReadString();

        v145 = String;
        v146 = 64;
        goto LABEL_333;
      case 0xFu:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        *(a1 + 228) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (v238[0] & 0x7F) << v184;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v11 = v185++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_525;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v186;
        }

LABEL_525:
        v231 = 136;
        goto LABEL_558;
      case 0x10u:
        if ((v12 & 7) == 2)
        {
          v238[0] = 0;
          v238[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v178 = [a2 position];
            if (v178 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v179 = 0;
            v180 = 0;
            v181 = 0;
            while (1)
            {
              v239 = 0;
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

              v181 |= (v239 & 0x7F) << v179;
              if ((v239 & 0x80) == 0)
              {
                break;
              }

              v179 += 7;
              v11 = v180++ >= 9;
              if (v11)
              {
                goto LABEL_313;
              }
            }

            [a2 hasError];
LABEL_313:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v233 = 0;
          v234 = 0;
          v235 = 0;
          while (1)
          {
            LOBYTE(v238[0]) = 0;
            v236 = [a2 position] + 1;
            if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v235 |= (v238[0] & 0x7F) << v233;
            if ((v238[0] & 0x80) == 0)
            {
              break;
            }

            v233 += 7;
            v11 = v234++ >= 9;
            if (v11)
            {
              goto LABEL_571;
            }
          }

          [a2 hasError];
LABEL_571:
          PBRepeatedUInt32Add();
        }

LABEL_559:
        v4 = a2;
        break;
      case 0x16u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 228) |= 4uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v64 |= (v238[0] & 0x7F) << v62;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v67 = 0;
            goto LABEL_432;
          }
        }

        if ([a2 hasError])
        {
          v67 = 0;
        }

        else
        {
          v67 = v64;
        }

LABEL_432:
        v18 = -(v67 & 1) ^ (v67 >> 1);
        v232 = 48;
        goto LABEL_489;
      case 0x17u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 228) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v121 |= (v238[0] & 0x7F) << v119;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v11 = v120++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_476;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v121;
        }

LABEL_476:
        v231 = 216;
        goto LABEL_558;
      case 0x18u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 228) |= 8uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v90 |= (v238[0] & 0x7F) << v88;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v11 = v89++ >= 9;
          if (v11)
          {
            v93 = 0;
            goto LABEL_452;
          }
        }

        if ([a2 hasError])
        {
          v93 = 0;
        }

        else
        {
          v93 = v90;
        }

LABEL_452:
        v18 = -(v93 & 1) ^ (v93 >> 1);
        v232 = 56;
        goto LABEL_489;
      case 0x19u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 228) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v48 |= (v238[0] & 0x7F) << v46;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            LOBYTE(v51) = 0;
            goto LABEL_420;
          }
        }

        v51 = (v48 != 0) & ~[a2 hasError];
LABEL_420:
        *(a1 + 224) = v51;
        goto LABEL_559;
      case 0x1Au:
        v147 = 0;
        v148 = 0;
        v149 = 0;
        *(a1 + 228) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v150 = [a2 position] + 1;
          if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v149 |= (v238[0] & 0x7F) << v147;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v147 += 7;
          v11 = v148++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_501;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v149;
        }

LABEL_501:
        v231 = 212;
        goto LABEL_558;
      case 0x1Bu:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 228) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v154 |= (v238[0] & 0x7F) << v152;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v11 = v153++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_505;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v154;
        }

LABEL_505:
        v231 = 204;
        goto LABEL_558;
      case 0x1Cu:
        v195 = 0;
        v196 = 0;
        v197 = 0;
        *(a1 + 228) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v198 = [a2 position] + 1;
          if (v198 >= [a2 position] && (v199 = objc_msgSend(a2, "position") + 1, v199 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v197 |= (v238[0] & 0x7F) << v195;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v195 += 7;
          v11 = v196++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_533;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v197;
        }

LABEL_533:
        v231 = 220;
        goto LABEL_558;
      case 0x1Du:
        v189 = 0;
        v190 = 0;
        v191 = 0;
        *(a1 + 228) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v192 = [a2 position] + 1;
          if (v192 >= [a2 position] && (v193 = objc_msgSend(a2, "position") + 1, v193 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v191 |= (v238[0] & 0x7F) << v189;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v189 += 7;
          v11 = v190++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_529;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v191;
        }

LABEL_529:
        v231 = 208;
        goto LABEL_558;
      case 0x1Eu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 228) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v38 |= (v238[0] & 0x7F) << v36;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_414;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v38;
        }

LABEL_414:
        v231 = 152;
        goto LABEL_558;
      case 0x1Fu:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 228) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v238[0] & 0x7F) << v94;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v11 = v95++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_456;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v96;
        }

LABEL_456:
        v231 = 88;
        goto LABEL_558;
      case 0x20u:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        *(a1 + 228) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v208 = [a2 position] + 1;
          if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v207 |= (v238[0] & 0x7F) << v205;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v205 += 7;
          v11 = v206++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_541;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v207;
        }

LABEL_541:
        v231 = 180;
        goto LABEL_558;
      case 0x21u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 228) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v43 |= (v238[0] & 0x7F) << v41;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
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
          v24 = v43;
        }

LABEL_418:
        v231 = 72;
        goto LABEL_558;
      case 0x22u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 228) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v238[0] & 0x7F) << v83;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v11 = v84++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_448;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v85;
        }

LABEL_448:
        v231 = 132;
        goto LABEL_558;
      case 0x23u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 228) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v59 |= (v238[0] & 0x7F) << v57;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_428;
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

LABEL_428:
        v231 = 128;
        goto LABEL_558;
      case 0x24u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 228) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v126 |= (v238[0] & 0x7F) << v124;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v11 = v125++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_480;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v126;
        }

LABEL_480:
        v231 = 144;
        goto LABEL_558;
      case 0x25u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 228) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v54 |= (v238[0] & 0x7F) << v52;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_424;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v54;
        }

LABEL_424:
        v231 = 148;
        goto LABEL_558;
      case 0x26u:
        v215 = 0;
        v216 = 0;
        v217 = 0;
        *(a1 + 228) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v218 = [a2 position] + 1;
          if (v218 >= [a2 position] && (v219 = objc_msgSend(a2, "position") + 1, v219 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v217 |= (v238[0] & 0x7F) << v215;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v215 += 7;
          v11 = v216++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_549;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v217;
        }

LABEL_549:
        v231 = 120;
        goto LABEL_558;
      case 0x27u:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        *(a1 + 228) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v213 = [a2 position] + 1;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 1, v214 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v212 |= (v238[0] & 0x7F) << v210;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v11 = v211++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_545;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v212;
        }

LABEL_545:
        v231 = 124;
        goto LABEL_558;
      case 0x28u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 228) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v75 |= (v238[0] & 0x7F) << v73;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v11 = v74++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_440;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v75;
        }

LABEL_440:
        v231 = 140;
        goto LABEL_558;
      case 0x29u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 228) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v106 |= (v238[0] & 0x7F) << v104;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v11 = v105++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_464;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v106;
        }

LABEL_464:
        v231 = 116;
        goto LABEL_558;
      case 0x2Bu:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        *(a1 + 228) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (v238[0] & 0x7F) << v157;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v11 = v158++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_509;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v159;
        }

LABEL_509:
        v231 = 108;
        goto LABEL_558;
      case 0x2Cu:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 228) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v111 |= (v238[0] & 0x7F) << v109;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v11 = v110++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v111;
        }

LABEL_468:
        v231 = 76;
        goto LABEL_558;
      case 0x2Du:
        v226 = 0;
        v227 = 0;
        v228 = 0;
        *(a1 + 228) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v229 = [a2 position] + 1;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v228 |= (v238[0] & 0x7F) << v226;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v226 += 7;
          v11 = v227++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_557;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v228;
        }

LABEL_557:
        v231 = 196;
        goto LABEL_558;
      case 0x2Eu:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 228) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v70 |= (v238[0] & 0x7F) << v68;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v11 = v69++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_436;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v70;
        }

LABEL_436:
        v231 = 176;
        goto LABEL_558;
      case 0x2Fu:
        v194 = PBReaderReadString();

        v145 = v194;
        v146 = 160;
LABEL_333:
        *(a1 + v146) = v145;
        goto LABEL_559;
      case 0x30u:
        v220 = 0;
        v221 = 0;
        v222 = 0;
        *(a1 + 228) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v223 = [a2 position] + 1;
          if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 1, v224 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v222 |= (v238[0] & 0x7F) << v220;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v220 += 7;
          v11 = v221++ >= 9;
          if (v11)
          {
            v225 = 0;
            goto LABEL_553;
          }
        }

        if ([a2 hasError])
        {
          v225 = 0;
        }

        else
        {
          v225 = v222;
        }

LABEL_553:
        v24 = -(v225 & 1) ^ (v225 >> 1);
        v231 = 92;
        goto LABEL_558;
      case 0x31u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 228) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v32 |= (v238[0] & 0x7F) << v30;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v35 = 0;
            goto LABEL_410;
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

LABEL_410:
        v24 = -(v35 & 1) ^ (v35 >> 1);
        v231 = 96;
        goto LABEL_558;
      case 0x32u:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 228) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v238[0] & 0x7F) << v172;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v11 = v173++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_521;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v174;
        }

LABEL_521:
        v231 = 84;
        goto LABEL_558;
      case 0x33u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 228) |= 1uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v27 |= (v238[0] & 0x7F) << v25;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_406;
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

LABEL_406:
        v232 = 32;
LABEL_489:
        *(a1 + v232) = v18;
        goto LABEL_559;
      case 0x34u:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 228) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v21 |= (v238[0] & 0x7F) << v19;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_402;
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

LABEL_402:
        v231 = 184;
        goto LABEL_558;
      case 0x35u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 228) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v238[0] & 0x7F) << v78;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v11 = v79++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_444;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v80;
        }

LABEL_444:
        v231 = 188;
        goto LABEL_558;
      case 0x36u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 228) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
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

          v131 |= (v238[0] & 0x7F) << v129;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v11 = v130++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_484;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v131;
        }

LABEL_484:
        v231 = 192;
        goto LABEL_558;
      case 0x37u:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        *(a1 + 228) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v238[0]) = 0;
          v203 = [a2 position] + 1;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v202 |= (v238[0] & 0x7F) << v200;
          if ((v238[0] & 0x80) == 0)
          {
            break;
          }

          v200 += 7;
          v11 = v201++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_537;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v202;
        }

LABEL_537:
        v231 = 172;
LABEL_558:
        *(a1 + v231) = v24;
        goto LABEL_559;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_559;
        }

        return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMLinkPrefInitReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 24) |= 2u;
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
        v31 = 16;
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
        *(a1 + 24) |= 4u;
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
        v31 = 20;
      }

      *(a1 + v31) = v24;
LABEL_62:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMLinkStateChangeReadFrom(uint64_t a1, void *a2)
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
        v94 = 0;
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

        v7 |= (v94 & 0x7F) << v5;
        if ((v94 & 0x80) == 0)
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
          *(a1 + 96) |= 2u;
          while (1)
          {
            v96 = 0;
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

            v14 |= (v96 & 0x7F) << v12;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_184:
              v92 = 16;
              goto LABEL_193;
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

          goto LABEL_184;
        case 2u:
          String = PBReaderReadString();

          v51 = String;
          v52 = 32;
          goto LABEL_101;
        case 3u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 96) |= 0x800u;
          while (1)
          {
            v106 = 0;
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

            v47 |= (v106 & 0x7F) << v45;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v10 = v46++ >= 9;
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
            v23 = v47;
          }

LABEL_172:
          v91 = 72;
          goto LABEL_206;
        case 4u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 96) |= 0x40u;
          while (1)
          {
            v105 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v105 & 0x7F) << v53;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v10 = v54++ >= 9;
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
            v23 = v55;
          }

LABEL_176:
          v91 = 52;
          goto LABEL_206;
        case 5u:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 96) |= 0x200u;
          while (1)
          {
            v104 = 0;
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

            v32 |= (v104 & 0x7F) << v30;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v10 = v31++ >= 9;
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
            v23 = v32;
          }

LABEL_160:
          v91 = 64;
          goto LABEL_206;
        case 6u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 96) |= 0x100u;
          while (1)
          {
            v103 = 0;
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

            v66 |= (v103 & 0x7F) << v64;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v10 = v65++ >= 9;
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
            v23 = v66;
          }

LABEL_188:
          v91 = 60;
          goto LABEL_206;
        case 7u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 96) |= 0x1000u;
          while (1)
          {
            v102 = 0;
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

            v76 |= (v102 & 0x7F) << v74;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v10 = v75++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_197;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v76;
          }

LABEL_197:
          v91 = 88;
          goto LABEL_206;
        case 8u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 96) |= 8u;
          while (1)
          {
            v101 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v101 & 0x7F) << v58;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v10 = v59++ >= 9;
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
            v23 = v60;
          }

LABEL_180:
          v91 = 40;
          goto LABEL_206;
        case 9u:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 96) |= 0x10u;
          while (1)
          {
            v100 = 0;
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
              v23 = 0;
              goto LABEL_205;
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

LABEL_205:
          v91 = 44;
          goto LABEL_206;
        case 0xAu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 96) |= 0x20u;
          while (1)
          {
            v99 = 0;
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

            v42 |= (v99 & 0x7F) << v40;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v10 = v41++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_168;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v42;
          }

LABEL_168:
          v91 = 48;
          goto LABEL_206;
        case 0xBu:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 96) |= 0x2000u;
          while (1)
          {
            v108 = 0;
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

            v81 |= (v108 & 0x7F) << v79;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v10 = v80++ >= 9;
            if (v10)
            {
              v84 = 0;
              goto LABEL_201;
            }
          }

          if ([a2 hasError])
          {
            v84 = 0;
          }

          else
          {
            v84 = v81;
          }

LABEL_201:
          v23 = -(v84 & 1) ^ (v84 >> 1);
          v91 = 92;
          goto LABEL_206;
        case 0xCu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 96) |= 4u;
          while (1)
          {
            v107 = 0;
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

            v26 |= (v107 & 0x7F) << v24;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v29 = 0;
              goto LABEL_156;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v26;
          }

LABEL_156:
          v23 = -(v29 & 1) ^ (v29 >> 1);
          v91 = 24;
          goto LABEL_206;
        case 0xDu:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 96) |= 0x80u;
          while (1)
          {
            v98 = 0;
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

            v37 |= (v98 & 0x7F) << v35;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v10 = v36++ >= 9;
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
            v23 = v37;
          }

LABEL_164:
          v91 = 56;
          goto LABEL_206;
        case 0xEu:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 96) |= 1u;
          while (1)
          {
            v95 = 0;
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

            v71 |= (v95 & 0x7F) << v69;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v10 = v70++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_192;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v71;
          }

LABEL_192:
          v92 = 8;
LABEL_193:
          *(a1 + v92) = v17;
          goto LABEL_207;
        case 0xFu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 96) |= 0x400u;
          break;
        case 0x10u:
          v50 = PBReaderReadString();

          v51 = v50;
          v52 = 80;
LABEL_101:
          *(a1 + v52) = v51;
          goto LABEL_207;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_207;
      }

      while (1)
      {
        v97 = 0;
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

        v20 |= (v97 & 0x7F) << v18;
        if ((v97 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v10 = v19++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_152;
        }
      }

      v23 = [a2 hasError] ? 0 : v20;
LABEL_152:
      v91 = 68;
LABEL_206:
      *(a1 + v91) = v23;
LABEL_207:
      v93 = [a2 position];
    }

    while (v93 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMStreamingReportReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v76[0]) = 0;
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

        v7 |= (v76[0] & 0x7F) << v5;
        if ((v76[0] & 0x80) == 0)
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
      if ((v11 >> 3) > 9)
      {
        if (v12 > 12)
        {
          switch(v12)
          {
            case 0xD:
              v51 = 0;
              v52 = 0;
              v53 = 0;
              *(a1 + 52) |= 0x10u;
              while (1)
              {
                LOBYTE(v76[0]) = 0;
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

                v53 |= (v76[0] & 0x7F) << v51;
                if ((v76[0] & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                v10 = v52++ >= 9;
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
                v18 = v53;
              }

LABEL_161:
              v73 = 28;
              goto LABEL_173;
            case 0x10:
              v71 = objc_alloc_init(AWDThroughputEvaluation);
              [a1 addInstValues:v71];

              v76[0] = 0;
              v76[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDThroughputEvaluationReadFrom(v71, a2);
              if (!result)
              {
                return result;
              }

              PBReaderRecallMark();
              goto LABEL_174;
            case 0x11:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 52) |= 2u;
              while (1)
              {
                LOBYTE(v76[0]) = 0;
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

                v32 |= (v76[0] & 0x7F) << v30;
                if ((v76[0] & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v10 = v31++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_149;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v32;
              }

LABEL_149:
              v73 = 16;
              goto LABEL_173;
          }
        }

        else
        {
          switch(v12)
          {
            case 0xA:
              v41 = 0;
              v42 = 0;
              v43 = 0;
              *(a1 + 52) |= 0x400u;
              while (1)
              {
                LOBYTE(v76[0]) = 0;
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

                v43 |= (v76[0] & 0x7F) << v41;
                if ((v76[0] & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                v10 = v42++ >= 9;
                if (v10)
                {
                  LOBYTE(v29) = 0;
                  goto LABEL_155;
                }
              }

              v29 = (v43 != 0) & ~[a2 hasError];
LABEL_155:
              v74 = 51;
              goto LABEL_168;
            case 0xB:
              v61 = 0;
              v62 = 0;
              v63 = 0;
              *(a1 + 52) |= 0x200u;
              while (1)
              {
                LOBYTE(v76[0]) = 0;
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

                v63 |= (v76[0] & 0x7F) << v61;
                if ((v76[0] & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                v10 = v62++ >= 9;
                if (v10)
                {
                  LOBYTE(v29) = 0;
                  goto LABEL_167;
                }
              }

              v29 = (v63 != 0) & ~[a2 hasError];
LABEL_167:
              v74 = 50;
              goto LABEL_168;
            case 0xC:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 52) |= 8u;
              while (1)
              {
                LOBYTE(v76[0]) = 0;
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

                v21 |= (v76[0] & 0x7F) << v19;
                if ((v76[0] & 0x80) == 0)
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
              v73 = 24;
              goto LABEL_173;
          }
        }
      }

      else if (v12 > 5)
      {
        switch(v12)
        {
          case 6:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 52) |= 0x80u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v48 |= (v76[0] & 0x7F) << v46;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v10 = v47++ >= 9;
              if (v10)
              {
                LOBYTE(v29) = 0;
                goto LABEL_157;
              }
            }

            v29 = (v48 != 0) & ~[a2 hasError];
LABEL_157:
            v74 = 48;
            goto LABEL_168;
          case 7:
            v66 = 0;
            v67 = 0;
            v68 = 0;
            *(a1 + 52) |= 0x20u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v68 |= (v76[0] & 0x7F) << v66;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              v10 = v67++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_172;
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

LABEL_172:
            v73 = 40;
            goto LABEL_173;
          case 9:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 52) |= 0x100u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v26 |= (v76[0] & 0x7F) << v24;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                LOBYTE(v29) = 0;
                goto LABEL_145;
              }
            }

            v29 = (v26 != 0) & ~[a2 hasError];
LABEL_145:
            v74 = 49;
LABEL_168:
            *(a1 + v74) = v29;
            goto LABEL_174;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v37 |= (v76[0] & 0x7F) << v35;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v10 = v36++ >= 9;
              if (v10)
              {
                v40 = 0;
                goto LABEL_153;
              }
            }

            if ([a2 hasError])
            {
              v40 = 0;
            }

            else
            {
              v40 = v37;
            }

LABEL_153:
            *(a1 + 8) = v40;
            goto LABEL_174;
          case 4:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 52) |= 0x40u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v58 |= (v76[0] & 0x7F) << v56;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v10 = v57++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_165;
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

LABEL_165:
            v73 = 44;
            goto LABEL_173;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v15 |= (v76[0] & 0x7F) << v13;
              if ((v76[0] & 0x80) == 0)
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
            v73 = 20;
LABEL_173:
            *(a1 + v73) = v18;
            goto LABEL_174;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_174:
      v75 = [a2 position];
    }

    while (v75 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMULCACoexStatsReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
      if ((v11 >> 3) > 5)
      {
        break;
      }

      if (v12 > 2)
      {
        switch(v12)
        {
          case 3:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 52) |= 0x100u;
            while (1)
            {
              v79 = 0;
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

              v48 |= (v79 & 0x7F) << v46;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v10 = v47++ >= 9;
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
              v18 = v48;
            }

LABEL_139:
            v67 = 44;
            break;
          case 4:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 52) |= 0x40u;
            while (1)
            {
              v78 = 0;
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

              v58 |= (v78 & 0x7F) << v56;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v10 = v57++ >= 9;
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
              v18 = v58;
            }

LABEL_155:
            v67 = 36;
            break;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 52) |= 0x80u;
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
              v10 = v14++ >= 9;
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
              v18 = v15;
            }

LABEL_147:
            v67 = 40;
            break;
          default:
            goto LABEL_120;
        }

LABEL_160:
        *(a1 + v67) = v18;
        goto LABEL_161;
      }

      if (v12 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          v70 = 0;
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

          v37 |= (v70 & 0x7F) << v35;
          if ((v70 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v10 = v36++ >= 9;
          if (v10)
          {
            v40 = 0;
            goto LABEL_131;
          }
        }

        if ([a2 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v37;
        }

LABEL_131:
        *(a1 + 8) = v40;
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_120;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 52) |= 0x200u;
        while (1)
        {
          v71 = 0;
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

          v26 |= (v71 & 0x7F) << v24;
          if ((v71 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            LOBYTE(v29) = 0;
            goto LABEL_123;
          }
        }

        v29 = (v26 != 0) & ~[a2 hasError];
LABEL_123:
        *(a1 + 48) = v29;
      }

LABEL_161:
      v68 = [a2 position];
      if (v68 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 52) |= 0x20u;
        while (1)
        {
          v76 = 0;
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

          v43 |= (v76 & 0x7F) << v41;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v10 = v42++ >= 9;
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
          v18 = v43;
        }

LABEL_135:
        v67 = 32;
      }

      else
      {
        if (v12 != 7)
        {
LABEL_120:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_161;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 52) |= 0x10u;
        while (1)
        {
          v75 = 0;
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

          v32 |= (v75 & 0x7F) << v30;
          if ((v75 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v32;
        }

LABEL_127:
        v67 = 28;
      }
    }

    else
    {
      switch(v12)
      {
        case 8:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            v74 = 0;
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

            v53 |= (v74 & 0x7F) << v51;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
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
            v18 = v53;
          }

LABEL_143:
          v67 = 20;
          break;
        case 9:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            v73 = 0;
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

            v63 |= (v73 & 0x7F) << v61;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
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
            v18 = v63;
          }

LABEL_159:
          v67 = 24;
          break;
        case 0xA:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 52) |= 2u;
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
              goto LABEL_151;
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

LABEL_151:
          v67 = 16;
          break;
        default:
          goto LABEL_120;
      }
    }

    goto LABEL_160;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMWiFiCallingEndReadFrom(uint64_t a1, void *a2)
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
        [objc_msgSend(a2 "data")];
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
        *(a1 + 172) |= 8uLL;
        while (1)
        {
          v204 = 0;
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

          v15 |= (v204 & 0x7F) << v13;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_388:
            v202 = 32;
            goto LABEL_393;
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

        goto LABEL_388;
      case 2u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 172) |= 0x10uLL;
        while (1)
        {
          v204 = 0;
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

          v113 |= (v204 & 0x7F) << v111;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            v116 = 0;
            goto LABEL_392;
          }
        }

        if ([a2 hasError])
        {
          v116 = 0;
        }

        else
        {
          v116 = v113;
        }

LABEL_392:
        v18 = -(v116 & 1) ^ (v116 >> 1);
        v202 = 40;
        goto LABEL_393;
      case 3u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 172) |= 0x1000000uLL;
        while (1)
        {
          v204 = 0;
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

          v91 |= (v204 & 0x7F) << v89;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v11 = v90++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_374;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v91;
        }

LABEL_374:
        v201 = 156;
        goto LABEL_448;
      case 4u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 172) |= 0x20uLL;
        while (1)
        {
          v204 = 0;
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

          v102 |= (v204 & 0x7F) << v100;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v105 = 0;
            goto LABEL_382;
          }
        }

        if ([a2 hasError])
        {
          v105 = 0;
        }

        else
        {
          v105 = v102;
        }

LABEL_382:
        v18 = -(v105 & 1) ^ (v105 >> 1);
        v202 = 48;
        goto LABEL_393;
      case 5u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 172) |= 0x100000000uLL;
        while (1)
        {
          v204 = 0;
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

          v67 |= (v204 & 0x7F) << v65;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            LOBYTE(v59) = 0;
            goto LABEL_360;
          }
        }

        v59 = (v67 != 0) & ~[a2 hasError];
LABEL_360:
        v203 = 167;
        goto LABEL_451;
      case 6u:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 172) |= 0x200uLL;
        while (1)
        {
          v204 = 0;
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

          v134 |= (v204 & 0x7F) << v132;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v11 = v133++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_409;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v134;
        }

LABEL_409:
        v201 = 68;
        goto LABEL_448;
      case 7u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 172) |= 0x4000000uLL;
        while (1)
        {
          v204 = 0;
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

          v150 |= (v204 & 0x7F) << v148;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v11 = v149++ >= 9;
          if (v11)
          {
            LOBYTE(v59) = 0;
            goto LABEL_419;
          }
        }

        v59 = (v150 != 0) & ~[a2 hasError];
LABEL_419:
        v203 = 161;
        goto LABEL_451;
      case 8u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 172) |= 0x80000000uLL;
        while (1)
        {
          v204 = 0;
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

          v108 |= (v204 & 0x7F) << v106;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v11 = v107++ >= 9;
          if (v11)
          {
            LOBYTE(v59) = 0;
            goto LABEL_384;
          }
        }

        v59 = (v108 != 0) & ~[a2 hasError];
LABEL_384:
        v203 = 166;
        goto LABEL_451;
      case 9u:
        v163 = 0;
        v164 = 0;
        v165 = 0;
        *(a1 + 172) |= 0x800000uLL;
        while (1)
        {
          v204 = 0;
          v166 = [a2 position] + 1;
          if (v166 >= [a2 position] && (v167 = objc_msgSend(a2, "position") + 1, v167 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v165 |= (v204 & 0x7F) << v163;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v163 += 7;
          v11 = v164++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_431;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v165;
        }

LABEL_431:
        v201 = 152;
        goto LABEL_448;
      case 0xAu:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 172) |= 0x800uLL;
        while (1)
        {
          v204 = 0;
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

          v77 |= (v204 & 0x7F) << v75;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
          if (v11)
          {
            v80 = 0;
            goto LABEL_368;
          }
        }

        if ([a2 hasError])
        {
          v80 = 0;
        }

        else
        {
          v80 = v77;
        }

LABEL_368:
        v36 = -(v80 & 1) ^ (v80 >> 1);
        v201 = 92;
        goto LABEL_448;
      case 0xBu:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 172) |= 0x2000uLL;
        while (1)
        {
          v204 = 0;
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

          v160 |= (v204 & 0x7F) << v158;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v11 = v159++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_427;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v160;
        }

LABEL_427:
        v201 = 100;
        goto LABEL_448;
      case 0xCu:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 172) |= 0x40000000uLL;
        while (1)
        {
          v204 = 0;
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

          v62 |= (v204 & 0x7F) << v60;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            LOBYTE(v59) = 0;
            goto LABEL_358;
          }
        }

        v59 = (v62 != 0) & ~[a2 hasError];
LABEL_358:
        v203 = 165;
        goto LABEL_451;
      case 0xDu:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 172) |= 0x100uLL;
        while (1)
        {
          v204 = 0;
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

          v72 |= (v204 & 0x7F) << v70;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_364;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v72;
        }

LABEL_364:
        v201 = 64;
        goto LABEL_448;
      case 0xEu:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 172) |= 0x4000uLL;
        while (1)
        {
          v204 = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v204 & 0x7F) << v142;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v11 = v143++ >= 9;
          if (v11)
          {
            v147 = 0;
            goto LABEL_417;
          }
        }

        if ([a2 hasError])
        {
          v147 = 0;
        }

        else
        {
          v147 = v144;
        }

LABEL_417:
        v36 = -(v147 & 1) ^ (v147 >> 1);
        v201 = 104;
        goto LABEL_448;
      case 0xFu:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 172) |= 0x1000uLL;
        while (1)
        {
          v204 = 0;
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

          v50 |= (v204 & 0x7F) << v48;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v53 = 0;
            goto LABEL_354;
          }
        }

        if ([a2 hasError])
        {
          v53 = 0;
        }

        else
        {
          v53 = v50;
        }

LABEL_354:
        v36 = -(v53 & 1) ^ (v53 >> 1);
        v201 = 96;
        goto LABEL_448;
      case 0x10u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 172) |= 2uLL;
        while (1)
        {
          v204 = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v204 & 0x7F) << v94;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v11 = v95++ >= 9;
          if (v11)
          {
            v99 = 0;
            goto LABEL_378;
          }
        }

        if ([a2 hasError])
        {
          v99 = 0;
        }

        else
        {
          v99 = v96;
        }

LABEL_378:
        v18 = -(v99 & 1) ^ (v99 >> 1);
        v202 = 16;
        goto LABEL_393;
      case 0x11u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 172) |= 1uLL;
        while (1)
        {
          v204 = 0;
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

          v44 |= (v204 & 0x7F) << v42;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v47 = 0;
            goto LABEL_350;
          }
        }

        if ([a2 hasError])
        {
          v47 = 0;
        }

        else
        {
          v47 = v44;
        }

LABEL_350:
        v18 = -(v47 & 1) ^ (v47 >> 1);
        v202 = 8;
        goto LABEL_393;
      case 0x12u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 172) |= 0x400000uLL;
        while (1)
        {
          v204 = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v204 & 0x7F) << v122;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_401;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v124;
        }

LABEL_401:
        v201 = 136;
        goto LABEL_448;
      case 0x13u:
        v153 = 0;
        v154 = 0;
        v155 = 0;
        *(a1 + 172) |= 0x20000uLL;
        while (1)
        {
          v204 = 0;
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

          v155 |= (v204 & 0x7F) << v153;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v153 += 7;
          v11 = v154++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_423;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v155;
        }

LABEL_423:
        v201 = 116;
        goto LABEL_448;
      case 0x14u:
        v183 = 0;
        v184 = 0;
        v185 = 0;
        *(a1 + 172) |= 0x8000uLL;
        while (1)
        {
          v204 = 0;
          v186 = [a2 position] + 1;
          if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v185 |= (v204 & 0x7F) << v183;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v183 += 7;
          v11 = v184++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_443;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v185;
        }

LABEL_443:
        v201 = 108;
        goto LABEL_448;
      case 0x15u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 172) |= 0x40000uLL;
        while (1)
        {
          v204 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v204 & 0x7F) << v127;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v11 = v128++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_405;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v129;
        }

LABEL_405:
        v201 = 120;
        goto LABEL_448;
      case 0x16u:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 172) |= 0x10000uLL;
        while (1)
        {
          v204 = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v204 & 0x7F) << v137;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v11 = v138++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_413;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v139;
        }

LABEL_413:
        v201 = 112;
        goto LABEL_448;
      case 0x17u:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        *(a1 + 172) |= 0x8000000uLL;
        while (1)
        {
          v204 = 0;
          v181 = [a2 position] + 1;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v180 |= (v204 & 0x7F) << v178;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v11 = v179++ >= 9;
          if (v11)
          {
            LOBYTE(v59) = 0;
            goto LABEL_439;
          }
        }

        v59 = (v180 != 0) & ~[a2 hasError];
LABEL_439:
        v203 = 162;
        goto LABEL_451;
      case 0x18u:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        *(a1 + 172) |= 0x400uLL;
        while (1)
        {
          v204 = 0;
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

          v190 |= (v204 & 0x7F) << v188;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v188 += 7;
          v11 = v189++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_447;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v190;
        }

LABEL_447:
        v201 = 88;
        goto LABEL_448;
      case 0x19u:
        String = PBReaderReadString();

        v87 = String;
        v88 = 144;
        goto LABEL_328;
      case 0x1Au:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 172) |= 0x20000000uLL;
        while (1)
        {
          v204 = 0;
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

          v83 |= (v204 & 0x7F) << v81;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v11 = v82++ >= 9;
          if (v11)
          {
            LOBYTE(v59) = 0;
            goto LABEL_370;
          }
        }

        v59 = (v83 != 0) & ~[a2 hasError];
LABEL_370:
        v203 = 164;
        goto LABEL_451;
      case 0x1Bu:
        v199 = PBReaderReadString();

        v87 = v199;
        v88 = 80;
        goto LABEL_328;
      case 0x1Cu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 172) |= 0x200000uLL;
        while (1)
        {
          v204 = 0;
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

          v33 |= (v204 & 0x7F) << v31;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_342;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v33;
        }

LABEL_342:
        v201 = 132;
        goto LABEL_448;
      case 0x1Du:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        *(a1 + 172) |= 0x10000000uLL;
        while (1)
        {
          v204 = 0;
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

          v195 |= (v204 & 0x7F) << v193;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v11 = v194++ >= 9;
          if (v11)
          {
            LOBYTE(v59) = 0;
            goto LABEL_450;
          }
        }

        v59 = (v195 != 0) & ~[a2 hasError];
LABEL_450:
        v203 = 163;
        goto LABEL_451;
      case 0x1Eu:
        v198 = PBReaderReadString();

        v87 = v198;
        v88 = 72;
LABEL_328:
        *(a1 + v88) = v87;
        continue;
      case 0x1Fu:
        v168 = 0;
        v169 = 0;
        v170 = 0;
        *(a1 + 172) |= 0x2000000uLL;
        while (1)
        {
          v204 = 0;
          v171 = [a2 position] + 1;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 1, v172 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v170 |= (v204 & 0x7F) << v168;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v11 = v169++ >= 9;
          if (v11)
          {
            LOBYTE(v59) = 0;
            goto LABEL_433;
          }
        }

        v59 = (v170 != 0) & ~[a2 hasError];
LABEL_433:
        v203 = 160;
        goto LABEL_451;
      case 0x20u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 172) |= 0x80uLL;
        while (1)
        {
          v204 = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v204 & 0x7F) << v117;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_397;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v119;
        }

LABEL_397:
        v201 = 60;
        goto LABEL_448;
      case 0x21u:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        *(a1 + 172) |= 0x40uLL;
        while (1)
        {
          v204 = 0;
          v176 = [a2 position] + 1;
          if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v175 |= (v204 & 0x7F) << v173;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v173 += 7;
          v11 = v174++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_437;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v175;
        }

LABEL_437:
        v201 = 56;
        goto LABEL_448;
      case 0x22u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 172) |= 0x200000000uLL;
        while (1)
        {
          v204 = 0;
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

          v56 |= (v204 & 0x7F) << v54;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            LOBYTE(v59) = 0;
            goto LABEL_356;
          }
        }

        v59 = (v56 != 0) & ~[a2 hasError];
LABEL_356:
        v203 = 168;
LABEL_451:
        *(a1 + v203) = v59;
        continue;
      case 0x23u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 172) |= 0x80000uLL;
        while (1)
        {
          v204 = 0;
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

          v39 |= (v204 & 0x7F) << v37;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_346;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v39;
        }

LABEL_346:
        v201 = 124;
        goto LABEL_448;
      case 0x24u:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 172) |= 0x100000uLL;
        while (1)
        {
          v204 = 0;
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

          v21 |= (v204 & 0x7F) << v19;
          if ((v204 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_334;
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

LABEL_334:
        v36 = -(v24 & 1) ^ (v24 >> 1);
        v201 = 128;
LABEL_448:
        *(a1 + v201) = v36;
        continue;
      case 0x25u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 172) |= 4uLL;
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
      v204 = 0;
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

      v27 |= (v204 & 0x7F) << v25;
      if ((v204 & 0x80) == 0)
      {
        break;
      }

      v25 += 7;
      v11 = v26++ >= 9;
      if (v11)
      {
        v30 = 0;
        goto LABEL_338;
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

LABEL_338:
    v18 = -(v30 & 1) ^ (v30 >> 1);
    v202 = 24;
LABEL_393:
    *(a1 + v202) = v18;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWRMWiFiCell5GDataReadFrom(uint64_t a1, void *a2)
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
      v283 = 0;
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

      v8 |= (v283 & 0x7F) << v6;
      if ((v283 & 0x80) == 0)
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
        *(a1 + 224) |= 1uLL;
        while (1)
        {
          v283 = 0;
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

          v15 |= (v283 & 0x7F) << v13;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_578:
            *(a1 + 8) = v18;
            goto LABEL_683;
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

        goto LABEL_578;
      case 2u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 224) |= 0x8000000000uLL;
        while (1)
        {
          v283 = 0;
          v147 = [a2 position] + 1;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 1, v148 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v146 |= (v283 & 0x7F) << v144;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v11 = v145++ >= 9;
          if (v11)
          {
            v149 = 0;
            goto LABEL_582;
          }
        }

        if ([a2 hasError])
        {
          v149 = 0;
        }

        else
        {
          v149 = v146;
        }

LABEL_582:
        v24 = -(v149 & 1) ^ (v149 >> 1);
        v281 = 180;
        goto LABEL_682;
      case 3u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 224) |= 0x20000000000uLL;
        while (1)
        {
          v283 = 0;
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

          v130 |= (v283 & 0x7F) << v128;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v11 = v129++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_566;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v130;
        }

LABEL_566:
        v281 = 188;
        goto LABEL_682;
      case 4u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 224) |= 0x80000000000uLL;
        while (1)
        {
          v283 = 0;
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

          v136 |= (v283 & 0x7F) << v134;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v11 = v135++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_570;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v136;
        }

LABEL_570:
        v281 = 196;
        goto LABEL_682;
      case 5u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 224) |= 0x10000000000uLL;
        while (1)
        {
          v283 = 0;
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

          v99 |= (v283 & 0x7F) << v97;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v11 = v98++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_542;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v99;
        }

LABEL_542:
        v281 = 184;
        goto LABEL_682;
      case 6u:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 224) |= 0x400000000uLL;
        while (1)
        {
          v283 = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v283 & 0x7F) << v172;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v11 = v173++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_602;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v174;
        }

LABEL_602:
        v281 = 160;
        goto LABEL_682;
      case 7u:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        *(a1 + 224) |= 0x1000000000uLL;
        while (1)
        {
          v283 = 0;
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

          v190 |= (v283 & 0x7F) << v188;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v188 += 7;
          v11 = v189++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_614;
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

LABEL_614:
        v281 = 168;
        goto LABEL_682;
      case 8u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 224) |= 0x40000000000uLL;
        while (1)
        {
          v283 = 0;
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

          v141 |= (v283 & 0x7F) << v139;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v11 = v140++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_574;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v141;
        }

LABEL_574:
        v281 = 192;
        goto LABEL_682;
      case 9u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        *(a1 + 224) |= 0x200000000uLL;
        while (1)
        {
          v283 = 0;
          v207 = [a2 position] + 1;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v206 |= (v283 & 0x7F) << v204;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v11 = v205++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_626;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v206;
        }

LABEL_626:
        v281 = 156;
        goto LABEL_682;
      case 0xAu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 224) |= 0x800000000000uLL;
        while (1)
        {
          v283 = 0;
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

          v114 |= (v283 & 0x7F) << v112;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
          if (v11)
          {
            v117 = 0;
            goto LABEL_554;
          }
        }

        if ([a2 hasError])
        {
          v117 = 0;
        }

        else
        {
          v117 = v114;
        }

LABEL_554:
        v24 = -(v117 & 1) ^ (v117 >> 1);
        v281 = 212;
        goto LABEL_682;
      case 0xBu:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        *(a1 + 224) |= 0x200000000000uLL;
        while (1)
        {
          v283 = 0;
          v202 = [a2 position] + 1;
          if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v201 |= (v283 & 0x7F) << v199;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v199 += 7;
          v11 = v200++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_622;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v201;
        }

LABEL_622:
        v281 = 204;
        goto LABEL_682;
      case 0xCu:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 224) |= 0x400000000000uLL;
        while (1)
        {
          v283 = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v283 & 0x7F) << v87;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v11 = v88++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_534;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v89;
        }

LABEL_534:
        v281 = 208;
        goto LABEL_682;
      case 0xDu:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 224) |= 0x100000000000uLL;
        while (1)
        {
          v283 = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v283 & 0x7F) << v107;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_550;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v109;
        }

LABEL_550:
        v281 = 200;
        goto LABEL_682;
      case 0xEu:
        v183 = 0;
        v184 = 0;
        v185 = 0;
        *(a1 + 224) |= 0x800000000uLL;
        while (1)
        {
          v283 = 0;
          v186 = [a2 position] + 1;
          if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v185 |= (v283 & 0x7F) << v183;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v183 += 7;
          v11 = v184++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_610;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v185;
        }

LABEL_610:
        v281 = 164;
        goto LABEL_682;
      case 0xFu:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 224) |= 0x1000000000000uLL;
        while (1)
        {
          v283 = 0;
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

          v74 |= (v283 & 0x7F) << v72;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_522;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v74;
        }

LABEL_522:
        v281 = 216;
        goto LABEL_682;
      case 0x10u:
        String = PBReaderReadString();

        *(a1 + 88) = String;
        continue;
      case 0x11u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 224) |= 0x80uLL;
        while (1)
        {
          v283 = 0;
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

          v63 |= (v283 & 0x7F) << v61;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
          if (v11)
          {
            v66 = 0;
            goto LABEL_514;
          }
        }

        if ([a2 hasError])
        {
          v66 = 0;
        }

        else
        {
          v66 = v63;
        }

LABEL_514:
        v24 = -(v66 & 1) ^ (v66 >> 1);
        v281 = 40;
        goto LABEL_682;
      case 0x12u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 224) |= 0x200uLL;
        while (1)
        {
          v283 = 0;
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

          v157 |= (v283 & 0x7F) << v155;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v11 = v156++ >= 9;
          if (v11)
          {
            v160 = 0;
            goto LABEL_590;
          }
        }

        if ([a2 hasError])
        {
          v160 = 0;
        }

        else
        {
          v160 = v157;
        }

LABEL_590:
        v24 = -(v160 & 1) ^ (v160 >> 1);
        v281 = 48;
        goto LABEL_682;
      case 0x13u:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        *(a1 + 224) |= 0x100uLL;
        while (1)
        {
          v283 = 0;
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

          v195 |= (v283 & 0x7F) << v193;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v11 = v194++ >= 9;
          if (v11)
          {
            v198 = 0;
            goto LABEL_618;
          }
        }

        if ([a2 hasError])
        {
          v198 = 0;
        }

        else
        {
          v198 = v195;
        }

LABEL_618:
        v24 = -(v198 & 1) ^ (v198 >> 1);
        v281 = 44;
        goto LABEL_682;
      case 0x14u:
        v234 = 0;
        v235 = 0;
        v236 = 0;
        *(a1 + 224) |= 0x4000uLL;
        while (1)
        {
          v283 = 0;
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

          v236 |= (v283 & 0x7F) << v234;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v234 += 7;
          v11 = v235++ >= 9;
          if (v11)
          {
            v239 = 0;
            goto LABEL_650;
          }
        }

        if ([a2 hasError])
        {
          v239 = 0;
        }

        else
        {
          v239 = v236;
        }

LABEL_650:
        v24 = -(v239 & 1) ^ (v239 >> 1);
        v281 = 68;
        goto LABEL_682;
      case 0x15u:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 224) |= 0x8000uLL;
        while (1)
        {
          v283 = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v168 |= (v283 & 0x7F) << v166;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v11 = v167++ >= 9;
          if (v11)
          {
            v171 = 0;
            goto LABEL_598;
          }
        }

        if ([a2 hasError])
        {
          v171 = 0;
        }

        else
        {
          v171 = v168;
        }

LABEL_598:
        v24 = -(v171 & 1) ^ (v171 >> 1);
        v281 = 72;
        goto LABEL_682;
      case 0x16u:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        *(a1 + 224) |= 0x10000uLL;
        while (1)
        {
          v283 = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v179 |= (v283 & 0x7F) << v177;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v11 = v178++ >= 9;
          if (v11)
          {
            v182 = 0;
            goto LABEL_606;
          }
        }

        if ([a2 hasError])
        {
          v182 = 0;
        }

        else
        {
          v182 = v179;
        }

LABEL_606:
        v24 = -(v182 & 1) ^ (v182 >> 1);
        v281 = 76;
        goto LABEL_682;
      case 0x17u:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        *(a1 + 224) |= 4uLL;
        while (1)
        {
          v283 = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v283 & 0x7F) << v224;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v11 = v225++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_642;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v226;
        }

LABEL_642:
        v281 = 20;
        goto LABEL_682;
      case 0x18u:
        v245 = 0;
        v246 = 0;
        v247 = 0;
        *(a1 + 224) |= 0x40000uLL;
        while (1)
        {
          v283 = 0;
          v248 = [a2 position] + 1;
          if (v248 >= [a2 position] && (v249 = objc_msgSend(a2, "position") + 1, v249 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v247 |= (v283 & 0x7F) << v245;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v245 += 7;
          v11 = v246++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_658;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v247;
        }

LABEL_658:
        v281 = 96;
        goto LABEL_682;
      case 0x19u:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 224) |= 0x2000uLL;
        while (1)
        {
          v283 = 0;
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

          v125 |= (v283 & 0x7F) << v123;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v11 = v124++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_562;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v125;
        }

LABEL_562:
        v281 = 64;
        goto LABEL_682;
      case 0x1Au:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 224) |= 0x40uLL;
        while (1)
        {
          v283 = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v283 & 0x7F) << v118;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v11 = v119++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_558;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v120;
        }

LABEL_558:
        v281 = 36;
        goto LABEL_682;
      case 0x1Bu:
        v265 = 0;
        v266 = 0;
        v267 = 0;
        *(a1 + 224) |= 0x1000uLL;
        while (1)
        {
          v283 = 0;
          v268 = [a2 position] + 1;
          if (v268 >= [a2 position] && (v269 = objc_msgSend(a2, "position") + 1, v269 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v267 |= (v283 & 0x7F) << v265;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v265 += 7;
          v11 = v266++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_673;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v267;
        }

LABEL_673:
        v281 = 60;
        goto LABEL_682;
      case 0x1Cu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 224) |= 0x20000uLL;
        while (1)
        {
          v283 = 0;
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

          v53 |= (v283 & 0x7F) << v51;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_506;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v53;
        }

LABEL_506:
        v281 = 80;
        goto LABEL_682;
      case 0x1Du:
        v250 = 0;
        v251 = 0;
        v252 = 0;
        *(a1 + 224) |= 8uLL;
        while (1)
        {
          v283 = 0;
          v253 = [a2 position] + 1;
          if (v253 >= [a2 position] && (v254 = objc_msgSend(a2, "position") + 1, v254 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v252 |= (v283 & 0x7F) << v250;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v250 += 7;
          v11 = v251++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_662;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v252;
        }

LABEL_662:
        v281 = 24;
        goto LABEL_682;
      case 0x1Eu:
        v255 = 0;
        v256 = 0;
        v257 = 0;
        *(a1 + 224) |= 0x100000uLL;
        while (1)
        {
          v283 = 0;
          v258 = [a2 position] + 1;
          if (v258 >= [a2 position] && (v259 = objc_msgSend(a2, "position") + 1, v259 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v257 |= (v283 & 0x7F) << v255;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v255 += 7;
          v11 = v256++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_666;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v257;
        }

LABEL_666:
        v281 = 104;
        goto LABEL_682;
      case 0x1Fu:
        v209 = 0;
        v210 = 0;
        v211 = 0;
        *(a1 + 224) |= 0x400uLL;
        while (1)
        {
          v283 = 0;
          v212 = [a2 position] + 1;
          if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v211 |= (v283 & 0x7F) << v209;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v11 = v210++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_630;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v211;
        }

LABEL_630:
        v281 = 52;
        goto LABEL_682;
      case 0x20u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 224) |= 0x800uLL;
        while (1)
        {
          v283 = 0;
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

          v152 |= (v283 & 0x7F) << v150;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v11 = v151++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_586;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v152;
        }

LABEL_586:
        v281 = 56;
        goto LABEL_682;
      case 0x21u:
        v214 = 0;
        v215 = 0;
        v216 = 0;
        *(a1 + 224) |= 0x20uLL;
        while (1)
        {
          v283 = 0;
          v217 = [a2 position] + 1;
          if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 1, v218 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v216 |= (v283 & 0x7F) << v214;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v214 += 7;
          v11 = v215++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_634;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v216;
        }

LABEL_634:
        v281 = 32;
        goto LABEL_682;
      case 0x22u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 224) |= 0x10uLL;
        while (1)
        {
          v283 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v283 & 0x7F) << v77;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_526;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v79;
        }

LABEL_526:
        v281 = 28;
        goto LABEL_682;
      case 0x23u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 224) |= 0x8000000uLL;
        while (1)
        {
          v283 = 0;
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

          v58 |= (v283 & 0x7F) << v56;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_510;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v58;
        }

LABEL_510:
        v281 = 132;
        goto LABEL_682;
      case 0x24u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 224) |= 0x2000000000000uLL;
        while (1)
        {
          v283 = 0;
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

          v42 |= (v283 & 0x7F) << v40;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            LOBYTE(v45) = 0;
            goto LABEL_498;
          }
        }

        v45 = (v42 != 0) & ~[a2 hasError];
LABEL_498:
        v282 = 220;
        goto LABEL_669;
      case 0x25u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 224) |= 0x800000uLL;
        while (1)
        {
          v283 = 0;
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

          v48 |= (v283 & 0x7F) << v46;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_502;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v48;
        }

LABEL_502:
        v281 = 116;
        goto LABEL_682;
      case 0x26u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 224) |= 0x1000000uLL;
        while (1)
        {
          v283 = 0;
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

          v32 |= (v283 & 0x7F) << v30;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_492;
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

LABEL_492:
        v281 = 120;
        goto LABEL_682;
      case 0x27u:
        v260 = 0;
        v261 = 0;
        v262 = 0;
        *(a1 + 224) |= 0x4000000000000uLL;
        while (1)
        {
          v283 = 0;
          v263 = [a2 position] + 1;
          if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 1, v264 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v262 |= (v283 & 0x7F) << v260;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v260 += 7;
          v11 = v261++ >= 9;
          if (v11)
          {
            LOBYTE(v45) = 0;
            goto LABEL_668;
          }
        }

        v45 = (v262 != 0) & ~[a2 hasError];
LABEL_668:
        v282 = 221;
LABEL_669:
        *(a1 + v282) = v45;
        continue;
      case 0x28u:
        v229 = 0;
        v230 = 0;
        v231 = 0;
        *(a1 + 224) |= 0x100000000uLL;
        while (1)
        {
          v283 = 0;
          v232 = [a2 position] + 1;
          if (v232 >= [a2 position] && (v233 = objc_msgSend(a2, "position") + 1, v233 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v231 |= (v283 & 0x7F) << v229;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v229 += 7;
          v11 = v230++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_646;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v231;
        }

LABEL_646:
        v281 = 152;
        goto LABEL_682;
      case 0x29u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 224) |= 0x80000000uLL;
        while (1)
        {
          v283 = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v283 & 0x7F) << v102;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v11 = v103++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_546;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v104;
        }

LABEL_546:
        v281 = 148;
        goto LABEL_682;
      case 0x2Au:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 224) |= 0x40000000uLL;
        while (1)
        {
          v283 = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v283 & 0x7F) << v161;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v11 = v162++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_594;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v163;
        }

LABEL_594:
        v281 = 144;
        goto LABEL_682;
      case 0x2Bu:
        v240 = 0;
        v241 = 0;
        v242 = 0;
        *(a1 + 224) |= 0x4000000000uLL;
        while (1)
        {
          v283 = 0;
          v243 = [a2 position] + 1;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 1, v244 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v242 |= (v283 & 0x7F) << v240;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v240 += 7;
          v11 = v241++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_654;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v242;
        }

LABEL_654:
        v281 = 176;
        goto LABEL_682;
      case 0x2Cu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 224) |= 0x2000000000uLL;
        while (1)
        {
          v283 = 0;
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

          v27 |= (v283 & 0x7F) << v25;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_488;
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

LABEL_488:
        v281 = 172;
        goto LABEL_682;
      case 0x2Du:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 224) |= 0x400000uLL;
        while (1)
        {
          v283 = 0;
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

          v69 |= (v283 & 0x7F) << v67;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_518;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v69;
        }

LABEL_518:
        v281 = 112;
        goto LABEL_682;
      case 0x2Eu:
        v219 = 0;
        v220 = 0;
        v221 = 0;
        *(a1 + 224) |= 0x200000uLL;
        while (1)
        {
          v283 = 0;
          v222 = [a2 position] + 1;
          if (v222 >= [a2 position] && (v223 = objc_msgSend(a2, "position") + 1, v223 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v221 |= (v283 & 0x7F) << v219;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v219 += 7;
          v11 = v220++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_638;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v221;
        }

LABEL_638:
        v281 = 108;
        goto LABEL_682;
      case 0x2Fu:
        v271 = 0;
        v272 = 0;
        v273 = 0;
        *(a1 + 224) |= 0x2000000uLL;
        while (1)
        {
          v283 = 0;
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

          v273 |= (v283 & 0x7F) << v271;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v271 += 7;
          v11 = v272++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_677;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v273;
        }

LABEL_677:
        v281 = 124;
        goto LABEL_682;
      case 0x30u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 224) |= 0x4000000uLL;
        while (1)
        {
          v283 = 0;
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

          v37 |= (v283 & 0x7F) << v35;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_496;
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

LABEL_496:
        v281 = 128;
        goto LABEL_682;
      case 0x31u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 224) |= 0x20000000uLL;
        while (1)
        {
          v283 = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v283 & 0x7F) << v82;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v11 = v83++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_530;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v84;
        }

LABEL_530:
        v281 = 140;
        goto LABEL_682;
      case 0x32u:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 224) |= 2uLL;
        while (1)
        {
          v283 = 0;
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

          v94 |= (v283 & 0x7F) << v92;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_538;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v94;
        }

LABEL_538:
        v281 = 16;
        goto LABEL_682;
      case 0x33u:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 224) |= 0x80000uLL;
        while (1)
        {
          v283 = 0;
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

          v21 |= (v283 & 0x7F) << v19;
          if ((v283 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_484;
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

LABEL_484:
        v281 = 100;
        goto LABEL_682;
      case 0x34u:
        v276 = 0;
        v277 = 0;
        v278 = 0;
        *(a1 + 224) |= 0x10000000uLL;
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
      v283 = 0;
      v279 = [a2 position] + 1;
      if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 1, v280 <= objc_msgSend(a2, "length")))
      {
        [objc_msgSend(a2 "data")];
        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v278 |= (v283 & 0x7F) << v276;
      if ((v283 & 0x80) == 0)
      {
        break;
      }

      v276 += 7;
      v11 = v277++ >= 9;
      if (v11)
      {
        v24 = 0;
        goto LABEL_681;
      }
    }

    if ([a2 hasError])
    {
      v24 = 0;
    }

    else
    {
      v24 = v278;
    }

LABEL_681:
    v281 = 136;
LABEL_682:
    *(a1 + v281) = v24;
LABEL_683:
    ;
  }

  return [a2 hasError] ^ 1;
}