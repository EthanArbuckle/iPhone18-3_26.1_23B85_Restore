uint64_t AWDWiFiNWActivityBtCoexReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v102[0]) = 0;
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

        v7 |= (v102[0] & 0x7F) << v5;
        if ((v102[0] & 0x80) == 0)
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
          *(a1 + 84) |= 0x800u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v14 |= (v102[0] & 0x7F) << v12;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_219:
              v100 = 60;
              goto LABEL_244;
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

          goto LABEL_219;
        case 2u:
          v68 = 0;
          v69 = 0;
          v70 = 0;
          *(a1 + 84) |= 0x100u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v70 |= (v102[0] & 0x7F) << v68;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v10 = v69++ >= 9;
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
            v17 = v70;
          }

LABEL_223:
          v100 = 48;
          goto LABEL_244;
        case 3u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 84) |= 0x80u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v50 |= (v102[0] & 0x7F) << v48;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v10 = v49++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_203;
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

LABEL_203:
          v100 = 44;
          goto LABEL_244;
        case 4u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 84) |= 0x20u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v60 |= (v102[0] & 0x7F) << v58;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v10 = v59++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_211;
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

LABEL_211:
          v100 = 28;
          goto LABEL_244;
        case 5u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 84) |= 0x400u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v35 |= (v102[0] & 0x7F) << v33;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
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
            v17 = v35;
          }

LABEL_191:
          v100 = 56;
          goto LABEL_244;
        case 6u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 84) |= 0x4000u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v77 |= (v102[0] & 0x7F) << v75;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v10 = v76++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_227;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v77;
          }

LABEL_227:
          v100 = 72;
          goto LABEL_244;
        case 7u:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 84) |= 0x40u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v87 |= (v102[0] & 0x7F) << v85;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v10 = v86++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_235;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v87;
          }

LABEL_235:
          v100 = 40;
          goto LABEL_244;
        case 8u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 84) |= 0x200u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v65 |= (v102[0] & 0x7F) << v63;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v10 = v64++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_215;
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

LABEL_215:
          v100 = 52;
          goto LABEL_244;
        case 9u:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 84) |= 0x10000u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v97 |= (v102[0] & 0x7F) << v95;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v10 = v96++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_243;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v97;
          }

LABEL_243:
          v100 = 80;
          goto LABEL_244;
        case 0xAu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 84) |= 0x8000u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v45 |= (v102[0] & 0x7F) << v43;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
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
            v17 = v45;
          }

LABEL_199:
          v100 = 76;
          goto LABEL_244;
        case 0xBu:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 84) |= 4u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v92 |= (v102[0] & 0x7F) << v90;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v10 = v91++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_239;
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

LABEL_239:
          v100 = 16;
          goto LABEL_244;
        case 0xCu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v30 |= (v102[0] & 0x7F) << v28;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_187;
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

LABEL_187:
          v100 = 24;
          goto LABEL_244;
        case 0xDu:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v40 |= (v102[0] & 0x7F) << v38;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_195;
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

LABEL_195:
          v100 = 20;
          goto LABEL_244;
        case 0xEu:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 84) |= 2u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v82 |= (v102[0] & 0x7F) << v80;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v10 = v81++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_231;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v82;
          }

LABEL_231:
          v100 = 12;
          goto LABEL_244;
        case 0xFu:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v25 |= (v102[0] & 0x7F) << v23;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
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
            v17 = v25;
          }

LABEL_183:
          v100 = 8;
          goto LABEL_244;
        case 0x10u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 84) |= 0x2000u;
          while (1)
          {
            LOBYTE(v102[0]) = 0;
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

            v55 |= (v102[0] & 0x7F) << v53;
            if ((v102[0] & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v10 = v54++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_207;
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

LABEL_207:
          v100 = 68;
          goto LABEL_244;
        case 0x11u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 84) |= 0x1000u;
          break;
        case 0x12u:
          v73 = objc_alloc_init(AWDWiFiNWActivityBtCoexReqestReason);

          *(a1 + 32) = v73;
          v102[0] = 0;
          v102[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityBtCoexReqestReasonReadFrom(v73, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_245;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_245;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v102[0]) = 0;
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

        v20 |= (v102[0] & 0x7F) << v18;
        if ((v102[0] & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v10 = v19++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_179;
        }
      }

      v17 = [a2 hasError] ? 0 : v20;
LABEL_179:
      v100 = 64;
LABEL_244:
      *(a1 + v100) = v17;
LABEL_245:
      v101 = [a2 position];
    }

    while (v101 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityBtCoexReqestReasonReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 64) |= 2u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__acl;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__acl;
          goto LABEL_160;
        case 2u:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x1000u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__sco;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__sco;
          goto LABEL_160;
        case 3u:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x10u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__esco;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__esco;
          goto LABEL_160;
        case 4u:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          *(a1 + 64) |= 1u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__a2dp;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__a2dp;
          goto LABEL_160;
        case 5u:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x2000u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__sniff;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__sniff;
          goto LABEL_160;
        case 6u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x400u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__pagescan;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__pagescan;
          goto LABEL_160;
        case 7u:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x40u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__inquiryscan;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__inquiryscan;
          goto LABEL_160;
        case 8u:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x200u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__page;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__page;
          goto LABEL_160;
        case 9u:
          v68 = 0;
          v69 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x20u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__inquiry;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__inquiry;
          goto LABEL_160;
        case 0xAu:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x80u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__mss;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__mss;
          goto LABEL_160;
        case 0xBu:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x800u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__park;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__park;
          goto LABEL_160;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v14 = 0;
          *(a1 + 64) |= 4u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__ble;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__ble;
          goto LABEL_160;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 64) |= 8u;
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
              v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__blescan;
              goto LABEL_163;
            }
          }

          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__blescan;
          goto LABEL_160;
        case 0xEu:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          *(a1 + 64) |= 0x100u;
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
          v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__other;
          goto LABEL_163;
        }
      }

      v19 = &OBJC_IVAR___AWDWiFiNWActivityBtCoexReqestReason__other;
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

uint64_t AWDWiFiNWActivityControllerStatsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v80) = 0;
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

        v7 |= (v80 & 0x7F) << v5;
        if ((v80 & 0x80) == 0)
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
          *(a1 + 136) |= 0x100u;
          while (1)
          {
            LOBYTE(v80) = 0;
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

            v14 |= (v80 & 0x7F) << v12;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_172:
              v78 = 64;
              goto LABEL_189;
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

          goto LABEL_172;
        case 2u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 136) |= 2u;
          while (1)
          {
            LOBYTE(v80) = 0;
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

            v55 |= (v80 & 0x7F) << v53;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v10 = v54++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_176;
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

LABEL_176:
          v78 = 24;
          goto LABEL_189;
        case 3u:
          v41 = objc_alloc_init(AWDWiFiNWActivityScanActivity);

          *(a1 + 120) = v41;
          v80 = 0;
          v81 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityScanActivityReadFrom(v41, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_144;
        case 4u:
          v47 = objc_alloc_init(AWDWiFiNWActivityPowerPStats);

          *(a1 + 96) = v47;
          v80 = 0;
          v81 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityPowerPStatsReadFrom(v47, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_144;
        case 5u:
          v33 = objc_alloc_init(AWDWiFiNWActivityImpedingFunctions);

          *(a1 + 72) = v33;
          v80 = 0;
          v81 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityImpedingFunctionsReadFrom(v33, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_144;
        case 6u:
          v59 = objc_alloc_init(AWDWiFiNWActivityAggregateMetrics);

          *(a1 + 16) = v59;
          v80 = 0;
          v81 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityAggregateMetricsReadFrom(v59, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_144;
        case 7u:
          v66 = objc_alloc_init(AWDWiFiNWActivityBtCoex);

          *(a1 + 32) = v66;
          v80 = 0;
          v81 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityBtCoexReadFrom(v66, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_144;
        case 8u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 136) |= 0x20u;
          while (1)
          {
            LOBYTE(v80) = 0;
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

            v50 |= (v80 & 0x7F) << v48;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v10 = v49++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_168;
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

LABEL_168:
          v78 = 52;
          goto LABEL_189;
        case 9u:
          v72 = 0;
          v73 = 0;
          v74 = 0;
          *(a1 + 136) |= 0x40u;
          while (1)
          {
            LOBYTE(v80) = 0;
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

            v74 |= (v80 & 0x7F) << v72;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v10 = v73++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_188;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v74;
          }

LABEL_188:
          v78 = 56;
          goto LABEL_189;
        case 0xAu:
          v40 = objc_alloc_init(AWDWiFiNWActivityRateAndAggregation);

          *(a1 + 88) = v40;
          v80 = 0;
          v81 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityRateAndAggregationReadFrom(v40, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_144;
        case 0xBu:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          *(a1 + 136) |= 8u;
          while (1)
          {
            LOBYTE(v80) = 0;
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

            v69 |= (v80 & 0x7F) << v67;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v10 = v68++ >= 9;
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
            v17 = v69;
          }

LABEL_184:
          v78 = 44;
          goto LABEL_189;
        case 0xCu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 136) |= 0x10u;
          while (1)
          {
            LOBYTE(v80) = 0;
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
              v17 = 0;
              goto LABEL_156;
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

LABEL_156:
          v78 = 48;
          goto LABEL_189;
        case 0xDu:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 136) |= 4u;
          while (1)
          {
            LOBYTE(v80) = 0;
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

            v37 |= (v80 & 0x7F) << v35;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v10 = v36++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v37;
          }

LABEL_160:
          v78 = 40;
          goto LABEL_189;
        case 0xEu:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 136) |= 1u;
          while (1)
          {
            LOBYTE(v80) = 0;
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

            v62 |= (v80 & 0x7F) << v60;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v10 = v61++ >= 9;
            if (v10)
            {
              v65 = 0;
              goto LABEL_180;
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

LABEL_180:
          *(a1 + 8) = v65;
          goto LABEL_190;
        case 0xFu:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 136) |= 0x80u;
          while (1)
          {
            LOBYTE(v80) = 0;
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

            v25 |= (v80 & 0x7F) << v23;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_152;
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

LABEL_152:
          v78 = 60;
          goto LABEL_189;
        case 0x10u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 136) |= 0x200u;
          while (1)
          {
            LOBYTE(v80) = 0;
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

            v44 |= (v80 & 0x7F) << v42;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v10 = v43++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v44;
          }

LABEL_164:
          v78 = 80;
          goto LABEL_189;
        case 0x11u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 136) |= 0x400u;
          break;
        case 0x12u:
          v58 = objc_alloc_init(AWDWiFiNWActivityMpduWME);
          [a1 addTxmpduWME:v58];
          goto LABEL_121;
        case 0x13u:
          v58 = objc_alloc_init(AWDWiFiNWActivityMpduWME);
          [a1 addRxmpduWME:v58];
LABEL_121:

          v80 = 0;
          v81 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityMpduWMEReadFrom(v58, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_144;
        case 0x14u:
          v77 = objc_alloc_init(AWDWiFiNWActivityMpduLost);
          [a1 addRxmdpuLost:v77];

          v80 = 0;
          v81 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityMpduLostReadFrom(v77, a2);
          if (!result)
          {
            return result;
          }

LABEL_144:
          PBReaderRecallMark();
          goto LABEL_190;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_190;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v80) = 0;
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

        v20 |= (v80 & 0x7F) << v18;
        if ((v80 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v10 = v19++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_148;
        }
      }

      v17 = [a2 hasError] ? 0 : v20;
LABEL_148:
      v78 = 84;
LABEL_189:
      *(a1 + v78) = v17;
LABEL_190:
      v79 = [a2 position];
    }

    while (v79 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityHistogramBinReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDWiFiNWActivityImpedingFunctionsReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v143) = 0;
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

      v8 |= (v143 & 0x7F) << v6;
      if ((v143 & 0x80) == 0)
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
        v13 = objc_alloc_init(AWDWiFiNWActivityStateBin);
        [a1 addCTLMIndex:v13];
        goto LABEL_136;
      case 2u:
        v13 = objc_alloc_init(AWDWiFiNWActivityStateBin);
        [a1 addTxPowerBackoffDB:v13];
        goto LABEL_136;
      case 3u:
        v13 = objc_alloc_init(AWDWiFiNWActivityStateBin);
        [a1 addTxDutyCyclePct:v13];
        goto LABEL_136;
      case 4u:
        v13 = objc_alloc_init(AWDWiFiNWActivityStateBin);
        [a1 addCTLMIndex1:v13];
        goto LABEL_136;
      case 5u:
        v13 = objc_alloc_init(AWDWiFiNWActivityStateBin);
        [a1 addTxPowerBackoffDB1:v13];
        goto LABEL_136;
      case 6u:
        v13 = objc_alloc_init(AWDWiFiNWActivityStateBin);
        [a1 addTxDutyCyclePct1:v13];
LABEL_136:

        v143 = 0;
        v144 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
          result = AWDWiFiNWActivityStateBinReadFrom(v13, a2);
          if (result)
          {
            goto LABEL_138;
          }
        }

        return result;
      case 7u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 168) |= 0x80000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v89 |= (v143 & 0x7F) << v87;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v11 = v88++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_317;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v89;
        }

LABEL_317:
        v142 = 144;
        goto LABEL_358;
      case 8u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 168) |= 0x100000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v62 |= (v143 & 0x7F) << v60;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_297;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v62;
        }

LABEL_297:
        v142 = 148;
        goto LABEL_358;
      case 9u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 168) |= 0x200000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v104 |= (v143 & 0x7F) << v102;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v11 = v103++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_329;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v104;
        }

LABEL_329:
        v142 = 152;
        goto LABEL_358;
      case 0xAu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 168) |= 0x400000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v42 |= (v143 & 0x7F) << v40;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_281;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v42;
        }

LABEL_281:
        v142 = 156;
        goto LABEL_358;
      case 0xBu:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 168) |= 1u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v99 |= (v143 & 0x7F) << v97;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v11 = v98++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_325;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v99;
        }

LABEL_325:
        v142 = 8;
        goto LABEL_358;
      case 0xCu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 168) |= 2u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v32 |= (v143 & 0x7F) << v30;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_273;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v32;
        }

LABEL_273:
        v142 = 12;
        goto LABEL_358;
      case 0xDu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 168) |= 0x8000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v37 |= (v143 & 0x7F) << v35;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_277;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v37;
        }

LABEL_277:
        v142 = 96;
        goto LABEL_358;
      case 0xEu:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 168) |= 0x10000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v84 |= (v143 & 0x7F) << v82;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v11 = v83++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_313;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v84;
        }

LABEL_313:
        v142 = 100;
        goto LABEL_358;
      case 0xFu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 168) |= 0x800000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v27 |= (v143 & 0x7F) << v25;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_269;
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

LABEL_269:
        v142 = 160;
        goto LABEL_358;
      case 0x10u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 168) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v57 |= (v143 & 0x7F) << v55;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_293;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v57;
        }

LABEL_293:
        v142 = 164;
        goto LABEL_358;
      case 0x11u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 168) |= 0x10u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v22 |= (v143 & 0x7F) << v20;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_265;
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

LABEL_265:
        v142 = 40;
        goto LABEL_358;
      case 0x12u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 168) |= 0x20u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v69 |= (v143 & 0x7F) << v67;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_301;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v69;
        }

LABEL_301:
        v142 = 44;
        goto LABEL_358;
      case 0x13u:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 168) |= 4u;
        while (1)
        {
          LOBYTE(v143) = 0;
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
          v11 = v93++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_321;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v94;
        }

LABEL_321:
        v142 = 32;
        goto LABEL_358;
      case 0x14u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 168) |= 8u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v119 |= (v143 & 0x7F) << v117;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_341;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v119;
        }

LABEL_341:
        v142 = 36;
        goto LABEL_358;
      case 0x15u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 168) |= 0x20000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v74 |= (v143 & 0x7F) << v72;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_305;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v74;
        }

LABEL_305:
        v142 = 104;
        goto LABEL_358;
      case 0x16u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 168) |= 0x40000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v79 |= (v143 & 0x7F) << v77;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_309;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v79;
        }

LABEL_309:
        v142 = 108;
        goto LABEL_358;
      case 0x17u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 168) |= 0x80u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v114 |= (v143 & 0x7F) << v112;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_337;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v114;
        }

LABEL_337:
        v142 = 52;
        goto LABEL_358;
      case 0x18u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 168) |= 0x40u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v124 |= (v143 & 0x7F) << v122;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v124;
        }

LABEL_345:
        v142 = 48;
        goto LABEL_358;
      case 0x19u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 168) |= 0x100u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v52 |= (v143 & 0x7F) << v50;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_289;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v52;
        }

LABEL_289:
        v142 = 56;
        goto LABEL_358;
      case 0x1Au:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 168) |= 0x200u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v47 |= (v143 & 0x7F) << v45;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_285;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v47;
        }

LABEL_285:
        v142 = 60;
        goto LABEL_358;
      case 0x1Bu:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 168) |= 0x2000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v139 |= (v143 & 0x7F) << v137;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v11 = v138++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_357;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v139;
        }

LABEL_357:
        v142 = 76;
        goto LABEL_358;
      case 0x1Cu:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 168) |= 0x400u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v16 |= (v143 & 0x7F) << v14;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_261;
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

LABEL_261:
        v142 = 64;
        goto LABEL_358;
      case 0x1Du:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 168) |= 0x800u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v129 |= (v143 & 0x7F) << v127;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v11 = v128++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v129;
        }

LABEL_349:
        v142 = 68;
        goto LABEL_358;
      case 0x1Eu:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 168) |= 0x1000u;
        while (1)
        {
          LOBYTE(v143) = 0;
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

          v134 |= (v143 & 0x7F) << v132;
          if ((v143 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v11 = v133++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v134;
        }

LABEL_353:
        v142 = 72;
        goto LABEL_358;
      case 0x1Fu:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 168) |= 0x4000u;
        break;
      case 0x20u:
        v65 = objc_alloc_init(AWDWiFiTDM);

        *(a1 + 88) = v65;
        v143 = 0;
        v144 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiTDMReadFrom(v65, a2);
        if (!result)
        {
          return result;
        }

LABEL_138:
        PBReaderRecallMark();
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        return 0;
    }

    while (1)
    {
      LOBYTE(v143) = 0;
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

      v109 |= (v143 & 0x7F) << v107;
      if ((v143 & 0x80) == 0)
      {
        break;
      }

      v107 += 7;
      v11 = v108++ >= 9;
      if (v11)
      {
        v19 = 0;
        goto LABEL_333;
      }
    }

    if ([a2 hasError])
    {
      v19 = 0;
    }

    else
    {
      v19 = v109;
    }

LABEL_333:
    v142 = 80;
LABEL_358:
    *(a1 + v142) = v19;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityInterfaceStatsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v36) = 0;
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

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
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
            v14 = objc_alloc_init(AWDWiFiNWActivityTraffic);
            [a1 addBytes:v14];
            goto LABEL_53;
          }

          if (v12 == 4)
          {
            v15 = objc_alloc_init(AWDWiFiNWActivityPeerStats);
            [a1 addPeer:v15];

            v36 = 0;
            v37 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiNWActivityPeerStatsReadFrom(v15, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              LOBYTE(v36) = 0;
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

              v25 |= (v36 & 0x7F) << v23;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v10 = v24++ >= 9;
              if (v10)
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
            v34 = 64;
            goto LABEL_86;
          }

          if (v12 == 2)
          {
            v14 = objc_alloc_init(AWDWiFiNWActivityTraffic);
            [a1 addPackets:v14];
LABEL_53:

            v36 = 0;
            v37 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiNWActivityTrafficReadFrom(v14, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          }
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v13 = objc_alloc_init(AWDWiFiNWActivityStateBin);
          [a1 addNpeers:v13];

          goto LABEL_66;
        }

        if (v12 == 6)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v36) = 0;
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

            v19 |= (v36 & 0x7F) << v17;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v10 = v18++ >= 9;
            if (v10)
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
            v22 = v19;
          }

LABEL_77:
          v34 = 36;
          goto LABEL_86;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 68) |= 1u;
            while (1)
            {
              LOBYTE(v36) = 0;
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

              v30 |= (v36 & 0x7F) << v28;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v10 = v29++ >= 9;
              if (v10)
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
              v22 = v30;
            }

LABEL_85:
            v34 = 32;
LABEL_86:
            *(a1 + v34) = v22;
            goto LABEL_87;
          case 8:
            v33 = objc_alloc_init(AWDWiFiNWActivityAssoc);

            *(a1 + 8) = v33;
            v36 = 0;
            v37 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiNWActivityAssocReadFrom(v33, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          case 9:
            v13 = objc_alloc_init(AWDWiFiNWActivityStateBin);

            *(a1 + 16) = v13;
LABEL_66:
            v36 = 0;
            v37 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiNWActivityStateBinReadFrom(v13, a2);
            if (!result)
            {
              return result;
            }

LABEL_71:
            PBReaderRecallMark();
            goto LABEL_87;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_87:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityMpduLostReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
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

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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

      if ((v11 >> 3) == 2)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        v12 = objc_alloc_init(AWDWiFiNWActivityMpduWME);

        v13 = 8;
        goto LABEL_21;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v12 = objc_alloc_init(AWDWiFiNWActivityMpduWME);

    v13 = 16;
LABEL_21:
    *(a1 + v13) = v12;
    v16[0] = 0;
    v16[1] = 0;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    result = AWDWiFiNWActivityMpduWMEReadFrom(v12, a2);
    if (!result)
    {
      return result;
    }

    PBReaderRecallMark();
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityMpduWMEReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
      if ((v11 >> 3) > 4)
      {
        if (v12 > 6)
        {
          if (v12 == 7)
          {
            v45 = 0;
            v46 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x40u;
            while (1)
            {
              v53 = 0;
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

              v15 |= (v53 & 0x7F) << v45;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v18 = v46++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid6;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid6;
            goto LABEL_110;
          }

          if (v12 == 8)
          {
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x80u;
            while (1)
            {
              v52 = 0;
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

              v15 |= (v52 & 0x7F) << v29;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid7;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid7;
LABEL_110:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_113:
            *(a1 + *v20) = v19;
            goto LABEL_114;
          }
        }

        else
        {
          if (v12 == 5)
          {
            v37 = 0;
            v38 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x10u;
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

              v15 |= (v55 & 0x7F) << v37;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v18 = v38++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid4;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid4;
            goto LABEL_110;
          }

          if (v12 == 6)
          {
            v21 = 0;
            v22 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x20u;
            while (1)
            {
              v54 = 0;
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

              v15 |= (v54 & 0x7F) << v21;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v18 = v22++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid5;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid5;
            goto LABEL_110;
          }
        }
      }

      else if (v12 > 2)
      {
        if (v12 == 3)
        {
          v41 = 0;
          v42 = 0;
          v15 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            v57 = 0;
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

            v15 |= (v57 & 0x7F) << v41;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v18 = v42++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid2;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid2;
          goto LABEL_110;
        }

        if (v12 == 4)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            v56 = 0;
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

            v15 |= (v56 & 0x7F) << v25;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v18 = v26++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid3;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid3;
          goto LABEL_110;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v33 = 0;
          v34 = 0;
          v15 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v59 = 0;
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

            v15 |= (v59 & 0x7F) << v33;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v18 = v34++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid0;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid0;
          goto LABEL_110;
        }

        if (v12 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            v58 = 0;
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
            v18 = v14++ > 8;
            if (v18)
            {
              v19 = 0;
              v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid1;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDWiFiNWActivityMpduWME__tid1;
          goto LABEL_110;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_114:
      v49 = [a2 position];
    }

    while (v49 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityPeerStatsReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v77) = 0;
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

      v8 |= (v77 & 0x7F) << v6;
      if ((v77 & 0x80) == 0)
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
        *(a1 + 224) |= 0x100u;
        while (1)
        {
          LOBYTE(v77) = 0;
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
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_168:
            v76 = 96;
            goto LABEL_197;
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

        goto LABEL_168;
      case 2u:
        String = PBReaderReadString();

        *(a1 + 48) = String;
        continue;
      case 3u:
        v32 = objc_alloc_init(AWDWiFiNWActivityStateBin);
        [a1 addRssi:v32];
        goto LABEL_68;
      case 4u:
        v32 = objc_alloc_init(AWDWiFiNWActivityStateBin);
        [a1 addCca:v32];
        goto LABEL_68;
      case 5u:
        v32 = objc_alloc_init(AWDWiFiNWActivityStateBin);
        [a1 addSnr:v32];
LABEL_68:

        v77 = 0;
        v78 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiNWActivityStateBinReadFrom(v32, a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_152;
      case 6u:
        v50 = objc_alloc_init(AWDWiFiNWActivityTraffic);
        [a1 addPackets:v50];
        goto LABEL_113;
      case 7u:
        v50 = objc_alloc_init(AWDWiFiNWActivityTraffic);
        [a1 addBytes:v50];
LABEL_113:

        v77 = 0;
        v78 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiNWActivityTrafficReadFrom(v50, a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_152;
      case 8u:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBK:v19];
        goto LABEL_150;
      case 9u:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBE:v19];
        goto LABEL_150;
      case 0xAu:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVO:v19];
        goto LABEL_150;
      case 0xBu:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVI:v19];
        goto LABEL_150;
      case 0xCu:
        v30 = objc_alloc_init(AWDWiFiNWActivityTxCompletions);

        *(a1 + 40) = v30;
        v77 = 0;
        v78 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiNWActivityTxCompletionsReadFrom(v30, a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_152;
      case 0xDu:
        v33 = objc_alloc_init(AWDWiFiNWActivityPerACTxCompletions);
        [a1 addAcCompletions:v33];

        v77 = 0;
        v78 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiNWActivityPerACTxCompletionsReadFrom(v33, a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_152;
      case 0xEu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 224) |= 0x200u;
        while (1)
        {
          LOBYTE(v77) = 0;
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

          v58 |= (v77 & 0x7F) << v56;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_184;
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

LABEL_184:
        v76 = 100;
        goto LABEL_197;
      case 0xFu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 224) |= 0x400u;
        while (1)
        {
          LOBYTE(v77) = 0;
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

          v27 |= (v77 & 0x7F) << v25;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_160;
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

LABEL_160:
        v76 = 176;
        goto LABEL_197;
      case 0x10u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 224) |= 1u;
        while (1)
        {
          LOBYTE(v77) = 0;
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

          v36 |= (v77 & 0x7F) << v34;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_164;
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

LABEL_164:
        v76 = 24;
        goto LABEL_197;
      case 0x11u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 224) |= 8u;
        while (1)
        {
          LOBYTE(v77) = 0;
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

          v22 |= (v77 & 0x7F) << v20;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_156;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v22;
        }

LABEL_156:
        v76 = 64;
        goto LABEL_197;
      case 0x12u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 224) |= 0x20u;
        while (1)
        {
          LOBYTE(v77) = 0;
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

          v42 |= (v77 & 0x7F) << v40;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
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
          v18 = v42;
        }

LABEL_172:
        v76 = 72;
        goto LABEL_197;
      case 0x13u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 224) |= 2u;
        while (1)
        {
          LOBYTE(v77) = 0;
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

          v63 |= (v77 & 0x7F) << v61;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_188;
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

LABEL_188:
        v76 = 56;
        goto LABEL_197;
      case 0x14u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 224) |= 0x10u;
        while (1)
        {
          LOBYTE(v77) = 0;
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

          v73 |= (v77 & 0x7F) << v71;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v11 = v72++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_196;
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

LABEL_196:
        v76 = 68;
        goto LABEL_197;
      case 0x15u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 224) |= 4u;
        while (1)
        {
          LOBYTE(v77) = 0;
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

          v47 |= (v77 & 0x7F) << v45;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_176;
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

LABEL_176:
        v76 = 60;
        goto LABEL_197;
      case 0x16u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 224) |= 0x40u;
        while (1)
        {
          LOBYTE(v77) = 0;
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

          v53 |= (v77 & 0x7F) << v51;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_180;
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

LABEL_180:
        v76 = 88;
        goto LABEL_197;
      case 0x17u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 224) |= 0x80u;
        break;
      case 0x18u:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addRxLatencyTID0:v19];
        goto LABEL_150;
      case 0x19u:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addRxLatencyTID1:v19];
        goto LABEL_150;
      case 0x1Au:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addRxLatencyTID2:v19];
        goto LABEL_150;
      case 0x1Bu:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addRxLatencyTID3:v19];
        goto LABEL_150;
      case 0x1Cu:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addRxLatencyTID4:v19];
        goto LABEL_150;
      case 0x1Du:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addRxLatencyTID5:v19];
        goto LABEL_150;
      case 0x1Eu:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addRxLatencyTID6:v19];
        goto LABEL_150;
      case 0x1Fu:
        v19 = objc_alloc_init(AWDWiFiNWActivityHistogramBin);
        [a1 addRxLatencyTID7:v19];
LABEL_150:

        v77 = 0;
        v78 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiNWActivityHistogramBinReadFrom(v19, a2);
        if (!result)
        {
          return result;
        }

LABEL_152:
        PBReaderRecallMark();
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        return 0;
    }

    while (1)
    {
      LOBYTE(v77) = 0;
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

      v68 |= (v77 & 0x7F) << v66;
      if ((v77 & 0x80) == 0)
      {
        break;
      }

      v66 += 7;
      v11 = v67++ >= 9;
      if (v11)
      {
        v18 = 0;
        goto LABEL_192;
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

LABEL_192:
    v76 = 92;
LABEL_197:
    *(a1 + v76) = v18;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityPerACTxCompletionsReadFrom(uint64_t a1, void *a2)
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
        v86 = 0;
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

        v7 |= (v86 & 0x7F) << v5;
        if ((v86 & 0x80) == 0)
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
          *(a1 + 76) |= 1u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v12;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v12 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__ac;
            v19 = v13++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__ac;
          goto LABEL_190;
        case 2u:
          v60 = 0;
          v61 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x8000u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v60;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v60 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__success;
            v19 = v61++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__success;
          goto LABEL_190;
        case 3u:
          v44 = 0;
          v45 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x20u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v44;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v44 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__durSinceLastSuccessfulComp;
            v19 = v45++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__durSinceLastSuccessfulComp;
          goto LABEL_190;
        case 4u:
          v52 = 0;
          v53 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x80u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v52;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v52 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__failedComp;
            v19 = v53++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__failedComp;
          goto LABEL_190;
        case 5u:
          v32 = 0;
          v33 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x10u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v32;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v32 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__durSinceLastFailedComp;
            v19 = v33++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__durSinceLastFailedComp;
          goto LABEL_190;
        case 6u:
          v64 = 0;
          v65 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x40u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v64;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v64 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__expiredComp;
            v19 = v65++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__expiredComp;
          goto LABEL_190;
        case 7u:
          v72 = 0;
          v73 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x200u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v72;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v72 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__noAckComp;
            v19 = v73++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__noAckComp;
          goto LABEL_190;
        case 8u:
          v56 = 0;
          v57 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x400u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v56;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v56 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__otherErrComp;
            v19 = v57++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__otherErrComp;
          goto LABEL_190;
        case 9u:
          v80 = 0;
          v81 = 0;
          v14 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v80;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v80 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__durSinceLastEnqueue;
            v19 = v81++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__durSinceLastEnqueue;
          goto LABEL_190;
        case 0xAu:
          v40 = 0;
          v41 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x800u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v40;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v40 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__qeuedPackets;
            v19 = v41++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__qeuedPackets;
          goto LABEL_190;
        case 0xBu:
          v76 = 0;
          v77 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x1000u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v76;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v76 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__sinceLastEnqueueHowManyFailed;
            v19 = v77++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__sinceLastEnqueueHowManyFailed;
          goto LABEL_190;
        case 0xCu:
          v28 = 0;
          v29 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x2000u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v28;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v28 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__sinceLastEnqueueHowManySuccess;
            v19 = v29++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__sinceLastEnqueueHowManySuccess;
          goto LABEL_190;
        case 0xDu:
          v36 = 0;
          v37 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x4000u;
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

            v17 = 0;
            v36 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__sinceLastSuccessHowManyFailed;
            v19 = v37++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__sinceLastSuccessHowManyFailed;
          goto LABEL_190;
        case 0xEu:
          v68 = 0;
          v69 = 0;
          v14 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v68;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v68 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__durSinceLastEnqueueAtLastCheck;
            v19 = v69++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__durSinceLastEnqueueAtLastCheck;
          goto LABEL_190;
        case 0xFu:
          v24 = 0;
          v25 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x10000u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v24;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v24 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__successfulCompletionsAtLastCheck;
            v19 = v25++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__successfulCompletionsAtLastCheck;
          goto LABEL_190;
        case 0x10u:
          v48 = 0;
          v49 = 0;
          v14 = 0;
          *(a1 + 76) |= 0x100u;
          while (1)
          {
            v86 = 0;
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

            v14 |= (v86 & 0x7F) << v48;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v17 = 0;
            v48 += 7;
            v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__failedCompletionsAtLastCheck;
            v19 = v49++ > 8;
            if (v19)
            {
              goto LABEL_193;
            }
          }

          v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__failedCompletionsAtLastCheck;
          goto LABEL_190;
        case 0x11u:
          v20 = 0;
          v21 = 0;
          v14 = 0;
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
        v86 = 0;
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

        v14 |= (v86 & 0x7F) << v20;
        if ((v86 & 0x80) == 0)
        {
          break;
        }

        v17 = 0;
        v20 += 7;
        v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__dpsNotifications;
        v19 = v21++ > 8;
        if (v19)
        {
          goto LABEL_193;
        }
      }

      v18 = &OBJC_IVAR___AWDWiFiNWActivityPerACTxCompletions__dpsNotifications;
LABEL_190:
      v17 = [a2 hasError] ? 0 : v14;
LABEL_193:
      *(a1 + *v18) = v17;
LABEL_194:
      v84 = [a2 position];
    }

    while (v84 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityPowerPStatsReadFrom(uint64_t a1, void *a2)
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

      if ((v11 >> 3) == 2)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v28 = 0;
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

          v14 |= (v28 & 0x7F) << v12;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___AWDWiFiNWActivityPowerPStats__kRadioPhyReportTxDur;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityPowerPStats__kRadioPhyReportTxDur;
LABEL_41:
        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v14;
        }

LABEL_44:
        *(a1 + *v19) = v18;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v24 = [a2 position];
      if (v24 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v20 = 0;
    v21 = 0;
    v14 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      v27 = 0;
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

      v14 |= (v27 & 0x7F) << v20;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___AWDWiFiNWActivityPowerPStats__kRadioPhyReportRxDur;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDWiFiNWActivityPowerPStats__kRadioPhyReportRxDur;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityPowerStatsReadFrom(uint64_t a1, void *a2)
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

      if ((v11 >> 3) == 2)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v28 = 0;
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

          v14 |= (v28 & 0x7F) << v12;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___AWDWiFiNWActivityPowerStats__kRadioPhyReportTxDur;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityPowerStats__kRadioPhyReportTxDur;
LABEL_41:
        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v14;
        }

LABEL_44:
        *(a1 + *v19) = v18;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v24 = [a2 position];
      if (v24 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v20 = 0;
    v21 = 0;
    v14 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      v27 = 0;
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

      v14 |= (v27 & 0x7F) << v20;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___AWDWiFiNWActivityPowerStats__kRadioPhyReportRxDur;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDWiFiNWActivityPowerStats__kRadioPhyReportRxDur;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityRateAndAggregationReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
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
        LOBYTE(v70) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v70 & 0x7F) << v4;
        if ((v70 & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        v9 = v5++ >= 9;
        if (v9)
        {
          v10 = 0;
          goto LABEL_15;
        }
      }

      v10 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v11 = v10 & 7;
      if (v11 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          if (v11 != 2)
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            while (1)
            {
              LOBYTE(v70) = 0;
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

              v56 |= (v70 & 0x7F) << v54;
              if ((v70 & 0x80) == 0)
              {
                goto LABEL_146;
              }

              v54 += 7;
              v9 = v55++ >= 9;
              if (v9)
              {
                goto LABEL_147;
              }
            }
          }

          v70 = 0;
          v71 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v38 = [a2 position];
            if (v38 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v39 = 0;
            v40 = 0;
            v41 = 0;
            while (1)
            {
              v72 = 0;
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

              v41 |= (v72 & 0x7F) << v39;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v9 = v40++ >= 9;
              if (v9)
              {
                goto LABEL_97;
              }
            }

            [a2 hasError];
LABEL_97:
            PBRepeatedUInt64Add();
          }

LABEL_98:
          PBReaderRecallMark();
          goto LABEL_148;
        }

        if (v12 == 2)
        {
          if (v11 != 2)
          {
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              LOBYTE(v70) = 0;
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

              v66 |= (v70 & 0x7F) << v64;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v9 = v65++ >= 9;
              if (v9)
              {
                goto LABEL_147;
              }
            }

LABEL_146:
            [a2 hasError];
LABEL_147:
            PBRepeatedUInt64Add();
            goto LABEL_148;
          }

          v70 = 0;
          v71 = 0;
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
              goto LABEL_98;
            }

            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              v72 = 0;
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

              v23 |= (v72 & 0x7F) << v21;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v9 = v22++ >= 9;
              if (v9)
              {
                goto LABEL_52;
              }
            }

            [a2 hasError];
LABEL_52:
            PBRepeatedUInt64Add();
          }
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            if (v11 != 2)
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              while (1)
              {
                LOBYTE(v70) = 0;
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

                v46 |= (v70 & 0x7F) << v44;
                if ((v70 & 0x80) == 0)
                {
                  goto LABEL_146;
                }

                v44 += 7;
                v9 = v45++ >= 9;
                if (v9)
                {
                  goto LABEL_147;
                }
              }
            }

            v70 = 0;
            v71 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v26 = [a2 position];
              if (v26 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_98;
              }

              v27 = 0;
              v28 = 0;
              v29 = 0;
              while (1)
              {
                v72 = 0;
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

                v29 |= (v72 & 0x7F) << v27;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                v9 = v28++ >= 9;
                if (v9)
                {
                  goto LABEL_67;
                }
              }

              [a2 hasError];
LABEL_67:
              PBRepeatedUInt64Add();
            }

          case 4:
            if (v11 != 2)
            {
              v49 = 0;
              v50 = 0;
              v51 = 0;
              while (1)
              {
                LOBYTE(v70) = 0;
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

                v51 |= (v70 & 0x7F) << v49;
                if ((v70 & 0x80) == 0)
                {
                  goto LABEL_146;
                }

                v49 += 7;
                v9 = v50++ >= 9;
                if (v9)
                {
                  goto LABEL_147;
                }
              }
            }

            v70 = 0;
            v71 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v32 = [a2 position];
              if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_98;
              }

              v33 = 0;
              v34 = 0;
              v35 = 0;
              while (1)
              {
                v72 = 0;
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

                v35 |= (v72 & 0x7F) << v33;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v9 = v34++ >= 9;
                if (v9)
                {
                  goto LABEL_82;
                }
              }

              [a2 hasError];
LABEL_82:
              PBRepeatedUInt64Add();
            }

          case 5:
            if (v11 != 2)
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              while (1)
              {
                LOBYTE(v70) = 0;
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

                v61 |= (v70 & 0x7F) << v59;
                if ((v70 & 0x80) == 0)
                {
                  goto LABEL_146;
                }

                v59 += 7;
                v9 = v60++ >= 9;
                if (v9)
                {
                  goto LABEL_147;
                }
              }
            }

            v70 = 0;
            v71 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v14 = [a2 position];
              if (v14 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_98;
              }

              v15 = 0;
              v16 = 0;
              v17 = 0;
              while (1)
              {
                v72 = 0;
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

                v17 |= (v72 & 0x7F) << v15;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v9 = v16++ >= 9;
                if (v9)
                {
                  goto LABEL_35;
                }
              }

              [a2 hasError];
LABEL_35:
              PBRepeatedUInt64Add();
            }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_148:
      v69 = [a2 position];
    }

    while (v69 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityScanActivityReadFrom(uint64_t a1, void *a2)
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
              *(a1 + 56) |= 0x80u;
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
                  v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__pnoSSIDDur;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__pnoSSIDDur;
              goto LABEL_154;
            case 0xB:
              v61 = 0;
              v62 = 0;
              v15 = 0;
              *(a1 + 56) |= 4u;
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
                  v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__otherCount;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__otherCount;
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
              *(a1 + 56) |= 8u;
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
                  v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__otherDur;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__otherDur;
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
              *(a1 + 56) |= 0x10u;
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
                  v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__pnoBSSIDCount;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__pnoBSSIDCount;
              goto LABEL_154;
            case 8:
              v53 = 0;
              v54 = 0;
              v15 = 0;
              *(a1 + 56) |= 0x20u;
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
                  v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__pnoBSSIDDur;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__pnoBSSIDDur;
              goto LABEL_154;
            case 9:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 56) |= 0x40u;
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
                  v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__pnoSSIDCount;
                  goto LABEL_157;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__pnoSSIDCount;
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
            *(a1 + 56) |= 0x200u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__roamDur;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__roamDur;
            goto LABEL_154;
          case 5:
            v57 = 0;
            v58 = 0;
            v15 = 0;
            *(a1 + 56) |= 1u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__assocCount;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__assocCount;
            goto LABEL_154;
          case 6:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 56) |= 2u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__assocDur;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__assocDur;
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
            *(a1 + 56) |= 0x400u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__userCount;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__userCount;
            goto LABEL_154;
          case 2:
            v49 = 0;
            v50 = 0;
            v15 = 0;
            *(a1 + 56) |= 0x800u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__userDur;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__userDur;
            goto LABEL_154;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 56) |= 0x100u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__roamCount;
                goto LABEL_157;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityScanActivity__roamCount;
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

uint64_t AWDWiFiNWActivityStateBinReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDWiFiNWActivityTrafficReadFrom(uint64_t a1, void *a2)
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
            v23 = 0;
            goto LABEL_46;
          }
        }

        v23 = [a2 hasError] ? 0 : v20;
LABEL_46:
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

uint64_t AWDWiFiNWActivityTxCompletionsReadFrom(uint64_t a1, void *a2)
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__success;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__success;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__expired;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__expired;
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
              *(a1 + 52) |= 0x40u;
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
                  v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__nobuf;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__nobuf;
              goto LABEL_143;
            case 4:
              v37 = 0;
              v38 = 0;
              v15 = 0;
              *(a1 + 52) |= 0x20u;
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
                  v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__noack;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__noack;
              goto LABEL_143;
            case 5:
              v21 = 0;
              v22 = 0;
              v15 = 0;
              *(a1 + 52) |= 0x400u;
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
                  v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__txfailure;
                  goto LABEL_146;
                }
              }

              v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__txfailure;
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
            *(a1 + 52) |= 1u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__chipmodeerror;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__chipmodeerror;
            goto LABEL_143;
          case 0xA:
            v45 = 0;
            v46 = 0;
            v15 = 0;
            *(a1 + 52) |= 0x80u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__noremotepeer;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__noremotepeer;
            goto LABEL_143;
          case 0xB:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 52) |= 4u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__internalerror;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__internalerror;
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
            *(a1 + 52) |= 0x100u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__noresources;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__noresources;
            goto LABEL_143;
          case 7:
            v41 = 0;
            v42 = 0;
            v15 = 0;
            *(a1 + 52) |= 8u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__ioerror;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__ioerror;
            goto LABEL_143;
          case 8:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 52) |= 0x10u;
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
                v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__mbfree;
                goto LABEL_146;
              }
            }

            v20 = &OBJC_IVAR___AWDWiFiNWActivityTxCompletions__mbfree;
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

uint64_t AWDWiFiOtaSystemInfoReadFrom(uint64_t a1, void *a2)
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
        v48 = 0;
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

        v7 |= (v48 & 0x7F) << v5;
        if ((v48 & 0x80) == 0)
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
          *(a1 + 136) |= 1u;
          while (1)
          {
            v49 = 0;
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

            v14 |= (v49 & 0x7F) << v12;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_76:
              *(a1 + 8) = v17;
              goto LABEL_62;
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

          goto LABEL_76;
        case 2u:
          Data = PBReaderReadData();

          v25 = Data;
          v26 = 16;
          goto LABEL_61;
        case 3u:
          String = PBReaderReadString();

          v25 = String;
          v26 = 56;
          goto LABEL_61;
        case 4u:
          v37 = PBReaderReadString();

          v25 = v37;
          v26 = 24;
          goto LABEL_61;
        case 5u:
          v28 = PBReaderReadString();

          v25 = v28;
          v26 = 128;
          goto LABEL_61;
        case 6u:
          v41 = PBReaderReadString();

          v25 = v41;
          v26 = 88;
          goto LABEL_61;
        case 7u:
          v43 = PBReaderReadString();

          v25 = v43;
          v26 = 96;
          goto LABEL_61;
        case 8u:
          v38 = PBReaderReadString();

          v25 = v38;
          v26 = 104;
          goto LABEL_61;
        case 9u:
          v45 = PBReaderReadString();

          v25 = v45;
          v26 = 112;
          goto LABEL_61;
        case 0xAu:
          v30 = PBReaderReadString();

          v25 = v30;
          v26 = 120;
          goto LABEL_61;
        case 0xBu:
          v44 = PBReaderReadString();

          v25 = v44;
          v26 = 80;
          goto LABEL_61;
        case 0xCu:
          v27 = PBReaderReadString();

          v25 = v27;
          v26 = 72;
          goto LABEL_61;
        case 0xDu:
          v29 = PBReaderReadString();

          v25 = v29;
          v26 = 64;
          goto LABEL_61;
        case 0xEu:
          v42 = PBReaderReadString();

          v25 = v42;
          v26 = 40;
          goto LABEL_61;
        case 0xFu:
          v24 = PBReaderReadString();

          v25 = v24;
          v26 = 48;
LABEL_61:
          *(a1 + v26) = v25;
          goto LABEL_62;
        case 0x10u:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 136) |= 2u;
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

            v34 |= (v51 & 0x7F) << v32;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_71;
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

LABEL_71:
          v47 = 32;
          goto LABEL_72;
        case 0x11u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 136) |= 4u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_62;
      }

      while (1)
      {
        v50 = 0;
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

        v20 |= (v50 & 0x7F) << v18;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v10 = v19++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_67;
        }
      }

      v23 = [a2 hasError] ? 0 : v20;
LABEL_67:
      v47 = 36;
LABEL_72:
      *(a1 + v47) = v23;
LABEL_62:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiP2PAirplayMetricsReadFrom(_DWORD *a1, void *a2)
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
      LOBYTE(v176[0]) = 0;
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

      v8 |= (v176[0] & 0x7F) << v6;
      if ((v176[0] & 0x80) == 0)
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
        a1[40] |= 2u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v15 |= (v176[0] & 0x7F) << v13;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_358:
            v174 = 4;
            goto LABEL_387;
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

        goto LABEL_358;
      case 2u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        a1[40] |= 0x800000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v83 |= (v176[0] & 0x7F) << v81;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v11 = v82++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_362;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v83;
        }

LABEL_362:
        v173 = 36;
        goto LABEL_421;
      case 3u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        a1[40] |= 0x100000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v63 |= (v176[0] & 0x7F) << v61;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_342;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v63;
        }

LABEL_342:
        v173 = 33;
        goto LABEL_421;
      case 4u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        a1[40] |= 0x10u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v73 |= (v176[0] & 0x7F) << v71;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v11 = v72++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_350;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v73;
        }

LABEL_350:
        v173 = 15;
        goto LABEL_421;
      case 5u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        a1[40] |= 0x200000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v48 |= (v176[0] & 0x7F) << v46;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_330;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v48;
        }

LABEL_330:
        v173 = 34;
        goto LABEL_421;
      case 6u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        a1[40] |= 4u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v104 |= (v176[0] & 0x7F) << v102;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v11 = v103++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_376;
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

LABEL_376:
        v174 = 6;
        goto LABEL_387;
      case 7u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        a1[40] |= 1u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v119 |= (v176[0] & 0x7F) << v117;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v11 = v118++ >= 9;
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
          v18 = v119;
        }

LABEL_386:
        v174 = 2;
LABEL_387:
        *&a1[v174] = v18;
        continue;
      case 8u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        a1[40] |= 0x400000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v78 |= (v176[0] & 0x7F) << v76;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_354;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v78;
        }

LABEL_354:
        v173 = 35;
        goto LABEL_421;
      case 9u:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        a1[40] |= 8u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v134 |= (v176[0] & 0x7F) << v132;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v11 = v133++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_397;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v134;
        }

LABEL_397:
        v173 = 14;
        goto LABEL_421;
      case 0xAu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        a1[40] |= 0x1000000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v58 |= (v176[0] & 0x7F) << v56;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_338;
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

LABEL_338:
        v173 = 37;
        goto LABEL_421;
      case 0xBu:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        a1[40] |= 0x8000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v129 |= (v176[0] & 0x7F) << v127;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v11 = v128++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_393;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v129;
        }

LABEL_393:
        v173 = 28;
        goto LABEL_421;
      case 0xCu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        a1[40] |= 0x80u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v43 |= (v176[0] & 0x7F) << v41;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v43;
        }

LABEL_326:
        v173 = 18;
        goto LABEL_421;
      case 0xDu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        a1[40] |= 0x80000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v53 |= (v176[0] & 0x7F) << v51;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_334;
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

LABEL_334:
        v173 = 32;
        goto LABEL_421;
      case 0xEu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        a1[40] |= 0x100u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v114 |= (v176[0] & 0x7F) << v112;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_382;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v114;
        }

LABEL_382:
        v173 = 19;
        goto LABEL_421;
      case 0xFu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        a1[40] |= 0x800u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v33 |= (v176[0] & 0x7F) << v31;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_318;
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

LABEL_318:
        v173 = 24;
        goto LABEL_421;
      case 0x10u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        a1[40] |= 0x10000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v68 |= (v176[0] & 0x7F) << v66;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v11 = v67++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_346;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v68;
        }

LABEL_346:
        v173 = 29;
        goto LABEL_421;
      case 0x11u:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        a1[40] |= 0x200u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v28 |= (v176[0] & 0x7F) << v26;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_314;
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

LABEL_314:
        v173 = 20;
        goto LABEL_421;
      case 0x12u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        a1[40] |= 0x40000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v93 |= (v176[0] & 0x7F) << v91;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_370;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v93;
        }

LABEL_370:
        v173 = 31;
        goto LABEL_421;
      case 0x13u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        a1[40] |= 0x4000000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v124 |= (v176[0] & 0x7F) << v122;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
          if (v11)
          {
            LOBYTE(v101) = 0;
            goto LABEL_389;
          }
        }

        v101 = (v124 != 0) & ~[a2 hasError];
LABEL_389:
        v175 = 153;
        goto LABEL_412;
      case 0x14u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        a1[40] |= 0x2000000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v154 |= (v176[0] & 0x7F) << v152;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v11 = v153++ >= 9;
          if (v11)
          {
            LOBYTE(v101) = 0;
            goto LABEL_409;
          }
        }

        v101 = (v154 != 0) & ~[a2 hasError];
LABEL_409:
        v175 = 152;
        goto LABEL_412;
      case 0x15u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        a1[40] |= 0x8000000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v98 |= (v176[0] & 0x7F) << v96;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v11 = v97++ >= 9;
          if (v11)
          {
            LOBYTE(v101) = 0;
            goto LABEL_372;
          }
        }

        v101 = (v98 != 0) & ~[a2 hasError];
LABEL_372:
        v175 = 154;
        goto LABEL_412;
      case 0x16u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        a1[40] |= 0x40000000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v109 |= (v176[0] & 0x7F) << v107;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
          if (v11)
          {
            LOBYTE(v101) = 0;
            goto LABEL_378;
          }
        }

        v101 = (v109 != 0) & ~[a2 hasError];
LABEL_378:
        v175 = 157;
        goto LABEL_412;
      case 0x17u:
        v147 = 0;
        v148 = 0;
        v149 = 0;
        a1[40] |= 0x20000000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v149 |= (v176[0] & 0x7F) << v147;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v147 += 7;
          v11 = v148++ >= 9;
          if (v11)
          {
            LOBYTE(v101) = 0;
            goto LABEL_407;
          }
        }

        v101 = (v149 != 0) & ~[a2 hasError];
LABEL_407:
        v175 = 156;
        goto LABEL_412;
      case 0x18u:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        a1[40] |= 0x10000000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v159 |= (v176[0] & 0x7F) << v157;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v11 = v158++ >= 9;
          if (v11)
          {
            LOBYTE(v101) = 0;
            goto LABEL_411;
          }
        }

        v101 = (v159 != 0) & ~[a2 hasError];
LABEL_411:
        v175 = 155;
LABEL_412:
        *(a1 + v175) = v101;
        continue;
      case 0x19u:
        v19 = objc_alloc_init(AWDWifiP2PAirplayHistogramBin);
        [a1 addPeerRSSI:v19];
        goto LABEL_302;
      case 0x1Au:
        v19 = objc_alloc_init(AWDWifiP2PAirplayHistogramBin);
        [a1 addAvgCCASocialChannel:v19];
        goto LABEL_302;
      case 0x1Bu:
        v19 = objc_alloc_init(AWDWifiP2PAirplayHistogramBin);
        [a1 addAvgCCASelfInfraChannel:v19];
        goto LABEL_302;
      case 0x1Cu:
        v19 = objc_alloc_init(AWDWifiP2PAirplayHistogramBin);
        [a1 addAvgCCAPeerInfraChannel:v19];
LABEL_302:

        v176[0] = 0;
        v176[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWifiP2PAirplayHistogramBinReadFrom(v19, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
        continue;
      case 0x1Du:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        a1[40] |= 0x20000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v164 |= (v176[0] & 0x7F) << v162;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v11 = v163++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_416;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v164;
        }

LABEL_416:
        v173 = 30;
        goto LABEL_421;
      case 0x1Eu:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        a1[40] |= 0x400u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v169 |= (v176[0] & 0x7F) << v167;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v11 = v168++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_420;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v169;
        }

LABEL_420:
        v173 = 21;
        goto LABEL_421;
      case 0x1Fu:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        a1[40] |= 0x1000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v139 |= (v176[0] & 0x7F) << v137;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v11 = v138++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_401;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v139;
        }

LABEL_401:
        v173 = 25;
        goto LABEL_421;
      case 0x20u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        a1[40] |= 0x4000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v88 |= (v176[0] & 0x7F) << v86;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_366;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v88;
        }

LABEL_366:
        v173 = 27;
        goto LABEL_421;
      case 0x21u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        a1[40] |= 0x2000u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v144 |= (v176[0] & 0x7F) << v142;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v11 = v143++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_405;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v144;
        }

LABEL_405:
        v173 = 26;
        goto LABEL_421;
      case 0x22u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        a1[40] |= 0x20u;
        while (1)
        {
          LOBYTE(v176[0]) = 0;
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

          v38 |= (v176[0] & 0x7F) << v36;
          if ((v176[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_322;
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

LABEL_322:
        v173 = 16;
        goto LABEL_421;
      case 0x23u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        a1[40] |= 0x40u;
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
      LOBYTE(v176[0]) = 0;
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

      v22 |= (v176[0] & 0x7F) << v20;
      if ((v176[0] & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v11 = v21++ >= 9;
      if (v11)
      {
        v25 = 0;
        goto LABEL_310;
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

LABEL_310:
    v173 = 17;
LABEL_421:
    a1[v173] = v25;
  }

  return [a2 hasError] ^ 1;
}