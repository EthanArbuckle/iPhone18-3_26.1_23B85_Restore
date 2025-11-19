uint64_t AWDDataFramesReadFrom(uint64_t a1, void *a2)
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
        v74 = 0;
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

        v7 |= (v74 & 0x7F) << v5;
        if ((v74 & 0x80) == 0)
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
          *(a1 + 120) |= 0x40u;
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
            v17 = v13++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__dataFrames;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__dataFrames;
          goto LABEL_160;
        case 2u:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 120) |= 8u;
          while (1)
          {
            v87 = 0;
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

            v14 |= (v87 & 0x7F) << v48;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v17 = v49++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__dataCFack;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__dataCFack;
          goto LABEL_160;
        case 3u:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x20u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v36;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v17 = v37++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__dataCFpoll;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__dataCFpoll;
          goto LABEL_160;
        case 4u:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x10u;
          while (1)
          {
            v85 = 0;
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

            v14 |= (v85 & 0x7F) << v40;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v17 = v41++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__dataCFackCFpoll;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__dataCFackCFpoll;
          goto LABEL_160;
        case 5u:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x80u;
          while (1)
          {
            v84 = 0;
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

            v14 |= (v84 & 0x7F) << v24;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v17 = v25++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__null;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__null;
          goto LABEL_160;
        case 6u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          *(a1 + 120) |= 1u;
          while (1)
          {
            v83 = 0;
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

            v14 |= (v83 & 0x7F) << v52;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v17 = v53++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__cFack;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__cFack;
          goto LABEL_160;
        case 7u:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 120) |= 4u;
          while (1)
          {
            v82 = 0;
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

            v14 |= (v82 & 0x7F) << v60;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v17 = v61++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__cFpoll;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__cFpoll;
          goto LABEL_160;
        case 8u:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          *(a1 + 120) |= 2u;
          while (1)
          {
            v81 = 0;
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

            v14 |= (v81 & 0x7F) << v44;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v17 = v45++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__cFackCFpoll;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__cFackCFpoll;
          goto LABEL_160;
        case 9u:
          v68 = 0;
          v69 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x100u;
          while (1)
          {
            v80 = 0;
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

            v14 |= (v80 & 0x7F) << v68;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v17 = v69++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__qoSdata;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__qoSdata;
          goto LABEL_160;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x200u;
          while (1)
          {
            v79 = 0;
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

            v14 |= (v79 & 0x7F) << v32;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v17 = v33++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__qoSdataCFack;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__qoSdataCFack;
          goto LABEL_160;
        case 0xBu:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x400u;
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
              v19 = &OBJC_IVAR___AWDDataFrames__qoSdataCFackCFpoll;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__qoSdataCFackCFpoll;
          goto LABEL_160;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x2000u;
          while (1)
          {
            v77 = 0;
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

            v14 |= (v77 & 0x7F) << v20;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v17 = v21++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__qoSnull;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__qoSnull;
          goto LABEL_160;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x1000u;
          while (1)
          {
            v76 = 0;
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

            v14 |= (v76 & 0x7F) << v28;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v17 = v29++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDDataFrames__qoSnodataCFpoll;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDDataFrames__qoSnodataCFpoll;
          goto LABEL_160;
        case 0xEu:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x800u;
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
        v75 = 0;
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

        v14 |= (v75 & 0x7F) << v56;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v56 += 7;
        v17 = v57++ > 8;
        if (v17)
        {
          v18 = 0;
          v19 = &OBJC_IVAR___AWDDataFrames__qoSnodataCFack;
          goto LABEL_163;
        }
      }

      v19 = &OBJC_IVAR___AWDDataFrames__qoSnodataCFack;
LABEL_160:
      v18 = [a2 hasError] ? 0 : v14;
LABEL_163:
      *(a1 + *v19) = v18;
LABEL_164:
      v72 = [a2 position];
    }

    while (v72 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDHEStatsReadFrom(uint64_t a1, void *a2)
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
          LOBYTE(v130) = 0;
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

          v7 |= (v130 & 0x7F) << v5;
          if ((v130 & 0x80) == 0)
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
                *(a1 + 140) |= 0x1000u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v15 |= (v130 & 0x7F) << v13;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v13 += 7;
                  v10 = v14++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
LABEL_250:
                    v118 = 104;
                    goto LABEL_287;
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

                goto LABEL_250;
              case 2u:
                v72 = 0;
                v73 = 0;
                v74 = 0;
                *(a1 + 140) |= 0x80u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v74 |= (v130 & 0x7F) << v72;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v72 += 7;
                  v10 = v73++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_254;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v74;
                }

LABEL_254:
                v118 = 84;
                goto LABEL_287;
              case 3u:
                v52 = 0;
                v53 = 0;
                v54 = 0;
                *(a1 + 140) |= 0x800u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v54 |= (v130 & 0x7F) << v52;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v52 += 7;
                  v10 = v53++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_234;
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

LABEL_234:
                v118 = 100;
                goto LABEL_287;
              case 4u:
                v62 = 0;
                v63 = 0;
                v64 = 0;
                *(a1 + 140) |= 0x200u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v64 |= (v130 & 0x7F) << v62;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v62 += 7;
                  v10 = v63++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_242;
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

LABEL_242:
                v118 = 92;
                goto LABEL_287;
              case 5u:
                v36 = 0;
                v37 = 0;
                v38 = 0;
                *(a1 + 140) |= 0x100u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v38 |= (v130 & 0x7F) << v36;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v36 += 7;
                  v10 = v37++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_226;
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

LABEL_226:
                v118 = 88;
                goto LABEL_287;
              case 6u:
                v83 = 0;
                v84 = 0;
                v85 = 0;
                *(a1 + 140) |= 0x400u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v85 |= (v130 & 0x7F) << v83;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v83 += 7;
                  v10 = v84++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_262;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v85;
                }

LABEL_262:
                v118 = 96;
                goto LABEL_287;
              case 7u:
                v93 = 0;
                v94 = 0;
                v95 = 0;
                *(a1 + 140) |= 0x20u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v95 |= (v130 & 0x7F) << v93;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v93 += 7;
                  v10 = v94++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_270;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v95;
                }

LABEL_270:
                v118 = 76;
                goto LABEL_287;
              case 8u:
                v67 = 0;
                v68 = 0;
                v69 = 0;
                *(a1 + 140) |= 0x10000u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v69 |= (v130 & 0x7F) << v67;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v67 += 7;
                  v10 = v68++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_246;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v69;
                }

LABEL_246:
                v118 = 120;
                goto LABEL_287;
              case 9u:
                v108 = 0;
                v109 = 0;
                v110 = 0;
                *(a1 + 140) |= 0x40u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v110 |= (v130 & 0x7F) << v108;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v108 += 7;
                  v10 = v109++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_282;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v110;
                }

LABEL_282:
                v118 = 80;
                goto LABEL_287;
              case 0xAu:
                v47 = 0;
                v48 = 0;
                v49 = 0;
                *(a1 + 140) |= 0x10u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v49 |= (v130 & 0x7F) << v47;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v47 += 7;
                  v10 = v48++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_230;
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

LABEL_230:
                v118 = 72;
                goto LABEL_287;
              case 0xBu:
                v103 = 0;
                v104 = 0;
                v105 = 0;
                *(a1 + 140) |= 8u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v105 |= (v130 & 0x7F) << v103;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v103 += 7;
                  v10 = v104++ >= 9;
                  if (v10)
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
                  v18 = v105;
                }

LABEL_278:
                v118 = 68;
                goto LABEL_287;
              case 0xCu:
                if (v12 != 2)
                {
                  v120 = 0;
                  v121 = 0;
                  v122 = 0;
                  while (1)
                  {
                    LOBYTE(v130) = 0;
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

                    v122 |= (v130 & 0x7F) << v120;
                    if ((v130 & 0x80) == 0)
                    {
                      goto LABEL_308;
                    }

                    v120 += 7;
                    v10 = v121++ >= 9;
                    if (v10)
                    {
                      goto LABEL_309;
                    }
                  }
                }

                v130 = 0;
                v131 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v30 = [a2 position];
                  if (v30 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_149;
                  }

                  v31 = 0;
                  v32 = 0;
                  v33 = 0;
                  while (1)
                  {
                    v132 = 0;
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

                    v33 |= (v132 & 0x7F) << v31;
                    if ((v132 & 0x80) == 0)
                    {
                      break;
                    }

                    v31 += 7;
                    v10 = v32++ >= 9;
                    if (v10)
                    {
                      goto LABEL_59;
                    }
                  }

                  [a2 hasError];
LABEL_59:
                  PBRepeatedUInt32Add();
                }

              case 0xDu:
                if (v12 == 2)
                {
                  v130 = 0;
                  v131 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v41 = [a2 position];
                    if (v41 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v42 = 0;
                    v43 = 0;
                    v44 = 0;
                    while (1)
                    {
                      v132 = 0;
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

                      v44 |= (v132 & 0x7F) << v42;
                      if ((v132 & 0x80) == 0)
                      {
                        break;
                      }

                      v42 += 7;
                      v10 = v43++ >= 9;
                      if (v10)
                      {
                        goto LABEL_83;
                      }
                    }

                    [a2 hasError];
LABEL_83:
                    PBRepeatedUInt32Add();
                  }

LABEL_149:
                  PBReaderRecallMark();
                }

                else
                {
                  v125 = 0;
                  v126 = 0;
                  v127 = 0;
                  while (1)
                  {
                    LOBYTE(v130) = 0;
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

                    v127 |= (v130 & 0x7F) << v125;
                    if ((v130 & 0x80) == 0)
                    {
                      break;
                    }

                    v125 += 7;
                    v10 = v126++ >= 9;
                    if (v10)
                    {
                      goto LABEL_309;
                    }
                  }

LABEL_308:
                  [a2 hasError];
LABEL_309:
                  PBRepeatedUInt32Add();
                }

LABEL_288:
                v119 = [a2 position];
                if (v119 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              case 0xEu:
                v88 = 0;
                v89 = 0;
                v90 = 0;
                *(a1 + 140) |= 0x4000u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v90 |= (v130 & 0x7F) << v88;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v88 += 7;
                  v10 = v89++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_266;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v90;
                }

LABEL_266:
                v118 = 112;
                goto LABEL_287;
              case 0xFu:
                v24 = 0;
                v25 = 0;
                v26 = 0;
                *(a1 + 140) |= 0x2000u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v26 |= (v130 & 0x7F) << v24;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v24 += 7;
                  v10 = v25++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_222;
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

LABEL_222:
                v118 = 108;
                goto LABEL_287;
              case 0x10u:
                v57 = 0;
                v58 = 0;
                v59 = 0;
                *(a1 + 140) |= 2u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v59 |= (v130 & 0x7F) << v57;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v57 += 7;
                  v10 = v58++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_238;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v59;
                }

LABEL_238:
                v118 = 60;
                goto LABEL_287;
              case 0x11u:
                v19 = 0;
                v20 = 0;
                v21 = 0;
                *(a1 + 140) |= 1u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v21 |= (v130 & 0x7F) << v19;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v19 += 7;
                  v10 = v20++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_218;
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

LABEL_218:
                v118 = 56;
                goto LABEL_287;
              case 0x12u:
                v77 = 0;
                v78 = 0;
                v79 = 0;
                *(a1 + 140) |= 0x20000u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v79 |= (v130 & 0x7F) << v77;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v77 += 7;
                  v10 = v78++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_258;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v79;
                }

LABEL_258:
                v118 = 136;
                goto LABEL_287;
              case 0x13u:
                v98 = 0;
                v99 = 0;
                v100 = 0;
                *(a1 + 140) |= 4u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v100 |= (v130 & 0x7F) << v98;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v98 += 7;
                  v10 = v99++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_274;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v100;
                }

LABEL_274:
                v118 = 64;
                goto LABEL_287;
              case 0x14u:
                v113 = 0;
                v114 = 0;
                v115 = 0;
                *(a1 + 140) |= 0x8000u;
                while (1)
                {
                  LOBYTE(v130) = 0;
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

                  v115 |= (v130 & 0x7F) << v113;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v113 += 7;
                  v10 = v114++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_286;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v115;
                }

LABEL_286:
                v118 = 116;
LABEL_287:
                *(a1 + v118) = v18;
                goto LABEL_288;
              case 0x15u:
                v82 = objc_alloc_init(AWDOMICntrs);

                *(a1 + 128) = v82;
                v130 = 0;
                v131 = 0;
                result = PBReaderPlaceMark();
                if (result)
                {
                  result = AWDOMICntrsReadFrom(v82, a2);
                  if (result)
                  {
                    goto LABEL_149;
                  }
                }

                return result;
              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_288;
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

uint64_t AWDLinkQualityMeasurementsReadFrom(uint64_t a1, void *a2)
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
        v414 = 0;
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

        v7 |= (v414 & 0x7F) << v5;
        if ((v414 & 0x80) == 0)
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
          *(a1 + 808) |= 0x8000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v12;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v12 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__timestamp;
            v19 = v13++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__timestamp;
          goto LABEL_1010;
        case 2u:
          v212 = 0;
          v213 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x4000000uLL;
          while (1)
          {
            v414 = 0;
            v214 = [a2 position] + 1;
            if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v212;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v212 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txOutputBelowExpectedTrue;
            v19 = v213++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txOutputBelowExpectedTrue;
          goto LABEL_1010;
        case 3u:
          v192 = 0;
          v193 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x2000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v192;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v192 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txOutputBelowExpectedFalse;
            v19 = v193++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txOutputBelowExpectedFalse;
          goto LABEL_1010;
        case 4u:
          v204 = 0;
          v205 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x10000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v204;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v204 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txOutputBelowInputTrue;
            v19 = v205++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txOutputBelowInputTrue;
          goto LABEL_1010;
        case 5u:
          v160 = 0;
          v161 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x8000000uLL;
          while (1)
          {
            v414 = 0;
            v162 = [a2 position] + 1;
            if (v162 >= [a2 position] && (v163 = objc_msgSend(a2, "position") + 1, v163 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v160;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v160 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txOutputBelowInputFalse;
            v19 = v161++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txOutputBelowInputFalse;
          goto LABEL_1010;
        case 6u:
          v252 = 0;
          v253 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x1000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v252;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v252 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txLowFrameCountTrue;
            v19 = v253++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txLowFrameCountTrue;
          goto LABEL_1010;
        case 7u:
          v272 = 0;
          v273 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x800000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v272;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v272 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txLowFrameCountFalse;
            v19 = v273++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txLowFrameCountFalse;
          goto LABEL_1010;
        case 8u:
          v208 = 0;
          v209 = 0;
          v14 = 0;
          *(a1 + 808) |= 8uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v208;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v208 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxLowFrameCountTrue;
            v19 = v209++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxLowFrameCountTrue;
          goto LABEL_1010;
        case 9u:
          v284 = 0;
          v285 = 0;
          v14 = 0;
          *(a1 + 808) |= 4uLL;
          while (1)
          {
            v414 = 0;
            v286 = [a2 position] + 1;
            if (v286 >= [a2 position] && (v287 = objc_msgSend(a2, "position") + 1, v287 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v284;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v284 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxLowFrameCountFalse;
            v19 = v285++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxLowFrameCountFalse;
          goto LABEL_1010;
        case 0xAu:
          v180 = 0;
          v181 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x20000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v180;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v180 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxLatencyTrue;
            v19 = v181++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxLatencyTrue;
          goto LABEL_1010;
        case 0xBu:
          v280 = 0;
          v281 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x10000000uLL;
          while (1)
          {
            v414 = 0;
            v282 = [a2 position] + 1;
            if (v282 >= [a2 position] && (v283 = objc_msgSend(a2, "position") + 1, v283 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v280;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v280 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxLatencyFalse;
            v19 = v281++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxLatencyFalse;
          goto LABEL_1010;
        case 0xCu:
          v148 = 0;
          v149 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x2000000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v148;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v148 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowTxPhyRateTrue;
            v19 = v149++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowTxPhyRateTrue;
          goto LABEL_1010;
        case 0xDu:
          v176 = 0;
          v177 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x1000000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v176;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v176 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowTxPhyRateFalse;
            v19 = v177++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowTxPhyRateFalse;
          goto LABEL_1010;
        case 0xEu:
          v268 = 0;
          v269 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x80000000uLL;
          while (1)
          {
            v414 = 0;
            v270 = [a2 position] + 1;
            if (v270 >= [a2 position] && (v271 = objc_msgSend(a2, "position") + 1, v271 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v268;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v268 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxPerTrue;
            v19 = v269++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxPerTrue;
          goto LABEL_1010;
        case 0xFu:
          v128 = 0;
          v129 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x40000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v128;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v128 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxPerFalse;
            v19 = v129++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxPerFalse;
          goto LABEL_1010;
        case 0x10u:
          v196 = 0;
          v197 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x200000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v196;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v196 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxRetriesTrue;
            v19 = v197++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxRetriesTrue;
          goto LABEL_1010;
        case 0x11u:
          v116 = 0;
          v117 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x100000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v116;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v116 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxRetriesFalse;
            v19 = v117++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highTxRetriesFalse;
          goto LABEL_1010;
        case 0x12u:
          v228 = 0;
          v229 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x80000000uLL;
          while (1)
          {
            v414 = 0;
            v230 = [a2 position] + 1;
            if (v230 >= [a2 position] && (v231 = objc_msgSend(a2, "position") + 1, v231 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v228;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v228 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txQueueFullTrue;
            v19 = v229++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txQueueFullTrue;
          goto LABEL_1010;
        case 0x13u:
          v276 = 0;
          v277 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x40000000uLL;
          while (1)
          {
            v414 = 0;
            v278 = [a2 position] + 1;
            if (v278 >= [a2 position] && (v279 = objc_msgSend(a2, "position") + 1, v279 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v276;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v276 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txQueueFullFalse;
            v19 = v277++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txQueueFullFalse;
          goto LABEL_1010;
        case 0x14u:
          v316 = 0;
          v317 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x800000000000uLL;
          while (1)
          {
            v414 = 0;
            v318 = [a2 position] + 1;
            if (v318 >= [a2 position] && (v319 = objc_msgSend(a2, "position") + 1, v319 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v316;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v316 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowTxAMPDUDensityTrue;
            v19 = v317++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowTxAMPDUDensityTrue;
          goto LABEL_1010;
        case 0x15u:
          v244 = 0;
          v245 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x400000000000uLL;
          while (1)
          {
            v414 = 0;
            v246 = [a2 position] + 1;
            if (v246 >= [a2 position] && (v247 = objc_msgSend(a2, "position") + 1, v247 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v244;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v244 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowTxAMPDUDensityFalse;
            v19 = v245++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowTxAMPDUDensityFalse;
          goto LABEL_1010;
        case 0x16u:
          v264 = 0;
          v265 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x8000000uLL;
          while (1)
          {
            v414 = 0;
            v266 = [a2 position] + 1;
            if (v266 >= [a2 position] && (v267 = objc_msgSend(a2, "position") + 1, v267 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v264;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v264 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxRetriesTrue;
            v19 = v265++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxRetriesTrue;
          goto LABEL_1010;
        case 0x17u:
          v304 = 0;
          v305 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x4000000uLL;
          while (1)
          {
            v414 = 0;
            v306 = [a2 position] + 1;
            if (v306 >= [a2 position] && (v307 = objc_msgSend(a2, "position") + 1, v307 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v304;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v304 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxRetriesFalse;
            v19 = v305++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxRetriesFalse;
          goto LABEL_1010;
        case 0x18u:
          v332 = 0;
          v333 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x800000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v332;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v332 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxPhyPERTrue;
            v19 = v333++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxPhyPERTrue;
          goto LABEL_1010;
        case 0x19u:
          v188 = 0;
          v189 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x400000uLL;
          while (1)
          {
            v414 = 0;
            v190 = [a2 position] + 1;
            if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v188;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v188 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxPhyPERFalse;
            v19 = v189++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxPhyPERFalse;
          goto LABEL_1010;
        case 0x1Au:
          v184 = 0;
          v185 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x80000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v184;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v184 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxFCSErrsTrue;
            v19 = v185++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxFCSErrsTrue;
          goto LABEL_1010;
        case 0x1Bu:
          v348 = 0;
          v349 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x40000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v348;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v348 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxFCSErrsFalse;
            v19 = v349++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxFCSErrsFalse;
          goto LABEL_1010;
        case 0x1Cu:
          v108 = 0;
          v109 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x200000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v108;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v108 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxOverflowsTrue;
            v19 = v109++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxOverflowsTrue;
          goto LABEL_1010;
        case 0x1Du:
          v336 = 0;
          v337 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x100000uLL;
          while (1)
          {
            v414 = 0;
            v338 = [a2 position] + 1;
            if (v338 >= [a2 position] && (v339 = objc_msgSend(a2, "position") + 1, v339 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v336;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v336 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxOverflowsFalse;
            v19 = v337++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxOverflowsFalse;
          goto LABEL_1010;
        case 0x1Eu:
          v340 = 0;
          v341 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x20000uLL;
          while (1)
          {
            v414 = 0;
            v342 = [a2 position] + 1;
            if (v342 >= [a2 position] && (v343 = objc_msgSend(a2, "position") + 1, v343 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v340;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v340 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDupsTrue;
            v19 = v341++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDupsTrue;
          goto LABEL_1010;
        case 0x1Fu:
          v288 = 0;
          v289 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x10000uLL;
          while (1)
          {
            v414 = 0;
            v290 = [a2 position] + 1;
            if (v290 >= [a2 position] && (v291 = objc_msgSend(a2, "position") + 1, v291 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v288;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v288 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDupsFalse;
            v19 = v289++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDupsFalse;
          goto LABEL_1010;
        case 0x20u:
          v224 = 0;
          v225 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x2000000uLL;
          while (1)
          {
            v414 = 0;
            v226 = [a2 position] + 1;
            if (v226 >= [a2 position] && (v227 = objc_msgSend(a2, "position") + 1, v227 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v224;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v224 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxReplaysTrue;
            v19 = v225++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxReplaysTrue;
          goto LABEL_1010;
        case 0x21u:
          v292 = 0;
          v293 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x1000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v292;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v292 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxReplaysFalse;
            v19 = v293++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxReplaysFalse;
          goto LABEL_1010;
        case 0x22u:
          v132 = 0;
          v133 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x8000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v132;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v132 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDecryptErrsTrue;
            v19 = v133++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDecryptErrsTrue;
          goto LABEL_1010;
        case 0x23u:
          v112 = 0;
          v113 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x4000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v112;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v112 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDecryptErrsFalse;
            v19 = v113++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDecryptErrsFalse;
          goto LABEL_1010;
        case 0x24u:
          v96 = 0;
          v97 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x2000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v96;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v96 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDataPERTrue;
            v19 = v97++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDataPERTrue;
          goto LABEL_1010;
        case 0x25u:
          v100 = 0;
          v101 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x1000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v100;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v100 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDataPERFalse;
            v19 = v101++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__highRxDataPERFalse;
          goto LABEL_1010;
        case 0x26u:
          v76 = 0;
          v77 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x20000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v76;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v76 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANDurTrue;
            v19 = v77++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANDurTrue;
          goto LABEL_1010;
        case 0x27u:
          v344 = 0;
          v345 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x10000000000uLL;
          while (1)
          {
            v414 = 0;
            v346 = [a2 position] + 1;
            if (v346 >= [a2 position] && (v347 = objc_msgSend(a2, "position") + 1, v347 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v344;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v344 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANDurFalse;
            v19 = v345++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANDurFalse;
          goto LABEL_1010;
        case 0x28u:
          v312 = 0;
          v313 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x200000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v312;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v312 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANTxDurTrue;
            v19 = v313++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANTxDurTrue;
          goto LABEL_1010;
        case 0x29u:
          v164 = 0;
          v165 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x100000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v164;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v164 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANTxDurFalse;
            v19 = v165++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANTxDurFalse;
          goto LABEL_1010;
        case 0x2Au:
          v236 = 0;
          v237 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x80000000000uLL;
          while (1)
          {
            v414 = 0;
            v238 = [a2 position] + 1;
            if (v238 >= [a2 position] && (v239 = objc_msgSend(a2, "position") + 1, v239 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v236;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v236 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANRxDurTrue;
            v19 = v237++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANRxDurTrue;
          goto LABEL_1010;
        case 0x2Bu:
          v324 = 0;
          v325 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x40000000000uLL;
          while (1)
          {
            v414 = 0;
            v326 = [a2 position] + 1;
            if (v326 >= [a2 position] && (v327 = objc_msgSend(a2, "position") + 1, v327 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v324;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v324 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANRxDurFalse;
            v19 = v325++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lowAvailWLANRxDurFalse;
          goto LABEL_1010;
        case 0x2Cu:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x100uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v60;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v60 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__cCA;
            v19 = v61++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__cCA;
          goto LABEL_1010;
        case 0x2Du:
          v124 = 0;
          v125 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x400000000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v124;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v124 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rSSI;
            v19 = v125++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rSSI;
          goto LABEL_1010;
        case 0x2Eu:
          v296 = 0;
          v297 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x20000000uLL;
          while (1)
          {
            v414 = 0;
            v298 = [a2 position] + 1;
            if (v298 >= [a2 position] && (v299 = objc_msgSend(a2, "position") + 1, v299 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v296;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v296 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txPhyRate;
            v19 = v297++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txPhyRate;
          goto LABEL_1010;
        case 0x2Fu:
          v368 = 0;
          v369 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x40uLL;
          while (1)
          {
            v414 = 0;
            v370 = [a2 position] + 1;
            if (v370 >= [a2 position] && (v371 = objc_msgSend(a2, "position") + 1, v371 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v368;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v368 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxPhyRate;
            v19 = v369++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxPhyRate;
          goto LABEL_1010;
        case 0x30u:
          v84 = 0;
          v85 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x10000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v84;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v84 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txAMPDUDensity;
            v19 = v85++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txAMPDUDensity;
          goto LABEL_1010;
        case 0x31u:
          v136 = 0;
          v137 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x8000000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v136;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v136 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__measurementDurMS;
            v19 = v137++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__measurementDurMS;
          goto LABEL_1010;
        case 0x32u:
          v156 = 0;
          v157 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x200uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v156;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v156 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__concurrentIntDurMS;
            v19 = v157++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__concurrentIntDurMS;
          goto LABEL_1010;
        case 0x33u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x1000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v52;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v52 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__tVPMActiveDurationMS;
            v19 = v53++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__tVPMActiveDurationMS;
          goto LABEL_1010;
        case 0x34u:
          v384 = 0;
          v385 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x80000000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v384;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v384 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__phyTxActivityDurMS;
            v19 = v385++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__phyTxActivityDurMS;
          goto LABEL_1010;
        case 0x35u:
          v364 = 0;
          v365 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x40000000000000uLL;
          while (1)
          {
            v414 = 0;
            v366 = [a2 position] + 1;
            if (v366 >= [a2 position] && (v367 = objc_msgSend(a2, "position") + 1, v367 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v364;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v364 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__phyRxActivityDurMS;
            v19 = v365++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__phyRxActivityDurMS;
          goto LABEL_1010;
        case 0x36u:
          v80 = 0;
          v81 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x200000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v80;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v80 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txSubBytes;
            v19 = v81++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txSubBytes;
          goto LABEL_1010;
        case 0x37u:
          v352 = 0;
          v353 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x20000uLL;
          while (1)
          {
            v414 = 0;
            v354 = [a2 position] + 1;
            if (v354 >= [a2 position] && (v355 = objc_msgSend(a2, "position") + 1, v355 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v352;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v352 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txCompBytes;
            v19 = v353++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txCompBytes;
          goto LABEL_1010;
        case 0x38u:
          v360 = 0;
          v361 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x80000uLL;
          while (1)
          {
            v414 = 0;
            v362 = [a2 position] + 1;
            if (v362 >= [a2 position] && (v363 = objc_msgSend(a2, "position") + 1, v363 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v360;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v360 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txDelayBytes;
            v19 = v361++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txDelayBytes;
          goto LABEL_1010;
        case 0x39u:
          v88 = 0;
          v89 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x10000000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v88;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v88 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__offChanDurMS;
            v19 = v89++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__offChanDurMS;
          goto LABEL_1010;
        case 0x3Au:
          v320 = 0;
          v321 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x400000000uLL;
          while (1)
          {
            v414 = 0;
            v322 = [a2 position] + 1;
            if (v322 >= [a2 position] && (v323 = objc_msgSend(a2, "position") + 1, v323 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v320;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v320 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txSubPkts;
            v19 = v321++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txSubPkts;
          goto LABEL_1010;
        case 0x3Bu:
          v140 = 0;
          v141 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x40000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v140;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v140 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txCompPkts;
            v19 = v141++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txCompPkts;
          goto LABEL_1010;
        case 0x3Cu:
          v328 = 0;
          v329 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x4000000000000uLL;
          while (1)
          {
            v414 = 0;
            v330 = [a2 position] + 1;
            if (v330 >= [a2 position] && (v331 = objc_msgSend(a2, "position") + 1, v331 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v328;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v328 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__maxQueueFullDurMS;
            v19 = v329++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__maxQueueFullDurMS;
          goto LABEL_1010;
        case 0x3Du:
          v168 = 0;
          v169 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x20uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v168;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v168 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__avgTxLatencyMS;
            v19 = v169++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__avgTxLatencyMS;
          goto LABEL_1010;
        case 0x3Eu:
          v248 = 0;
          v249 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x40uLL;
          while (1)
          {
            v414 = 0;
            v250 = [a2 position] + 1;
            if (v250 >= [a2 position] && (v251 = objc_msgSend(a2, "position") + 1, v251 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v248;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v248 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__bTAntennaDurMS;
            v19 = v249++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__bTAntennaDurMS;
          goto LABEL_1010;
        case 0x3Fu:
          v260 = 0;
          v261 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x20000000000000uLL;
          while (1)
          {
            v414 = 0;
            v262 = [a2 position] + 1;
            if (v262 >= [a2 position] && (v263 = objc_msgSend(a2, "position") + 1, v263 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v260;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v260 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__outputThroughput;
            v19 = v261++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__outputThroughput;
          goto LABEL_1010;
        case 0x40u:
          v200 = 0;
          v201 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x800000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v200;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v200 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__inputThroughput;
            v19 = v201++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__inputThroughput;
          goto LABEL_1010;
        case 0x41u:
          v172 = 0;
          v173 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x800uLL;
          while (1)
          {
            v414 = 0;
            v174 = [a2 position] + 1;
            if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v172;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v172 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__expectedThroughput;
            v19 = v173++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__expectedThroughput;
          goto LABEL_1010;
        case 0x42u:
          v256 = 0;
          v257 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x400uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v256;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v256 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__delayedThroughput;
            v19 = v257++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__delayedThroughput;
          goto LABEL_1010;
        case 0x43u:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          *(a1 + 800) |= 4uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v64;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v64 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__availWLANDurMS;
            v19 = v65++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__availWLANDurMS;
          goto LABEL_1010;
        case 0x44u:
          v120 = 0;
          v121 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x10uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v120;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v120 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__availWLANTxDurMS;
            v19 = v121++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__availWLANTxDurMS;
          goto LABEL_1010;
        case 0x45u:
          v392 = 0;
          v393 = 0;
          v14 = 0;
          *(a1 + 800) |= 8uLL;
          while (1)
          {
            v414 = 0;
            v394 = [a2 position] + 1;
            if (v394 >= [a2 position] && (v395 = objc_msgSend(a2, "position") + 1, v395 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v392;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v392 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__availWLANRxDurMS;
            v19 = v393++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__availWLANRxDurMS;
          goto LABEL_1010;
        case 0x46u:
          v104 = 0;
          v105 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x100000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v104;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v104 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txRetries;
            v19 = v105++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txRetries;
          goto LABEL_1010;
        case 0x47u:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x200000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v40;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v40 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txFails;
            v19 = v41++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txFails;
          goto LABEL_1010;
        case 0x48u:
          v72 = 0;
          v73 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x400000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v72;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v72 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txFrames;
            v19 = v73++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txFrames;
          goto LABEL_1010;
        case 0x49u:
          v356 = 0;
          v357 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x10uLL;
          while (1)
          {
            v414 = 0;
            v358 = [a2 position] + 1;
            if (v358 >= [a2 position] && (v359 = objc_msgSend(a2, "position") + 1, v359 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v356;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v356 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
            v19 = v357++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxOvflErrs;
          goto LABEL_1010;
        case 0x4Au:
          v372 = 0;
          v373 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x8000000000000000;
          while (1)
          {
            v414 = 0;
            v374 = [a2 position] + 1;
            if (v374 >= [a2 position] && (v375 = objc_msgSend(a2, "position") + 1, v375 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v372;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v372 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxFCSErrs;
            v19 = v373++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxFCSErrs;
          goto LABEL_1010;
        case 0x4Bu:
          v380 = 0;
          v381 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x20uLL;
          while (1)
          {
            v414 = 0;
            v382 = [a2 position] + 1;
            if (v382 >= [a2 position] && (v383 = objc_msgSend(a2, "position") + 1, v383 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v380;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v380 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxPLCPErrs;
            v19 = v381++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxPLCPErrs;
          goto LABEL_1010;
        case 0x4Cu:
          v92 = 0;
          v93 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x1000000000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v92;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v92 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxCRSErrs;
            v19 = v93++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxCRSErrs;
          goto LABEL_1010;
        case 0x4Du:
          v240 = 0;
          v241 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x4000000000000000uLL;
          while (1)
          {
            v414 = 0;
            v242 = [a2 position] + 1;
            if (v242 >= [a2 position] && (v243 = objc_msgSend(a2, "position") + 1, v243 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v240;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v240 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxDupErrs;
            v19 = v241++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxDupErrs;
          goto LABEL_1010;
        case 0x4Eu:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x80uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v44;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v44 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxReplayErrs;
            v19 = v45++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxReplayErrs;
          goto LABEL_1010;
        case 0x4Fu:
          v388 = 0;
          v389 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x2000000000000000uLL;
          while (1)
          {
            v414 = 0;
            v390 = [a2 position] + 1;
            if (v390 >= [a2 position] && (v391 = objc_msgSend(a2, "position") + 1, v391 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v388;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v388 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxDecryErrs;
            v19 = v389++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxDecryErrs;
          goto LABEL_1010;
        case 0x50u:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x100uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v32;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v32 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxRetries;
            v19 = v33++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxRetries;
          goto LABEL_1010;
        case 0x51u:
          v68 = 0;
          v69 = 0;
          v14 = 0;
          *(a1 + 808) |= 2uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v68;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v68 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxGoodPlcps;
            v19 = v69++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxGoodPlcps;
          goto LABEL_1010;
        case 0x52u:
          v152 = 0;
          v153 = 0;
          v14 = 0;
          *(a1 + 808) |= 1uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v152;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v152 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxFrames;
            v19 = v153++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxFrames;
          goto LABEL_1010;
        case 0x53u:
          v144 = 0;
          v145 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x400uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v144;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v144 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__sNR;
            v19 = v145++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__sNR;
          goto LABEL_1010;
        case 0x54u:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x100000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v24;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v24 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txExpectedAMPDUDensity;
            v19 = v25++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__txExpectedAMPDUDensity;
          goto LABEL_1010;
        case 0x55u:
          v20 = 0;
          v21 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x100000000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v20;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v20 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rC1CoexDurationMS;
            v19 = v21++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rC1CoexDurationMS;
          goto LABEL_1010;
        case 0x56u:
          v300 = 0;
          v301 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x200000000000000uLL;
          while (1)
          {
            v414 = 0;
            v302 = [a2 position] + 1;
            if (v302 >= [a2 position] && (v303 = objc_msgSend(a2, "position") + 1, v303 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v300;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v300 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rC2CoexDurationMS;
            v19 = v301++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rC2CoexDurationMS;
          goto LABEL_1010;
        case 0x57u:
          v308 = 0;
          v309 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x4000000000uLL;
          while (1)
          {
            v414 = 0;
            v310 = [a2 position] + 1;
            if (v310 >= [a2 position] && (v311 = objc_msgSend(a2, "position") + 1, v311 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v308;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v308 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lTECoexDurationMS;
            v19 = v309++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lTECoexDurationMS;
          goto LABEL_1010;
        case 0x58u:
          v376 = 0;
          v377 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x200uLL;
          while (1)
          {
            v414 = 0;
            v378 = [a2 position] + 1;
            if (v378 >= [a2 position] && (v379 = objc_msgSend(a2, "position") + 1, v379 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v376;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v376 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxThroughput;
            v19 = v377++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxThroughput;
          goto LABEL_1010;
        case 0x59u:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          *(a1 + 800) |= 1uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v56;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v56 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__aPTxDataStall;
            v19 = v57++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__aPTxDataStall;
          goto LABEL_1010;
        case 0x5Au:
          v404 = 0;
          v405 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x800000000000000uLL;
          while (1)
          {
            v414 = 0;
            v406 = [a2 position] + 1;
            if (v406 >= [a2 position] && (v407 = objc_msgSend(a2, "position") + 1, v407 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v404;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v404 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxAmpduTxBaMismatch;
            v19 = v405++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__rxAmpduTxBaMismatch;
          goto LABEL_1010;
        case 0x5Bu:
          v400 = 0;
          v401 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x800uLL;
          while (1)
          {
            v414 = 0;
            v402 = [a2 position] + 1;
            if (v402 >= [a2 position] && (v403 = objc_msgSend(a2, "position") + 1, v403 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v400;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v400 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__symptomsFails;
            v19 = v401++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__symptomsFails;
          goto LABEL_1010;
        case 0x5Cu:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x1000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v28;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v28 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__is2GBand;
            v19 = v29++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__is2GBand;
          goto LABEL_1010;
        case 0x5Du:
          v216 = 0;
          v217 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x2000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v216;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v216 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__isFGTraffic;
            v19 = v217++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__isFGTraffic;
          goto LABEL_1010;
        case 0x5Eu:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x80uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v48;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v48 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__baselineThroughput;
            v19 = v49++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__baselineThroughput;
          goto LABEL_1010;
        case 0x5Fu:
          v232 = 0;
          v233 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x2000uLL;
          while (1)
          {
            v414 = 0;
            v234 = [a2 position] + 1;
            if (v234 >= [a2 position] && (v235 = objc_msgSend(a2, "position") + 1, v235 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v232;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v232 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__testThroughput;
            v19 = v233++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__testThroughput;
          goto LABEL_1010;
        case 0x60u:
          v396 = 0;
          v397 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x400000000uLL;
          while (1)
          {
            v414 = 0;
            v398 = [a2 position] + 1;
            if (v398 >= [a2 position] && (v399 = objc_msgSend(a2, "position") + 1, v399 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v396;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v396 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__infraDutyCycle;
            v19 = v397++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__infraDutyCycle;
          goto LABEL_1010;
        case 0x61u:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          *(a1 + 800) |= 0x8000000000uLL;
          while (1)
          {
            v414 = 0;
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

            v14 |= (v414 & 0x7F) << v36;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v36 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lastScanReason;
            v19 = v37++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__lastScanReason;
          goto LABEL_1010;
        case 0x62u:
          v408 = 0;
          v409 = 0;
          v14 = 0;
          *(a1 + 800) |= 2uLL;
          while (1)
          {
            v414 = 0;
            v410 = [a2 position] + 1;
            if (v410 >= [a2 position] && (v411 = objc_msgSend(a2, "position") + 1, v411 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v414 & 0x7F) << v408;
            if ((v414 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v408 += 7;
            v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__accessPointOUI;
            v19 = v409++ > 8;
            if (v19)
            {
              goto LABEL_1013;
            }
          }

          v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__accessPointOUI;
          goto LABEL_1010;
        case 0x63u:
          v220 = 0;
          v221 = 0;
          v14 = 0;
          *(a1 + 808) |= 0x4000uLL;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_1014;
          }

          return 0;
      }

      while (1)
      {
        v414 = 0;
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

        v14 |= (v414 & 0x7F) << v220;
        if ((v414 & 0x80) == 0)
        {
          break;
        }

        v17 = 0;
        v220 += 7;
        v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__timeSinceLastRecovery;
        v19 = v221++ > 8;
        if (v19)
        {
          goto LABEL_1013;
        }
      }

      v18 = &OBJC_IVAR___AWDLinkQualityMeasurements__timeSinceLastRecovery;
LABEL_1010:
      v17 = [a2 hasError] ? 0 : v14;
LABEL_1013:
      *(a1 + *v18) = v17;
LABEL_1014:
      v412 = [a2 position];
    }

    while (v412 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMacCountersRxReadFrom(uint64_t a1, void *a2)
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
        v74 = 0;
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

        v7 |= (v74 & 0x7F) << v5;
        if ((v74 & 0x80) == 0)
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
          *(a1 + 120) |= 0x100u;
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
            v17 = v13++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxdfrmucastmbss;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxdfrmucastmbss;
          goto LABEL_160;
        case 2u:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x800u;
          while (1)
          {
            v87 = 0;
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

            v14 |= (v87 & 0x7F) << v48;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v17 = v49++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxmfrmucastmbss;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxmfrmucastmbss;
          goto LABEL_160;
        case 3u:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          *(a1 + 120) |= 8u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v36;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v17 = v37++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxcfrmucast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxcfrmucast;
          goto LABEL_160;
        case 4u:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x2000u;
          while (1)
          {
            v85 = 0;
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

            v14 |= (v85 & 0x7F) << v40;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v17 = v41++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxrtsucast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxrtsucast;
          goto LABEL_160;
        case 5u:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x20u;
          while (1)
          {
            v84 = 0;
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

            v14 |= (v84 & 0x7F) << v24;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v17 = v25++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxctsucast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxctsucast;
          goto LABEL_160;
        case 6u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          *(a1 + 120) |= 1u;
          while (1)
          {
            v83 = 0;
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

            v14 |= (v83 & 0x7F) << v52;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v17 = v53++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxackucast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxackucast;
          goto LABEL_160;
        case 7u:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x80u;
          while (1)
          {
            v82 = 0;
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

            v14 |= (v82 & 0x7F) << v60;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v17 = v61++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxdfrmocast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxdfrmocast;
          goto LABEL_160;
        case 8u:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x400u;
          while (1)
          {
            v81 = 0;
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

            v14 |= (v81 & 0x7F) << v44;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v17 = v45++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxmfrmocast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxmfrmocast;
          goto LABEL_160;
        case 9u:
          v68 = 0;
          v69 = 0;
          v14 = 0;
          *(a1 + 120) |= 4u;
          while (1)
          {
            v80 = 0;
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

            v14 |= (v80 & 0x7F) << v68;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v17 = v69++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxcfrmocast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxcfrmocast;
          goto LABEL_160;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x1000u;
          while (1)
          {
            v79 = 0;
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

            v14 |= (v79 & 0x7F) << v32;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v17 = v33++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxrtsocast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxrtsocast;
          goto LABEL_160;
        case 0xBu:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x10u;
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
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxctsocast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxctsocast;
          goto LABEL_160;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x40u;
          while (1)
          {
            v77 = 0;
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

            v14 |= (v77 & 0x7F) << v20;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v17 = v21++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxdfrmmcast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxdfrmmcast;
          goto LABEL_160;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 120) |= 0x200u;
          while (1)
          {
            v76 = 0;
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

            v14 |= (v76 & 0x7F) << v28;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v17 = v29++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDMacCountersRx__rxmfrmmcast;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDMacCountersRx__rxmfrmmcast;
          goto LABEL_160;
        case 0xEu:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          *(a1 + 120) |= 2u;
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
        v75 = 0;
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

        v14 |= (v75 & 0x7F) << v56;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v56 += 7;
        v17 = v57++ > 8;
        if (v17)
        {
          v18 = 0;
          v19 = &OBJC_IVAR___AWDMacCountersRx__rxcfrmmcast;
          goto LABEL_163;
        }
      }

      v19 = &OBJC_IVAR___AWDMacCountersRx__rxcfrmmcast;
LABEL_160:
      v18 = [a2 hasError] ? 0 : v14;
LABEL_163:
      *(a1 + *v19) = v18;
LABEL_164:
      v72 = [a2 position];
    }

    while (v72 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMacCountersRxErrorsReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 64) |= 8u;
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
                v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxfrmtoolong;
                goto LABEL_101;
              }
            }

            v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxfrmtoolong;
            goto LABEL_98;
          case 2:
            v41 = 0;
            v42 = 0;
            v15 = 0;
            *(a1 + 64) |= 0x10u;
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
                v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxfrmtooshrt;
                goto LABEL_101;
              }
            }

            v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxfrmtooshrt;
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
            *(a1 + 64) |= 0x20u;
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
                v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxinvmachdr;
                goto LABEL_101;
              }
            }

            v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxinvmachdr;
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
          *(a1 + 64) |= 4u;
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
              v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxcrsglitch;
              goto LABEL_101;
            }
          }

          v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxcrsglitch;
          goto LABEL_98;
        }

        if (v12 == 7)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x40u;
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
              v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxstrt;
              goto LABEL_101;
            }
          }

          v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxstrt;
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
          *(a1 + 64) |= 1u;
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
              v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxbadfcs;
              goto LABEL_101;
            }
          }

          v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxbadfcs;
          goto LABEL_98;
        }

        if (v12 == 5)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 64) |= 2u;
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
              v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxbadplcp;
              goto LABEL_101;
            }
          }

          v20 = &OBJC_IVAR___AWDMacCountersRxErrors__rxbadplcp;
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

uint64_t AWDManagementFramesReadFrom(uint64_t a1, void *a2)
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
              *(a1 + 104) |= 0x10u;
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
                  v20 = &OBJC_IVAR___AWDManagementFrames__auth;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDManagementFrames__auth;
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
                  v20 = &OBJC_IVAR___AWDManagementFrames__deauth;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDManagementFrames__deauth;
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
              *(a1 + 104) |= 2u;
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
                  v20 = &OBJC_IVAR___AWDManagementFrames__action;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDManagementFrames__action;
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
                  v20 = &OBJC_IVAR___AWDManagementFrames__beacon;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDManagementFrames__beacon;
              goto LABEL_154;
            case 8:
              v53 = 0;
              v54 = 0;
              v15 = 0;
              *(a1 + 104) |= 1u;
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
                  v20 = &OBJC_IVAR___AWDManagementFrames__aTIM;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDManagementFrames__aTIM;
              goto LABEL_154;
            case 9:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 104) |= 0x80u;
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
                  v20 = &OBJC_IVAR___AWDManagementFrames__disassoc;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDManagementFrames__disassoc;
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
            *(a1 + 104) |= 0x800u;
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
                v20 = &OBJC_IVAR___AWDManagementFrames__reassocResponse;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDManagementFrames__reassocResponse;
            goto LABEL_154;
          case 5:
            v57 = 0;
            v58 = 0;
            v15 = 0;
            *(a1 + 104) |= 0x100u;
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
                v20 = &OBJC_IVAR___AWDManagementFrames__probeRequest;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDManagementFrames__probeRequest;
            goto LABEL_154;
          case 6:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 104) |= 0x200u;
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
                v20 = &OBJC_IVAR___AWDManagementFrames__probeResponse;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDManagementFrames__probeResponse;
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
            *(a1 + 104) |= 4u;
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
                v20 = &OBJC_IVAR___AWDManagementFrames__assocRequest;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDManagementFrames__assocRequest;
            goto LABEL_154;
          case 2:
            v49 = 0;
            v50 = 0;
            v15 = 0;
            *(a1 + 104) |= 8u;
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
                v20 = &OBJC_IVAR___AWDManagementFrames__assocResponse;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDManagementFrames__assocResponse;
            goto LABEL_154;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 104) |= 0x400u;
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
                v20 = &OBJC_IVAR___AWDManagementFrames__reassocRequest;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDManagementFrames__reassocRequest;
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

uint64_t AWDNwExclusionCountReadFrom(uint64_t a1, void *a2)
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
            v20 = &OBJC_IVAR___AWDNwExclusionCount__usageRank;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDNwExclusionCount__usageRank;
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
        *(a1 + 20) |= 1u;
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
            v20 = &OBJC_IVAR___AWDNwExclusionCount__reasonCode;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDNwExclusionCount__reasonCode;
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
    *(a1 + 20) |= 2u;
    while (1)
    {
      v34 = 0;
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

      v15 |= (v34 & 0x7F) << v21;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v18 = v22++ > 8;
      if (v18)
      {
        v19 = 0;
        v20 = &OBJC_IVAR___AWDNwExclusionCount__rssi;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDNwExclusionCount__rssi;
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

uint64_t AWDOMICntrsReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 5)
      {
        if (v12 <= 7)
        {
          if (v12 == 6)
          {
            v37 = 0;
            v38 = 0;
            v15 = 0;
            *(a1 + 48) |= 0x200u;
            while (1)
            {
              v64 = 0;
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

              v15 |= (v64 & 0x7F) << v37;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v18 = v38++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxUlmucfgAck;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxUlmucfgAck;
            goto LABEL_132;
          }

          if (v12 == 7)
          {
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 48) |= 0x40u;
            while (1)
            {
              v63 = 0;
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

              v15 |= (v63 & 0x7F) << v29;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxTxnsts;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxTxnsts;
LABEL_132:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_135:
            *(a1 + *v20) = v19;
            goto LABEL_136;
          }
        }

        else
        {
          switch(v12)
          {
            case 8:
              v45 = 0;
              v46 = 0;
              v15 = 0;
              *(a1 + 48) |= 0x80u;
              while (1)
              {
                v62 = 0;
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

                v15 |= (v62 & 0x7F) << v45;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v18 = v46++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxTxnstsAck;
                  goto LABEL_135;
                }
              }

              v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxTxnstsAck;
              goto LABEL_132;
            case 9:
              v53 = 0;
              v54 = 0;
              v15 = 0;
              *(a1 + 48) |= 1u;
              while (1)
              {
                v61 = 0;
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

                v15 |= (v61 & 0x7F) << v53;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v18 = v54++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxDlmursdrec;
                  goto LABEL_135;
                }
              }

              v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxDlmursdrec;
              goto LABEL_132;
            case 0xA:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 48) |= 2u;
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

                v15 |= (v60 & 0x7F) << v21;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v18 = v22++ > 8;
                if (v18)
                {
                  v19 = 0;
                  v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxDlmursdrecAck;
                  goto LABEL_135;
                }
              }

              v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxDlmursdrecAck;
              goto LABEL_132;
          }
        }
      }

      else if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v33 = 0;
          v34 = 0;
          v15 = 0;
          *(a1 + 48) |= 0x10u;
          while (1)
          {
            v69 = 0;
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

            v15 |= (v69 & 0x7F) << v33;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v18 = v34++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxSched;
              goto LABEL_135;
            }
          }

          v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxSched;
          goto LABEL_132;
        }

        if (v12 == 2)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          *(a1 + 48) |= 0x20u;
          while (1)
          {
            v68 = 0;
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

            v15 |= (v68 & 0x7F) << v25;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v18 = v26++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxSuccess;
              goto LABEL_135;
            }
          }

          v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxSuccess;
          goto LABEL_132;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v41 = 0;
            v42 = 0;
            v15 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              v67 = 0;
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

              v15 |= (v67 & 0x7F) << v41;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v18 = v42++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxRetries;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxRetries;
            goto LABEL_132;
          case 4:
            v49 = 0;
            v50 = 0;
            v15 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              v66 = 0;
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

              v15 |= (v66 & 0x7F) << v49;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v18 = v50++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxDur;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxDur;
            goto LABEL_132;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 48) |= 0x100u;
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
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxUlmucfg;
                goto LABEL_135;
              }
            }

            v20 = &OBJC_IVAR___AWDOMICntrs__heOmitxUlmucfg;
            goto LABEL_132;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_136:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDRxPhyErrorsReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 32) |= 1u;
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
            v20 = &OBJC_IVAR___AWDRxPhyErrors__bphyBadplcp;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDRxPhyErrors__bphyBadplcp;
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
            v20 = &OBJC_IVAR___AWDRxPhyErrors__rfdisable;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDRxPhyErrors__rfdisable;
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
    *(a1 + 32) |= 2u;
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
        v20 = &OBJC_IVAR___AWDRxPhyErrors__bphyRxcrsglitch;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDRxPhyErrors__bphyRxcrsglitch;
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

uint64_t AWDScanStatsPerSliceReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v68) = 0;
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

        v7 |= (v68 & 0x7F) << v5;
        if ((v68 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 & 7;
      if (v12 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v11 >> 3;
      if ((v11 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 104) |= 1u;
            while (1)
            {
              LOBYTE(v68) = 0;
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

              v30 |= (v68 & 0x7F) << v28;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v10 = v29++ >= 9;
              if (v10)
              {
                v33 = 0;
                goto LABEL_106;
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

LABEL_106:
            *(a1 + 80) = v33;
            goto LABEL_145;
          case 2:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 104) |= 4u;
            while (1)
            {
              LOBYTE(v68) = 0;
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

              v48 |= (v68 & 0x7F) << v46;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v10 = v47++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_114;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v48;
            }

LABEL_114:
            v51 = 92;
            goto LABEL_115;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 104) |= 2u;
            while (1)
            {
              LOBYTE(v68) = 0;
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

              v23 |= (v68 & 0x7F) << v21;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_110;
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

LABEL_110:
            v51 = 88;
LABEL_115:
            *(a1 + v51) = v26;
            goto LABEL_145;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          if (v12 != 2)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            while (1)
            {
              LOBYTE(v68) = 0;
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

              v59 |= (v68 & 0x7F) << v57;
              if ((v68 & 0x80) == 0)
              {
                goto LABEL_143;
              }

              v57 += 7;
              v10 = v58++ >= 9;
              if (v10)
              {
                goto LABEL_144;
              }
            }
          }

          v68 = 0;
          v69 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v40 = [a2 position];
            if (v40 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_52;
            }

            v41 = 0;
            v42 = 0;
            v43 = 0;
            while (1)
            {
              v70 = 0;
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

              v43 |= (v70 & 0x7F) << v41;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v10 = v42++ >= 9;
              if (v10)
              {
                goto LABEL_93;
              }
            }

            [a2 hasError];
LABEL_93:
            PBRepeatedUInt32Add();
          }
        }

        if (v13 == 7)
        {
          v27 = objc_alloc_init(AWDWiFiMetricsScanObj);
          [a1 addScanObject:v27];

          v68 = 0;
          v69 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiMetricsScanObjReadFrom(v27, a2);
          if (!result)
          {
            return result;
          }

LABEL_52:
          PBReaderRecallMark();
          goto LABEL_145;
        }
      }

      else
      {
        if (v13 == 4)
        {
          if (v12 != 2)
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            while (1)
            {
              LOBYTE(v68) = 0;
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

              v54 |= (v68 & 0x7F) << v52;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v10 = v53++ >= 9;
              if (v10)
              {
                goto LABEL_144;
              }
            }

LABEL_143:
            [a2 hasError];
LABEL_144:
            PBRepeatedUInt32Add();
            goto LABEL_145;
          }

          v68 = 0;
          v69 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v34 = [a2 position];
            if (v34 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_52;
            }

            v35 = 0;
            v36 = 0;
            v37 = 0;
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
                goto LABEL_78;
              }
            }

            [a2 hasError];
LABEL_78:
            PBRepeatedUInt32Add();
          }
        }

        if (v13 == 5)
        {
          if (v12 != 2)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            while (1)
            {
              LOBYTE(v68) = 0;
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

              v64 |= (v68 & 0x7F) << v62;
              if ((v68 & 0x80) == 0)
              {
                goto LABEL_143;
              }

              v62 += 7;
              v10 = v63++ >= 9;
              if (v10)
              {
                goto LABEL_144;
              }
            }
          }

          v68 = 0;
          v69 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v15 = [a2 position];
            if (v15 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_52;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v70 = 0;
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

              v18 |= (v70 & 0x7F) << v16;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v10 = v17++ >= 9;
              if (v10)
              {
                goto LABEL_35;
              }
            }

            [a2 hasError];
LABEL_35:
            PBRepeatedUInt32Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_145:
      v67 = [a2 position];
    }

    while (v67 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSidecarBssSteeringReadFrom(uint64_t a1, void *a2)
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
        v70 = 0;
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

        v7 |= (v70 & 0x7F) << v5;
        if ((v70 & 0x80) == 0)
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
          *(a1 + 60) |= 0x1000u;
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
            v17 = v13++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__trafficType;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__trafficType;
          goto LABEL_150;
        case 2u:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x10u;
          while (1)
          {
            v82 = 0;
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

            v14 |= (v82 & 0x7F) << v48;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v17 = v49++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__completionTime;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__completionTime;
          goto LABEL_150;
        case 3u:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v81 = 0;
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

            v14 |= (v81 & 0x7F) << v36;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v17 = v37++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__attemptStatus;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__attemptStatus;
          goto LABEL_150;
        case 4u:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            v80 = 0;
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

            v14 |= (v80 & 0x7F) << v40;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v17 = v41++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__attemptPeerCount;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__attemptPeerCount;
          goto LABEL_150;
        case 5u:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            v79 = 0;
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

            v14 |= (v79 & 0x7F) << v24;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v17 = v25++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__bssSyncChannel;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__bssSyncChannel;
          goto LABEL_150;
        case 6u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x20u;
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
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__peerChannel;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__peerChannel;
          goto LABEL_150;
        case 7u:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x100u;
          while (1)
          {
            v77 = 0;
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

            v14 |= (v77 & 0x7F) << v56;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v17 = v57++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__selfInfraChannel;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__selfInfraChannel;
          goto LABEL_150;
        case 8u:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x400u;
          while (1)
          {
            v76 = 0;
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

            v14 |= (v76 & 0x7F) << v44;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v17 = v45++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__targetChannel;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__targetChannel;
          goto LABEL_150;
        case 9u:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x80u;
          while (1)
          {
            v75 = 0;
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

            v14 |= (v75 & 0x7F) << v64;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v17 = v65++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__policyCode;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__policyCode;
          goto LABEL_150;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x40u;
          while (1)
          {
            v74 = 0;
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

            v14 |= (v74 & 0x7F) << v32;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v17 = v33++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__peerChannelFlags;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__peerChannelFlags;
          goto LABEL_150;
        case 0xBu:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x200u;
          while (1)
          {
            v73 = 0;
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

            v14 |= (v73 & 0x7F) << v60;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v17 = v61++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__selfInfraChannelFlags;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__selfInfraChannelFlags;
          goto LABEL_150;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v14 = 0;
          *(a1 + 60) |= 8u;
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

            v14 |= (v72 & 0x7F) << v20;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v17 = v21++ > 8;
            if (v17)
            {
              v18 = 0;
              v19 = &OBJC_IVAR___AWDSidecarBssSteering__bssSyncChannelFlags;
              goto LABEL_153;
            }
          }

          v19 = &OBJC_IVAR___AWDSidecarBssSteering__bssSyncChannelFlags;
          goto LABEL_150;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 60) |= 0x800u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_154;
          }

          return 0;
      }

      while (1)
      {
        v71 = 0;
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

        v14 |= (v71 & 0x7F) << v28;
        if ((v71 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v17 = v29++ > 8;
        if (v17)
        {
          v18 = 0;
          v19 = &OBJC_IVAR___AWDSidecarBssSteering__targetChannelFlags;
          goto LABEL_153;
        }
      }

      v19 = &OBJC_IVAR___AWDSidecarBssSteering__targetChannelFlags;
LABEL_150:
      v18 = [a2 hasError] ? 0 : v14;
LABEL_153:
      *(a1 + *v19) = v18;
LABEL_154:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSidecarHistogramBinReadFrom(uint64_t a1, void *a2)
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
        v20 = &OBJC_IVAR___AWDSidecarHistogramBin__value;
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
        v20 = &OBJC_IVAR___AWDSidecarHistogramBin__binStart;
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
    v20 = &OBJC_IVAR___AWDSidecarHistogramBin__binEnd;
    goto LABEL_37;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSidecarPeerTrafficReadFrom(_BYTE *a1, void *a2)
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
        LOBYTE(v32[0]) = 0;
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

        v7 |= (v32[0] & 0x7F) << v5;
        if ((v32[0] & 0x80) == 0)
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
          a1[144] |= 4u;
          while (1)
          {
            LOBYTE(v32[0]) = 0;
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

            v14 |= (v32[0] & 0x7F) << v12;
            if ((v32[0] & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_73:
              v30 = 24;
              goto LABEL_78;
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

          goto LABEL_73;
        case 2u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          a1[144] |= 2u;
          while (1)
          {
            LOBYTE(v32[0]) = 0;
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

            v26 |= (v32[0] & 0x7F) << v24;
            if ((v32[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v26;
          }

LABEL_77:
          v30 = 16;
          goto LABEL_78;
        case 3u:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          a1[144] |= 1u;
          break;
        case 4u:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addTxTotalDelay:v18];
          goto LABEL_61;
        case 5u:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addTxIPCDelay:v18];
          goto LABEL_61;
        case 6u:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addTxFWDelay:v18];
          goto LABEL_61;
        case 7u:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addTxHWDelay:v18];
          goto LABEL_61;
        case 8u:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addTxDataRate:v18];
          goto LABEL_61;
        case 9u:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addTxCCA:v18];
          goto LABEL_61;
        case 0xAu:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addTxRetries:v18];
          goto LABEL_61;
        case 0xBu:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addTxPacketBurstSize:v18];
          goto LABEL_61;
        case 0xCu:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addTxPacketBurstInterval:v18];
          goto LABEL_61;
        case 0xDu:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addRxTotalDelay:v18];
          goto LABEL_61;
        case 0xEu:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addRxIPCDelay:v18];
          goto LABEL_61;
        case 0xFu:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addRxFWDelay:v18];
          goto LABEL_61;
        case 0x10u:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addRxDataRate:v18];
          goto LABEL_61;
        case 0x11u:
          v18 = objc_alloc_init(AWDSidecarHistogramBin);
          [a1 addRxRSSI:v18];
LABEL_61:

          v32[0] = 0;
          v32[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDSidecarHistogramBinReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_64;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_64;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v32[0]) = 0;
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

        v21 |= (v32[0] & 0x7F) << v19;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v10 = v20++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_69;
        }
      }

      v17 = [a2 hasError] ? 0 : v21;
LABEL_69:
      v30 = 8;
LABEL_78:
      *&a1[v30] = v17;
LABEL_64:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSlowWiFiNotificationReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
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

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
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
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v50 = 0;
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

              v27 |= (v50 & 0x7F) << v25;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                v30 = 0;
                goto LABEL_83;
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

LABEL_83:
            *(a1 + 8) = v30;
            goto LABEL_103;
          case 2:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v54 = 0;
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

              v39 |= (v54 & 0x7F) << v37;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v10 = v38++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_97;
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

LABEL_97:
            v47 = 16;
            break;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v53 = 0;
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

              v15 |= (v53 & 0x7F) << v13;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_91;
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

LABEL_91:
            v47 = 20;
            break;
          default:
            goto LABEL_60;
        }

        goto LABEL_102;
      }

      if (v12 == 4)
      {
        break;
      }

      if (v12 == 5)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 36) |= 0x10u;
        while (1)
        {
          v51 = 0;
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

          v44 |= (v51 & 0x7F) << v42;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v10 = v43++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_101;
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

LABEL_101:
        v47 = 28;
LABEL_102:
        *(a1 + v47) = v18;
        goto LABEL_103;
      }

      if (v12 != 6)
      {
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_103;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 36) |= 0x20u;
      while (1)
      {
        v55 = 0;
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

        v21 |= (v55 & 0x7F) << v19;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v10 = v20++ >= 9;
        if (v10)
        {
          LOBYTE(v24) = 0;
          goto LABEL_93;
        }
      }

      v24 = (v21 != 0) & ~[a2 hasError];
LABEL_93:
      *(a1 + 32) = v24;
LABEL_103:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    *(a1 + 36) |= 8u;
    while (1)
    {
      v52 = 0;
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

      v33 |= (v52 & 0x7F) << v31;
      if ((v52 & 0x80) == 0)
      {
        break;
      }

      v31 += 7;
      v10 = v32++ >= 9;
      if (v10)
      {
        v18 = 0;
        goto LABEL_87;
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

LABEL_87:
    v47 = 24;
    goto LABEL_102;
  }

  return [a2 hasError] ^ 1;
}