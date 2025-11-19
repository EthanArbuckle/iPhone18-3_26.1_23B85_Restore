uint64_t AWDNWDeviceReportReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v105[0]) = 0;
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

        v7 |= (v105[0] & 0x7F) << v5;
        if ((v105[0] & 0x80) == 0)
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
      if ((v11 >> 3) > 10)
      {
        if (v12 <= 100)
        {
          if (v12 > 12)
          {
            if (v12 == 13)
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              *(a1 + 68) |= 0x400u;
              while (1)
              {
                LOBYTE(v105[0]) = 0;
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

                v69 |= (v105[0] & 0x7F) << v67;
                if ((v105[0] & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v10 = v68++ >= 9;
                if (v10)
                {
                  LOBYTE(v18) = 0;
                  goto LABEL_209;
                }
              }

              v18 = (v69 != 0) & ~[a2 hasError];
LABEL_209:
              v103 = 60;
              goto LABEL_244;
            }

            if (v12 == 100)
            {
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 68) |= 0x8000u;
              while (1)
              {
                LOBYTE(v105[0]) = 0;
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

                v39 |= (v105[0] & 0x7F) << v37;
                if ((v105[0] & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v10 = v38++ >= 9;
                if (v10)
                {
                  LOBYTE(v18) = 0;
                  goto LABEL_221;
                }
              }

              v18 = (v39 != 0) & ~[a2 hasError];
LABEL_221:
              v103 = 65;
              goto LABEL_244;
            }
          }

          else
          {
            if (v12 == 11)
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
              *(a1 + 68) |= 0x2000u;
              while (1)
              {
                LOBYTE(v105[0]) = 0;
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

                v59 |= (v105[0] & 0x7F) << v57;
                if ((v105[0] & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                v10 = v58++ >= 9;
                if (v10)
                {
                  LOBYTE(v18) = 0;
                  goto LABEL_203;
                }
              }

              v18 = (v59 != 0) & ~[a2 hasError];
LABEL_203:
              v103 = 63;
              goto LABEL_244;
            }

            if (v12 == 12)
            {
              v27 = 0;
              v28 = 0;
              v29 = 0;
              *(a1 + 68) |= 0x800u;
              while (1)
              {
                LOBYTE(v105[0]) = 0;
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

                v29 |= (v105[0] & 0x7F) << v27;
                if ((v105[0] & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                v10 = v28++ >= 9;
                if (v10)
                {
                  LOBYTE(v18) = 0;
                  goto LABEL_215;
                }
              }

              v18 = (v29 != 0) & ~[a2 hasError];
LABEL_215:
              v103 = 61;
              goto LABEL_244;
            }
          }
        }

        else if (v12 <= 199)
        {
          if (v12 == 101)
          {
            v97 = 0;
            v98 = 0;
            v99 = 0;
            *(a1 + 68) |= 0x10000u;
            while (1)
            {
              LOBYTE(v105[0]) = 0;
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

              v99 |= (v105[0] & 0x7F) << v97;
              if ((v105[0] & 0x80) == 0)
              {
                break;
              }

              v97 += 7;
              v10 = v98++ >= 9;
              if (v10)
              {
                LOBYTE(v18) = 0;
                goto LABEL_243;
              }
            }

            v18 = (v99 != 0) & ~[a2 hasError];
LABEL_243:
            v103 = 66;
            goto LABEL_244;
          }

          if (v12 == 150)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 68) |= 0x100u;
            while (1)
            {
              LOBYTE(v105[0]) = 0;
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

              v49 |= (v105[0] & 0x7F) << v47;
              if ((v105[0] & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v10 = v48++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_252;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v49;
            }

LABEL_252:
            v102 = 52;
            goto LABEL_253;
          }
        }

        else
        {
          switch(v12)
          {
            case 0xC8:
              v87 = 0;
              v88 = 0;
              v89 = 0;
              *(a1 + 68) |= 0x200u;
              while (1)
              {
                LOBYTE(v105[0]) = 0;
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

                v89 |= (v105[0] & 0x7F) << v87;
                if ((v105[0] & 0x80) == 0)
                {
                  break;
                }

                v87 += 7;
                v10 = v88++ >= 9;
                if (v10)
                {
                  v26 = 0;
                  goto LABEL_237;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v89;
              }

LABEL_237:
              v102 = 56;
              goto LABEL_253;
            case 0xFA:
              v77 = 0;
              v78 = 0;
              v79 = 0;
              *(a1 + 68) |= 0x80u;
              while (1)
              {
                LOBYTE(v105[0]) = 0;
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

                v79 |= (v105[0] & 0x7F) << v77;
                if ((v105[0] & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                v10 = v78++ >= 9;
                if (v10)
                {
                  v26 = 0;
                  goto LABEL_227;
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

LABEL_227:
              v102 = 48;
              goto LABEL_253;
            case 0x12C:
              v19 = objc_alloc_init(AWDNWAccumulator);

              *(a1 + 16) = v19;
              v105[0] = 0;
              v105[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDNWAccumulatorReadFrom(&v19->super.super.isa, a2);
              if (!result)
              {
                return result;
              }

              PBReaderRecallMark();
              goto LABEL_254;
          }
        }
      }

      else if (v12 <= 5)
      {
        if (v12 > 3)
        {
          if (v12 == 4)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + 68) |= 8u;
            while (1)
            {
              LOBYTE(v105[0]) = 0;
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

              v64 |= (v105[0] & 0x7F) << v62;
              if ((v105[0] & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v10 = v63++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_207;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v64;
            }

LABEL_207:
            v102 = 32;
          }

          else
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              LOBYTE(v105[0]) = 0;
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

              v34 |= (v105[0] & 0x7F) << v32;
              if ((v105[0] & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_219;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v34;
            }

LABEL_219:
            v102 = 28;
          }

          goto LABEL_253;
        }

        if (v12 == 2)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            LOBYTE(v105[0]) = 0;
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

            v54 |= (v105[0] & 0x7F) << v52;
            if ((v105[0] & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v10 = v53++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_201;
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

LABEL_201:
          v102 = 36;
          goto LABEL_253;
        }

        if (v12 == 3)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v105[0]) = 0;
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

            v23 |= (v105[0] & 0x7F) << v21;
            if ((v105[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v10 = v22++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_213;
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

LABEL_213:
          v102 = 24;
          goto LABEL_253;
        }
      }

      else
      {
        if (v12 <= 7)
        {
          if (v12 == 6)
          {
            v92 = 0;
            v93 = 0;
            v94 = 0;
            *(a1 + 68) |= 1u;
            while (1)
            {
              LOBYTE(v105[0]) = 0;
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

              v94 |= (v105[0] & 0x7F) << v92;
              if ((v105[0] & 0x80) == 0)
              {
                break;
              }

              v92 += 7;
              v10 = v93++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_241;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v94;
            }

LABEL_241:
            v102 = 8;
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 68) |= 0x40u;
            while (1)
            {
              LOBYTE(v105[0]) = 0;
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

              v44 |= (v105[0] & 0x7F) << v42;
              if ((v105[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v10 = v43++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_248;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v44;
            }

LABEL_248:
            v102 = 44;
          }

          goto LABEL_253;
        }

        switch(v12)
        {
          case 8:
            v82 = 0;
            v83 = 0;
            v84 = 0;
            *(a1 + 68) |= 0x20u;
            while (1)
            {
              LOBYTE(v105[0]) = 0;
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

              v84 |= (v105[0] & 0x7F) << v82;
              if ((v105[0] & 0x80) == 0)
              {
                break;
              }

              v82 += 7;
              v10 = v83++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_233;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v84;
            }

LABEL_233:
            v102 = 40;
LABEL_253:
            *(a1 + v102) = v26;
            goto LABEL_254;
          case 9:
            v72 = 0;
            v73 = 0;
            v74 = 0;
            *(a1 + 68) |= 0x1000u;
            while (1)
            {
              LOBYTE(v105[0]) = 0;
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

              v74 |= (v105[0] & 0x7F) << v72;
              if ((v105[0] & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              v10 = v73++ >= 9;
              if (v10)
              {
                LOBYTE(v18) = 0;
                goto LABEL_223;
              }
            }

            v18 = (v74 != 0) & ~[a2 hasError];
LABEL_223:
            v103 = 62;
            goto LABEL_244;
          case 0xA:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 68) |= 0x4000u;
            while (1)
            {
              LOBYTE(v105[0]) = 0;
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

              v15 |= (v105[0] & 0x7F) << v13;
              if ((v105[0] & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                LOBYTE(v18) = 0;
                goto LABEL_229;
              }
            }

            v18 = (v15 != 0) & ~[a2 hasError];
LABEL_229:
            v103 = 64;
LABEL_244:
            *(a1 + v103) = v18;
            goto LABEL_254;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_254:
      v104 = [a2 position];
    }

    while (v104 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNWDurationAccumulationReadFrom(id *a1, void *a2)
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
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v13 = objc_alloc_init(AWDNWDurationAccumulationState);
        [a1 addStates:v13];

        v16[0] = 0;
        v16[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDNWDurationAccumulationStateReadFrom(v13, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        String = PBReaderReadString();

        a1[1] = String;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNWDurationAccumulationStateReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDNWL2ReportReadFrom(uint64_t a1, void *a2)
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
        v109 = 0;
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

        v7 |= (v109 & 0x7F) << v5;
        if ((v109 & 0x80) == 0)
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
        case 2u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v109 = 0;
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

            v14 |= (v109 & 0x7F) << v12;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_219:
              v106 = 32;
              goto LABEL_252;
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
        case 3u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 84) |= 0x100u;
          while (1)
          {
            v109 = 0;
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

            v67 |= (v109 & 0x7F) << v65;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v10 = v66++ >= 9;
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
            v17 = v67;
          }

LABEL_223:
          v106 = 48;
          goto LABEL_252;
        case 4u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 84) |= 0x200u;
          while (1)
          {
            v109 = 0;
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

            v46 |= (v109 & 0x7F) << v44;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_206;
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

LABEL_206:
          v106 = 52;
          goto LABEL_252;
        case 5u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 84) |= 0x10000u;
          while (1)
          {
            v109 = 0;
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

            v56 |= (v109 & 0x7F) << v54;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              LOBYTE(v59) = 0;
              goto LABEL_212;
            }
          }

          v59 = (v56 != 0) & ~[a2 hasError];
LABEL_212:
          v107 = 80;
          goto LABEL_215;
        case 6u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 84) |= 0x400u;
          while (1)
          {
            v109 = 0;
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

            v31 |= (v109 & 0x7F) << v29;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
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
            v17 = v31;
          }

LABEL_194:
          v106 = 56;
          goto LABEL_252;
        case 7u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 84) |= 0x2000u;
          while (1)
          {
            v109 = 0;
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

            v77 |= (v109 & 0x7F) << v75;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v10 = v76++ >= 9;
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
            v17 = v77;
          }

LABEL_231:
          v106 = 68;
          goto LABEL_252;
        case 8u:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 84) |= 0x8000u;
          while (1)
          {
            v109 = 0;
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

            v87 |= (v109 & 0x7F) << v85;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v10 = v86++ >= 9;
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
            v17 = v87;
          }

LABEL_239:
          v106 = 76;
          goto LABEL_252;
        case 9u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 84) |= 0x20000u;
          while (1)
          {
            v109 = 0;
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

            v62 |= (v109 & 0x7F) << v60;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v10 = v61++ >= 9;
            if (v10)
            {
              LOBYTE(v59) = 0;
              goto LABEL_214;
            }
          }

          v59 = (v62 != 0) & ~[a2 hasError];
LABEL_214:
          v107 = 81;
LABEL_215:
          *(a1 + v107) = v59;
          goto LABEL_253;
        case 0xAu:
          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 84) |= 0x4000u;
          while (1)
          {
            v109 = 0;
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

            v102 |= (v109 & 0x7F) << v100;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v10 = v101++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_251;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v102;
          }

LABEL_251:
          v106 = 72;
          goto LABEL_252;
        case 0xBu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 84) |= 0x40u;
          while (1)
          {
            v109 = 0;
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

            v41 |= (v109 & 0x7F) << v39;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
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
            v17 = v41;
          }

LABEL_202:
          v106 = 40;
          goto LABEL_252;
        case 0xCu:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 84) |= 0x20u;
          while (1)
          {
            v109 = 0;
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

            v97 |= (v109 & 0x7F) << v95;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v10 = v96++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_247;
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

LABEL_247:
          v106 = 36;
          goto LABEL_252;
        case 0xDu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 84) |= 0x1000u;
          while (1)
          {
            v109 = 0;
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

            v26 |= (v109 & 0x7F) << v24;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_190;
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

LABEL_190:
          v106 = 64;
          goto LABEL_252;
        case 0xEu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 84) |= 0x80u;
          while (1)
          {
            v109 = 0;
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

            v36 |= (v109 & 0x7F) << v34;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
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
            v17 = v36;
          }

LABEL_198:
          v106 = 44;
          goto LABEL_252;
        case 0xFu:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 84) |= 2u;
          while (1)
          {
            v109 = 0;
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

            v82 |= (v109 & 0x7F) << v80;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v10 = v81++ >= 9;
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
            v17 = v82;
          }

LABEL_235:
          v106 = 12;
          goto LABEL_252;
        case 0x10u:
          String = PBReaderReadString();

          *(a1 + 24) = String;
          goto LABEL_253;
        case 0x11u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 84) |= 4u;
          while (1)
          {
            v109 = 0;
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

            v51 |= (v109 & 0x7F) << v49;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v10 = v50++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_210;
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

LABEL_210:
          v106 = 16;
          goto LABEL_252;
        case 0x12u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 84) |= 0x800u;
          while (1)
          {
            v109 = 0;
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

            v20 |= (v109 & 0x7F) << v18;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
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
            v17 = v20;
          }

LABEL_186:
          v106 = 60;
          goto LABEL_252;
        case 0x13u:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            v109 = 0;
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

            v72 |= (v109 & 0x7F) << v70;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v10 = v71++ >= 9;
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
            v17 = v72;
          }

LABEL_227:
          v106 = 20;
          goto LABEL_252;
        case 0x14u:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 84) |= 1u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_253;
      }

      while (1)
      {
        v109 = 0;
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

        v92 |= (v109 & 0x7F) << v90;
        if ((v109 & 0x80) == 0)
        {
          break;
        }

        v90 += 7;
        v10 = v91++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_243;
        }
      }

      v17 = [a2 hasError] ? 0 : v92;
LABEL_243:
      v106 = 8;
LABEL_252:
      *(a1 + v106) = v17;
LABEL_253:
      v108 = [a2 position];
    }

    while (v108 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDDNSDomainStatsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v117) = 0;
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

        v7 |= (v117 & 0x7F) << v5;
        if ((v117 & 0x80) == 0)
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
      if ((v11 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 216) |= 1u;
            while (1)
            {
              LOBYTE(v117) = 0;
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

              v36 |= (v117 & 0x7F) << v34;
              if ((v117 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v10 = v35++ >= 9;
              if (v10)
              {
                v39 = 0;
                goto LABEL_176;
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

LABEL_176:
            v75 = 208;
            goto LABEL_181;
          }

          if (v13 == 2)
          {
            String = PBReaderReadString();

            *(a1 + 200) = String;
            goto LABEL_256;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              if (v12 != 2)
              {
                v96 = 0;
                v97 = 0;
                v98 = 0;
                while (1)
                {
                  LOBYTE(v117) = 0;
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

                  v98 |= (v117 & 0x7F) << v96;
                  if ((v117 & 0x80) == 0)
                  {
                    goto LABEL_254;
                  }

                  v96 += 7;
                  v10 = v97++ >= 9;
                  if (v10)
                  {
                    goto LABEL_255;
                  }
                }
              }

              v117 = 0;
              v118 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v58 = [a2 position];
                if (v58 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v59 = 0;
                v60 = 0;
                v61 = 0;
                while (1)
                {
                  v119 = 0;
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

                  v61 |= (v119 & 0x7F) << v59;
                  if ((v119 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  v10 = v60++ >= 9;
                  if (v10)
                  {
                    goto LABEL_145;
                  }
                }

                [a2 hasError];
LABEL_145:
                PBRepeatedUInt32Add();
              }

LABEL_170:
              PBReaderRecallMark();
              goto LABEL_256;
            case 4:
              if (v12 != 2)
              {
                v76 = 0;
                v77 = 0;
                v78 = 0;
                while (1)
                {
                  LOBYTE(v117) = 0;
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

                  v78 |= (v117 & 0x7F) << v76;
                  if ((v117 & 0x80) == 0)
                  {
                    break;
                  }

                  v76 += 7;
                  v10 = v77++ >= 9;
                  if (v10)
                  {
                    goto LABEL_255;
                  }
                }

LABEL_254:
                [a2 hasError];
LABEL_255:
                PBRepeatedUInt32Add();
                goto LABEL_256;
              }

              v117 = 0;
              v118 = 0;
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
                  goto LABEL_170;
                }

                v41 = 0;
                v42 = 0;
                v43 = 0;
                while (1)
                {
                  v119 = 0;
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

                  v43 |= (v119 & 0x7F) << v41;
                  if ((v119 & 0x80) == 0)
                  {
                    break;
                  }

                  v41 += 7;
                  v10 = v42++ >= 9;
                  if (v10)
                  {
                    goto LABEL_100;
                  }
                }

                [a2 hasError];
LABEL_100:
                PBRepeatedUInt32Add();
              }

            case 5:
              if (v12 != 2)
              {
                v91 = 0;
                v92 = 0;
                v93 = 0;
                while (1)
                {
                  LOBYTE(v117) = 0;
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

                  v93 |= (v117 & 0x7F) << v91;
                  if ((v117 & 0x80) == 0)
                  {
                    goto LABEL_254;
                  }

                  v91 += 7;
                  v10 = v92++ >= 9;
                  if (v10)
                  {
                    goto LABEL_255;
                  }
                }
              }

              v117 = 0;
              v118 = 0;
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
                  goto LABEL_170;
                }

                v22 = 0;
                v23 = 0;
                v24 = 0;
                while (1)
                {
                  v119 = 0;
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

                  v24 |= (v119 & 0x7F) << v22;
                  if ((v119 & 0x80) == 0)
                  {
                    break;
                  }

                  v22 += 7;
                  v10 = v23++ >= 9;
                  if (v10)
                  {
                    goto LABEL_55;
                  }
                }

                [a2 hasError];
LABEL_55:
                PBRepeatedUInt32Add();
              }
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            if (v12 != 2)
            {
              v111 = 0;
              v112 = 0;
              v113 = 0;
              while (1)
              {
                LOBYTE(v117) = 0;
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

                v113 |= (v117 & 0x7F) << v111;
                if ((v117 & 0x80) == 0)
                {
                  goto LABEL_254;
                }

                v111 += 7;
                v10 = v112++ >= 9;
                if (v10)
                {
                  goto LABEL_255;
                }
              }
            }

            v117 = 0;
            v118 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v69 = [a2 position];
              if (v69 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_170;
              }

              v70 = 0;
              v71 = 0;
              v72 = 0;
              while (1)
              {
                v119 = 0;
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

                v72 |= (v119 & 0x7F) << v70;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v10 = v71++ >= 9;
                if (v10)
                {
                  goto LABEL_169;
                }
              }

              [a2 hasError];
LABEL_169:
              PBRepeatedUInt32Add();
            }

          case 0xA:
            if (v12 != 2)
            {
              v86 = 0;
              v87 = 0;
              v88 = 0;
              while (1)
              {
                LOBYTE(v117) = 0;
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

                v88 |= (v117 & 0x7F) << v86;
                if ((v117 & 0x80) == 0)
                {
                  goto LABEL_254;
                }

                v86 += 7;
                v10 = v87++ >= 9;
                if (v10)
                {
                  goto LABEL_255;
                }
              }
            }

            v117 = 0;
            v118 = 0;
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
                goto LABEL_170;
              }

              v53 = 0;
              v54 = 0;
              v55 = 0;
              while (1)
              {
                v119 = 0;
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

                v55 |= (v119 & 0x7F) << v53;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v10 = v54++ >= 9;
                if (v10)
                {
                  goto LABEL_130;
                }
              }

              [a2 hasError];
LABEL_130:
              PBRepeatedUInt32Add();
            }

          case 0xB:
            if (v12 != 2)
            {
              v106 = 0;
              v107 = 0;
              v108 = 0;
              while (1)
              {
                LOBYTE(v117) = 0;
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

                v108 |= (v117 & 0x7F) << v106;
                if ((v117 & 0x80) == 0)
                {
                  goto LABEL_254;
                }

                v106 += 7;
                v10 = v107++ >= 9;
                if (v10)
                {
                  goto LABEL_255;
                }
              }
            }

            v117 = 0;
            v118 = 0;
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
                goto LABEL_170;
              }

              v28 = 0;
              v29 = 0;
              v30 = 0;
              while (1)
              {
                v119 = 0;
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

                v30 |= (v119 & 0x7F) << v28;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v10 = v29++ >= 9;
                if (v10)
                {
                  goto LABEL_73;
                }
              }

              [a2 hasError];
LABEL_73:
              PBRepeatedUInt32Add();
            }
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 216) |= 2u;
            while (1)
            {
              LOBYTE(v117) = 0;
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

              v66 |= (v117 & 0x7F) << v64;
              if ((v117 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v10 = v65++ >= 9;
              if (v10)
              {
                v39 = 0;
                goto LABEL_180;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v66;
            }

LABEL_180:
            v75 = 212;
LABEL_181:
            *(a1 + v75) = v39;
            goto LABEL_256;
          case 7:
            if (v12 != 2)
            {
              v81 = 0;
              v82 = 0;
              v83 = 0;
              while (1)
              {
                LOBYTE(v117) = 0;
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

                v83 |= (v117 & 0x7F) << v81;
                if ((v117 & 0x80) == 0)
                {
                  goto LABEL_254;
                }

                v81 += 7;
                v10 = v82++ >= 9;
                if (v10)
                {
                  goto LABEL_255;
                }
              }
            }

            v117 = 0;
            v118 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v46 = [a2 position];
              if (v46 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_170;
              }

              v47 = 0;
              v48 = 0;
              v49 = 0;
              while (1)
              {
                v119 = 0;
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

                v49 |= (v119 & 0x7F) << v47;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                v10 = v48++ >= 9;
                if (v10)
                {
                  goto LABEL_115;
                }
              }

              [a2 hasError];
LABEL_115:
              PBRepeatedUInt32Add();
            }

          case 8:
            if (v12 != 2)
            {
              v101 = 0;
              v102 = 0;
              v103 = 0;
              while (1)
              {
                LOBYTE(v117) = 0;
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

                v103 |= (v117 & 0x7F) << v101;
                if ((v117 & 0x80) == 0)
                {
                  goto LABEL_254;
                }

                v101 += 7;
                v10 = v102++ >= 9;
                if (v10)
                {
                  goto LABEL_255;
                }
              }
            }

            v117 = 0;
            v118 = 0;
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
                goto LABEL_170;
              }

              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                v119 = 0;
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

                v18 |= (v119 & 0x7F) << v16;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v10 = v17++ >= 9;
                if (v10)
                {
                  goto LABEL_36;
                }
              }

              [a2 hasError];
LABEL_36:
              PBRepeatedUInt32Add();
            }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_256:
      v116 = [a2 position];
    }

    while (v116 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMDNSResponderDNSMessageSizeStatsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44) = 0;
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

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v11 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        if (v12 != 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          while (1)
          {
            LOBYTE(v44) = 0;
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

            v35 |= (v44 & 0x7F) << v33;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              goto LABEL_85;
            }
          }

LABEL_84:
          [a2 hasError];
LABEL_85:
          PBRepeatedUInt32Add();
          goto LABEL_86;
        }

        v44 = 0;
        v45 = 0;
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
            break;
          }

          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v46 = 0;
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

            v24 |= (v46 & 0x7F) << v22;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v10 = v23++ >= 9;
            if (v10)
            {
              goto LABEL_43;
            }
          }

          [a2 hasError];
LABEL_43:
          PBRepeatedUInt32Add();
        }

LABEL_61:
        PBReaderRecallMark();
        goto LABEL_86;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          LOBYTE(v44) = 0;
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

          v16 |= (v44 & 0x7F) << v14;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v10 = v15++ >= 9;
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
          v19 = v16;
        }

LABEL_65:
        *(a1 + 56) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_86:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 != 2)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
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

        v40 |= (v44 & 0x7F) << v38;
        if ((v44 & 0x80) == 0)
        {
          goto LABEL_84;
        }

        v38 += 7;
        v10 = v39++ >= 9;
        if (v10)
        {
          goto LABEL_85;
        }
      }
    }

    v44 = 0;
    v45 = 0;
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
        goto LABEL_61;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
      while (1)
      {
        v46 = 0;
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

        v30 |= (v46 & 0x7F) << v28;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v10 = v29++ >= 9;
        if (v10)
        {
          goto LABEL_58;
        }
      }

      [a2 hasError];
LABEL_58:
      PBRepeatedUInt32Add();
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMDNSResponderDNSStatisticsReadFrom(uint64_t a1, void *a2)
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
        v18 = objc_alloc_init(AWDDNSDomainStats);
        [a1 addStats:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDDNSDomainStatsReadFrom(v18, a2);
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

uint64_t AWDMDNSResponderResolveStatsReadFrom(uint64_t a1, void *a2)
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
        v19 = objc_alloc_init(AWDMDNSResponderResolveStatsDNSServer);
        [a1 addServer:v19];

        v23 = 0;
        v24 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDMDNSResponderResolveStatsDNSServerReadFrom(v19, a2);
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

    v21 = objc_alloc_init(AWDMDNSResponderResolveStatsDomain);
    [a1 addDomain:v21];

    v23 = 0;
    v24 = 0;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    result = AWDMDNSResponderResolveStatsDomainReadFrom(&v21->super.super.isa, a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMDNSResponderResolveStatsDNSServerReadFrom(uint64_t a1, void *a2)
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
        v28 = 0;
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

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
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
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v30 = 0;
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

          v22 |= (v30 & 0x7F) << v20;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v10 = v21++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_48;
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

LABEL_48:
        v26 = 20;
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 == 1)
          {
            Data = PBReaderReadData();

            *(a1 + 8) = Data;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_50;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v29 = 0;
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

          v16 |= (v29 & 0x7F) << v14;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v10 = v15++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_44;
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

LABEL_44:
        v26 = 16;
      }

      *(a1 + v26) = v19;
LABEL_50:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMDNSResponderResolveStatsDomainReadFrom(id *a1, void *a2)
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
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v13 = objc_alloc_init(AWDMDNSResponderResolveStatsHostname);
        [a1 addHostname:v13];

        v16[0] = 0;
        v16[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDMDNSResponderResolveStatsHostnameReadFrom(&v13->super.super.isa, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        String = PBReaderReadString();

        a1[2] = String;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMDNSResponderResolveStatsHostnameReadFrom(id *a1, void *a2)
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
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v13 = objc_alloc_init(AWDMDNSResponderResolveStatsResult);
        [a1 addResult:v13];

        v16[0] = 0;
        v16[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDMDNSResponderResolveStatsResultReadFrom(v13, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        String = PBReaderReadString();

        a1[1] = String;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMDNSResponderResolveStatsResultReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 2)
      {
        break;
      }

      if (v12 == 3)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v35 = 0;
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

          v28 |= (v35 & 0x7F) << v26;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v10 = v27++ >= 9;
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
          v18 = v28;
        }

LABEL_63:
        v31 = 24;
LABEL_64:
        *(a1 + v31) = v18;
        goto LABEL_65;
      }

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

      Data = PBReaderReadData();

      *(a1 + 16) = Data;
LABEL_65:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        v34 = 0;
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

        v23 |= (v34 & 0x7F) << v21;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v10 = v22++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v18 = 0;
      }

      else
      {
        v18 = v23;
      }

LABEL_59:
      v31 = 28;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_32;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        v36 = 0;
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

        v15 |= (v36 & 0x7F) << v13;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v10 = v14++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_55;
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

LABEL_55:
      v31 = 8;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMDNSResponderServicesStatsReadFrom(uint64_t a1, void *a2)
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

      if ((v11 >> 3) == 3)
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

uint64_t AWDMMCSChunkingInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v51[0]) = 0;
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

        v7 |= (v51[0] & 0x7F) << v5;
        if ((v51[0] & 0x80) == 0)
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
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 68) |= 0x20u;
            while (1)
            {
              LOBYTE(v51[0]) = 0;
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

              v45 |= (v51[0] & 0x7F) << v43;
              if ((v51[0] & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v10 = v44++ >= 9;
              if (v10)
              {
                LOBYTE(v48) = 0;
                goto LABEL_97;
              }
            }

            v48 = (v45 != 0) & ~[a2 hasError];
LABEL_97:
            *(a1 + 64) = v48;
            goto LABEL_111;
          }

          if (v12 == 8)
          {
            v30 = objc_alloc_init(AWDMMCSError);
            [a1 addChunkingError:v30];

            v51[0] = 0;
            v51[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDMMCSErrorReadFrom(v30, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_111;
          }
        }

        else
        {
          if (v12 == 5)
          {
            String = PBReaderReadString();

            *(a1 + 56) = String;
            goto LABEL_111;
          }

          if (v12 == 6)
          {
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 68) |= 0x10u;
            while (1)
            {
              LOBYTE(v51[0]) = 0;
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

              v21 |= (v51[0] & 0x7F) << v19;
              if ((v51[0] & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
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
              v24 = v21;
            }

LABEL_105:
            *(a1 + 48) = v24;
            goto LABEL_111;
          }
        }
      }

      else if (v12 > 2)
      {
        if (v12 == 3)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
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

            v40 |= (v51[0] & 0x7F) << v38;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_95;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v40;
          }

LABEL_95:
          v49 = 32;
          goto LABEL_110;
        }

        if (v12 == 4)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
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

            v27 |= (v51[0] & 0x7F) << v25;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
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
            v18 = v27;
          }

LABEL_109:
          v49 = 24;
          goto LABEL_110;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
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

            v34 |= (v51[0] & 0x7F) << v32;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
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
            v18 = v34;
          }

LABEL_91:
          v49 = 16;
          goto LABEL_110;
        }

        if (v12 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
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

            v15 |= (v51[0] & 0x7F) << v13;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
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
            v18 = v15;
          }

LABEL_101:
          v49 = 8;
LABEL_110:
          *(a1 + v49) = v18;
          goto LABEL_111;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_111:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMMCSErrorReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v20 = objc_alloc_init(AWDMMCSError);
        [a1 addUnderlyingErrors:v20];

        v23[0] = 0;
        v23[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDMMCSErrorReadFrom(v20, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if (v12 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
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

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v10 = v15++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_38;
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

LABEL_38:
        *(a1 + 8) = v19;
      }

      else if (v12 == 1)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMMCSGetRequestInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v93) = 0;
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
          *(a1 + 156) |= 0x10u;
          while (1)
          {
            LOBYTE(v93) = 0;
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
LABEL_176:
              v89 = 40;
              goto LABEL_195;
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

          goto LABEL_176;
        case 2u:
          String = PBReaderReadString();

          v26 = String;
          v27 = 88;
          goto LABEL_114;
        case 3u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 156) |= 8u;
          while (1)
          {
            LOBYTE(v93) = 0;
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
            v17 = v36;
          }

LABEL_164:
          v89 = 32;
          goto LABEL_195;
        case 4u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 156) |= 1u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v42 |= (v93 & 0x7F) << v40;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v10 = v41++ >= 9;
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
            v17 = v42;
          }

LABEL_168:
          v89 = 8;
          goto LABEL_195;
        case 5u:
          v25 = PBReaderReadString();

          v26 = v25;
          v27 = 72;
          goto LABEL_114;
        case 6u:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 156) |= 0x20u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v64 |= (v93 & 0x7F) << v62;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v10 = v63++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_186;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v64;
          }

LABEL_186:
          v90 = 64;
          goto LABEL_200;
        case 7u:
          v68 = PBReaderReadString();

          v26 = v68;
          v27 = 144;
          goto LABEL_114;
        case 8u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 156) |= 0x400u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v47 |= (v93 & 0x7F) << v45;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v10 = v46++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v47;
          }

LABEL_172:
          v90 = 136;
          goto LABEL_200;
        case 9u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 156) |= 0x40u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v81 |= (v93 & 0x7F) << v79;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v10 = v80++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v81;
          }

LABEL_199:
          v90 = 120;
          goto LABEL_200;
        case 0xAu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 156) |= 0x200u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v30 |= (v93 & 0x7F) << v28;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_160;
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

LABEL_160:
          v90 = 132;
          goto LABEL_200;
        case 0xBu:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 156) |= 2u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v76 |= (v93 & 0x7F) << v74;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v10 = v75++ >= 9;
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
            v17 = v76;
          }

LABEL_194:
          v89 = 16;
          goto LABEL_195;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 156) |= 4u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v22 |= (v93 & 0x7F) << v20;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
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
            v17 = v22;
          }

LABEL_156:
          v89 = 24;
LABEL_195:
          *(a1 + v89) = v17;
          goto LABEL_204;
        case 0xDu:
          v19 = objc_alloc_init(AWDMMCSHttpInfo);
          [a1 addAuthHttpInfos:v19];
          goto LABEL_110;
        case 0xEu:
          v19 = objc_alloc_init(AWDMMCSHttpInfo);
          [a1 addContainerHttpInfos:v19];
          goto LABEL_110;
        case 0xFu:
          v19 = objc_alloc_init(AWDMMCSHttpInfo);
          [a1 addCompleteHttpInfos:v19];
LABEL_110:

          v93 = 0;
          v94 = 0;
          result = PBReaderPlaceMark();
          if (result)
          {
            result = AWDMMCSHttpInfoReadFrom(v19, a2);
            if (result)
            {
              goto LABEL_112;
            }
          }

          return result;
        case 0x10u:
          v18 = objc_alloc_init(AWDMMCSError);
          [a1 addCancelError:v18];
          goto LABEL_59;
        case 0x11u:
          v18 = objc_alloc_init(AWDMMCSError);
          [a1 addError:v18];
LABEL_59:

          v93 = 0;
          v94 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDMMCSErrorReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

LABEL_112:
          PBReaderRecallMark();
          goto LABEL_204;
        case 0x12u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 156) |= 0x1000u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v53 |= (v93 & 0x7F) << v51;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              LOBYTE(v56) = 0;
              goto LABEL_178;
            }
          }

          v56 = (v53 != 0) & ~[a2 hasError];
LABEL_178:
          v91 = 153;
          goto LABEL_203;
        case 0x13u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 156) |= 0x100u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v71 |= (v93 & 0x7F) << v69;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v10 = v70++ >= 9;
            if (v10)
            {
              v33 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v71;
          }

LABEL_190:
          v90 = 128;
          goto LABEL_200;
        case 0x14u:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 156) |= 0x800u;
          while (1)
          {
            LOBYTE(v93) = 0;
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

            v86 |= (v93 & 0x7F) << v84;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v10 = v85++ >= 9;
            if (v10)
            {
              LOBYTE(v56) = 0;
              goto LABEL_202;
            }
          }

          v56 = (v86 != 0) & ~[a2 hasError];
LABEL_202:
          v91 = 152;
LABEL_203:
          *(a1 + v91) = v56;
          goto LABEL_204;
        case 0x15u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 156) |= 0x80u;
          break;
        case 0x16u:
          v67 = PBReaderReadString();

          v26 = v67;
          v27 = 80;
LABEL_114:
          *(a1 + v27) = v26;
          goto LABEL_204;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_204;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v93) = 0;
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

        v59 |= (v93 & 0x7F) << v57;
        if ((v93 & 0x80) == 0)
        {
          break;
        }

        v57 += 7;
        v10 = v58++ >= 9;
        if (v10)
        {
          v33 = 0;
          goto LABEL_182;
        }
      }

      v33 = [a2 hasError] ? 0 : v59;
LABEL_182:
      v90 = 124;
LABEL_200:
      *(a1 + v90) = v33;
LABEL_204:
      v92 = [a2 position];
    }

    while (v92 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMMCSHttpInfoReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v165) = 0;
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

      v8 |= (v165 & 0x7F) << v6;
      if ((v165 & 0x80) == 0)
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
        String = PBReaderReadString();

        v14 = String;
        v15 = 112;
        goto LABEL_202;
      case 2u:
        v83 = PBReaderReadString();

        v14 = v83;
        v15 = 88;
        goto LABEL_202;
      case 3u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 168) |= 0x100u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v69 |= (v165 & 0x7F) << v67;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_308;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v69;
        }

LABEL_308:
        v164 = 104;
        goto LABEL_354;
      case 4u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 168) |= 0x8000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v75 |= (v165 & 0x7F) << v73;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v11 = v74++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_310;
          }
        }

        v21 = (v75 != 0) & ~[a2 hasError];
LABEL_310:
        v162 = 155;
        goto LABEL_357;
      case 5u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 168) |= 8u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v44 |= (v165 & 0x7F) << v42;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_292;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v44;
        }

LABEL_292:
        v163 = 32;
        goto LABEL_331;
      case 6u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 168) |= 4u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v97 |= (v165 & 0x7F) << v95;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_322;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v97;
        }

LABEL_322:
        v163 = 24;
        goto LABEL_331;
      case 7u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 168) |= 1u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v112 |= (v165 & 0x7F) << v110;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v11 = v111++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_330;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v112;
        }

LABEL_330:
        v163 = 8;
        goto LABEL_331;
      case 8u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 168) |= 0x80u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v80 |= (v165 & 0x7F) << v78;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v11 = v79++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v80;
        }

LABEL_314:
        v164 = 72;
        goto LABEL_354;
      case 9u:
        v121 = PBReaderReadString();

        v14 = v121;
        v15 = 56;
        goto LABEL_202;
      case 0xAu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 168) |= 0x40u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v54 |= (v165 & 0x7F) << v52;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v11 = v53++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_298;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v54;
        }

LABEL_298:
        v164 = 48;
        goto LABEL_354;
      case 0xBu:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 168) |= 0x400u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v118 |= (v165 & 0x7F) << v116;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v11 = v117++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_335;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v118;
        }

LABEL_335:
        v164 = 132;
        goto LABEL_354;
      case 0xCu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 168) |= 0x800u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v38 |= (v165 & 0x7F) << v36;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_288;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v38;
        }

LABEL_288:
        v164 = 136;
        goto LABEL_354;
      case 0xDu:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 168) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v49 |= (v165 & 0x7F) << v47;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v11 = v48++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_294;
          }
        }

        v21 = (v49 != 0) & ~[a2 hasError];
LABEL_294:
        v162 = 166;
        goto LABEL_357;
      case 0xEu:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 168) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v107 |= (v165 & 0x7F) << v105;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_326;
          }
        }

        v21 = (v107 != 0) & ~[a2 hasError];
LABEL_326:
        v162 = 165;
        goto LABEL_357;
      case 0xFu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 168) |= 0x4000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v32 |= (v165 & 0x7F) << v30;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_284;
          }
        }

        v21 = (v32 != 0) & ~[a2 hasError];
LABEL_284:
        v162 = 154;
        goto LABEL_357;
      case 0x10u:
        v72 = objc_alloc_init(AWDMMCSTcpInfo);
        [a1 addTcpInfo:v72];

        v165 = 0;
        v166 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
          result = AWDMMCSTcpInfoReadFrom(v72, a2);
          if (result)
          {
            goto LABEL_116;
          }
        }

        return result;
      case 0x11u:
        v28 = objc_alloc_init(AWDMMCSError);
        [a1 addHttpError:v28];

        v165 = 0;
        v166 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDMMCSErrorReadFrom(v28, a2);
        if (!result)
        {
          return result;
        }

LABEL_116:
        PBReaderRecallMark();
        continue;
      case 0x12u:
        v89 = PBReaderReadString();

        v14 = v89;
        v15 = 80;
        goto LABEL_202;
      case 0x13u:
        v115 = PBReaderReadString();

        v14 = v115;
        v15 = 96;
        goto LABEL_202;
      case 0x14u:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 168) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v139 |= (v165 & 0x7F) << v137;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v11 = v138++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_343;
          }
        }

        v21 = (v139 != 0) & ~[a2 hasError];
LABEL_343:
        v162 = 164;
        goto LABEL_357;
      case 0x15u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 168) |= 0x2000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v92 |= (v165 & 0x7F) << v90;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v11 = v91++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_318;
          }
        }

        v21 = (v92 != 0) & ~[a2 hasError];
LABEL_318:
        v162 = 153;
        goto LABEL_357;
      case 0x16u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 168) |= 0x1000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v102 |= (v165 & 0x7F) << v100;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_324;
          }
        }

        v21 = (v102 != 0) & ~[a2 hasError];
LABEL_324:
        v162 = 152;
        goto LABEL_357;
      case 0x17u:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        *(a1 + 168) |= 0x40000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v134 |= (v165 & 0x7F) << v132;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v11 = v133++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_341;
          }
        }

        v21 = (v134 != 0) & ~[a2 hasError];
LABEL_341:
        v162 = 158;
        goto LABEL_357;
      case 0x18u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 168) |= 0x10000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v144 |= (v165 & 0x7F) << v142;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v11 = v143++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_345;
          }
        }

        v21 = (v144 != 0) & ~[a2 hasError];
LABEL_345:
        v162 = 156;
        goto LABEL_357;
      case 0x19u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 168) |= 0x200u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v64 |= (v165 & 0x7F) << v62;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_304;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v64;
        }

LABEL_304:
        v164 = 128;
        goto LABEL_354;
      case 0x1Au:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 168) |= 0x800000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v59 |= (v165 & 0x7F) << v57;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_300;
          }
        }

        v21 = (v59 != 0) & ~[a2 hasError];
LABEL_300:
        v162 = 163;
        goto LABEL_357;
      case 0x1Bu:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        *(a1 + 168) |= 0x20000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v159 |= (v165 & 0x7F) << v157;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v11 = v158++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_356;
          }
        }

        v21 = (v159 != 0) & ~[a2 hasError];
LABEL_356:
        v162 = 157;
        goto LABEL_357;
      case 0x1Cu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 168) |= 0x80000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v18 |= (v165 & 0x7F) << v16;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_278;
          }
        }

        v21 = (v18 != 0) & ~[a2 hasError];
LABEL_278:
        v162 = 159;
        goto LABEL_357;
      case 0x1Du:
        v147 = 0;
        v148 = 0;
        v149 = 0;
        *(a1 + 168) |= 0x10u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v149 |= (v165 & 0x7F) << v147;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v147 += 7;
          v11 = v148++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v149;
        }

LABEL_349:
        v164 = 40;
        goto LABEL_354;
      case 0x1Eu:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 168) |= 0x20u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v154 |= (v165 & 0x7F) << v152;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v11 = v153++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v154;
        }

LABEL_353:
        v164 = 44;
LABEL_354:
        *(a1 + v164) = v41;
        continue;
      case 0x1Fu:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 168) |= 0x400000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v124 |= (v165 & 0x7F) << v122;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v11 = v123++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_337;
          }
        }

        v21 = (v124 != 0) & ~[a2 hasError];
LABEL_337:
        v162 = 162;
        goto LABEL_357;
      case 0x20u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 168) |= 0x200000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v86 |= (v165 & 0x7F) << v84;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v11 = v85++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_316;
          }
        }

        v21 = (v86 != 0) & ~[a2 hasError];
LABEL_316:
        v162 = 161;
        goto LABEL_357;
      case 0x21u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 168) |= 0x100000u;
        while (1)
        {
          LOBYTE(v165) = 0;
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

          v129 |= (v165 & 0x7F) << v127;
          if ((v165 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v11 = v128++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_339;
          }
        }

        v21 = (v129 != 0) & ~[a2 hasError];
LABEL_339:
        v162 = 160;
LABEL_357:
        *(a1 + v162) = v21;
        continue;
      case 0x22u:
        v35 = PBReaderReadString();

        v14 = v35;
        v15 = 120;
LABEL_202:
        *(a1 + v15) = v14;
        continue;
      case 0x23u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 168) |= 2u;
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
      LOBYTE(v165) = 0;
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

      v24 |= (v165 & 0x7F) << v22;
      if ((v165 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v27 = 0;
        goto LABEL_282;
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

LABEL_282:
    v163 = 16;
LABEL_331:
    *(a1 + v163) = v27;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMMCSPutRequestInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v99) = 0;
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

        v7 |= (v99 & 0x7F) << v5;
        if ((v99 & 0x80) == 0)
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
          *(a1 + 164) |= 4u;
          while (1)
          {
            LOBYTE(v99) = 0;
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
LABEL_192:
              v96 = 24;
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

          goto LABEL_192;
        case 2u:
          String = PBReaderReadString();

          v26 = String;
          v27 = 88;
          goto LABEL_162;
        case 3u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 164) |= 2u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v40 |= (v99 & 0x7F) << v38;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_180;
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

LABEL_180:
          v96 = 16;
          goto LABEL_193;
        case 4u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 164) |= 1u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v46 |= (v99 & 0x7F) << v44;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
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
            v17 = v46;
          }

LABEL_184:
          v96 = 8;
LABEL_193:
          *(a1 + v96) = v17;
          goto LABEL_217;
        case 5u:
          v25 = PBReaderReadString();

          v26 = v25;
          v27 = 56;
          goto LABEL_162;
        case 6u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 164) |= 8u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v63 |= (v99 & 0x7F) << v61;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
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
            v24 = v63;
          }

LABEL_201:
          v95 = 48;
          goto LABEL_216;
        case 7u:
          v73 = PBReaderReadString();

          v26 = v73;
          v27 = 152;
          goto LABEL_162;
        case 8u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 164) |= 0x800u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v51 |= (v99 & 0x7F) << v49;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v10 = v50++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_188;
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

LABEL_188:
          v95 = 144;
          goto LABEL_216;
        case 9u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 164) |= 0x20u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v81 |= (v99 & 0x7F) << v79;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v10 = v80++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_211;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v81;
          }

LABEL_211:
          v95 = 120;
          goto LABEL_216;
        case 0xAu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 164) |= 0x100u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v35 |= (v99 & 0x7F) << v33;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_176;
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

LABEL_176:
          v95 = 132;
          goto LABEL_216;
        case 0xBu:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 164) |= 0x400u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v76 |= (v99 & 0x7F) << v74;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v10 = v75++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_207;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v76;
          }

LABEL_207:
          v95 = 140;
          goto LABEL_216;
        case 0xCu:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 164) |= 0x200u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v21 |= (v99 & 0x7F) << v19;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_168;
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

LABEL_168:
          v95 = 136;
          goto LABEL_216;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 164) |= 0x10u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v30 |= (v99 & 0x7F) << v28;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_172;
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

LABEL_172:
          v95 = 72;
          goto LABEL_216;
        case 0xEu:
          v72 = objc_alloc_init(AWDMMCSChunkingInfo);
          [a1 addChunkingInfos:v72];

          v99 = 0;
          v100 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDMMCSChunkingInfoReadFrom(v72, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_124;
        case 0xFu:
          v18 = objc_alloc_init(AWDMMCSHttpInfo);
          [a1 addAuthHttpInfos:v18];
          goto LABEL_67;
        case 0x10u:
          v18 = objc_alloc_init(AWDMMCSHttpInfo);
          [a1 addContainerHttpInfos:v18];
          goto LABEL_67;
        case 0x11u:
          v18 = objc_alloc_init(AWDMMCSHttpInfo);
          [a1 addCompleteHttpInfos:v18];
LABEL_67:

          v99 = 0;
          v100 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDMMCSHttpInfoReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_124;
        case 0x12u:
          v55 = objc_alloc_init(AWDMMCSError);
          [a1 addCancelError:v55];
          goto LABEL_122;
        case 0x13u:
          v55 = objc_alloc_init(AWDMMCSError);
          [a1 addError:v55];
LABEL_122:

          v99 = 0;
          v100 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDMMCSErrorReadFrom(v55, a2);
          if (!result)
          {
            return result;
          }

LABEL_124:
          PBReaderRecallMark();
          goto LABEL_217;
        case 0x14u:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          *(a1 + 164) |= 0x2000u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v91 |= (v99 & 0x7F) << v89;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v10 = v90++ >= 9;
            if (v10)
            {
              LOBYTE(v71) = 0;
              goto LABEL_220;
            }
          }

          v71 = (v91 != 0) & ~[a2 hasError];
LABEL_220:
          v97 = 161;
          goto LABEL_221;
        case 0x15u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 164) |= 0x80u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v58 |= (v99 & 0x7F) << v56;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
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
            v24 = v58;
          }

LABEL_197:
          v95 = 128;
          goto LABEL_216;
        case 0x16u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 164) |= 0x1000u;
          while (1)
          {
            LOBYTE(v99) = 0;
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

            v68 |= (v99 & 0x7F) << v66;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              LOBYTE(v71) = 0;
              goto LABEL_203;
            }
          }

          v71 = (v68 != 0) & ~[a2 hasError];
LABEL_203:
          v97 = 160;
LABEL_221:
          *(a1 + v97) = v71;
          goto LABEL_217;
        case 0x17u:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 164) |= 0x40u;
          break;
        case 0x18u:
          v94 = PBReaderReadString();

          v26 = v94;
          v27 = 80;
LABEL_162:
          *(a1 + v27) = v26;
          goto LABEL_217;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_217;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v99) = 0;
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

        v86 |= (v99 & 0x7F) << v84;
        if ((v99 & 0x80) == 0)
        {
          break;
        }

        v84 += 7;
        v10 = v85++ >= 9;
        if (v10)
        {
          v24 = 0;
          goto LABEL_215;
        }
      }

      v24 = [a2 hasError] ? 0 : v86;
LABEL_215:
      v95 = 124;
LABEL_216:
      *(a1 + v95) = v24;
LABEL_217:
      v98 = [a2 position];
    }

    while (v98 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMMCSTcpInfoReadFrom(uint64_t a1, void *a2)
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
      v218 = 0;
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

      v8 |= (v218 & 0x7F) << v6;
      if ((v218 & 0x80) == 0)
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
        *(a1 + 236) |= 0x1000000000uLL;
        while (1)
        {
          v218 = 0;
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

          v15 |= (v218 & 0x7F) << v13;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_456:
            v217 = 220;
            goto LABEL_533;
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

        goto LABEL_456;
      case 2u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 236) |= 0x80000uLL;
        while (1)
        {
          v218 = 0;
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

          v112 |= (v218 & 0x7F) << v110;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v11 = v111++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_460;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v112;
        }

LABEL_460:
        v217 = 152;
        goto LABEL_533;
      case 3u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 236) |= 0x400000000uLL;
        while (1)
        {
          v218 = 0;
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

          v92 |= (v218 & 0x7F) << v90;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v11 = v91++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_440;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v92;
        }

LABEL_440:
        v217 = 212;
        goto LABEL_533;
      case 4u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 236) |= 0x800000uLL;
        while (1)
        {
          v218 = 0;
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

          v102 |= (v218 & 0x7F) << v100;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_448;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v102;
        }

LABEL_448:
        v217 = 168;
        goto LABEL_533;
      case 5u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 236) |= 0x20000uLL;
        while (1)
        {
          v218 = 0;
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

          v67 |= (v218 & 0x7F) << v65;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_420;
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

LABEL_420:
        v217 = 144;
        goto LABEL_533;
      case 6u:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 236) |= 0x1000000uLL;
        while (1)
        {
          v218 = 0;
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

          v132 |= (v218 & 0x7F) << v130;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v11 = v131++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_476;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v132;
        }

LABEL_476:
        v217 = 172;
        goto LABEL_533;
      case 7u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 236) |= 0x20000000uLL;
        while (1)
        {
          v218 = 0;
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

          v147 |= (v218 & 0x7F) << v145;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v11 = v146++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_488;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v147;
        }

LABEL_488:
        v217 = 192;
        goto LABEL_533;
      case 8u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 236) |= 0x100000uLL;
        while (1)
        {
          v218 = 0;
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

          v107 |= (v218 & 0x7F) << v105;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_452;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v107;
        }

LABEL_452:
        v217 = 156;
        goto LABEL_533;
      case 9u:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 236) |= 0x4000000uLL;
        while (1)
        {
          v218 = 0;
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

          v162 |= (v218 & 0x7F) << v160;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v11 = v161++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_500;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v162;
        }

LABEL_500:
        v217 = 180;
        goto LABEL_533;
      case 0xAu:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 236) |= 0x800000000uLL;
        while (1)
        {
          v218 = 0;
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

          v77 |= (v218 & 0x7F) << v75;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_428;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v77;
        }

LABEL_428:
        v217 = 216;
        goto LABEL_533;
      case 0xBu:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 236) |= 0x8000000uLL;
        while (1)
        {
          v218 = 0;
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

          v157 |= (v218 & 0x7F) << v155;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v11 = v156++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_496;
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

LABEL_496:
        v217 = 184;
        goto LABEL_533;
      case 0xCu:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 236) |= 0x2000000uLL;
        while (1)
        {
          v218 = 0;
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

          v62 |= (v218 & 0x7F) << v60;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_416;
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

LABEL_416:
        v217 = 176;
        goto LABEL_533;
      case 0xDu:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 236) |= 0x100000000uLL;
        while (1)
        {
          v218 = 0;
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

          v72 |= (v218 & 0x7F) << v70;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_424;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v72;
        }

LABEL_424:
        v217 = 204;
        goto LABEL_533;
      case 0xEu:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 236) |= 0x10000000uLL;
        while (1)
        {
          v218 = 0;
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

          v142 |= (v218 & 0x7F) << v140;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v11 = v141++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_484;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v142;
        }

LABEL_484:
        v217 = 188;
        goto LABEL_533;
      case 0xFu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 236) |= 0x400000uLL;
        while (1)
        {
          v218 = 0;
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

          v52 |= (v218 & 0x7F) << v50;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_408;
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

LABEL_408:
        v217 = 164;
        goto LABEL_533;
      case 0x10u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 236) |= 0x200000000uLL;
        while (1)
        {
          v218 = 0;
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

          v97 |= (v218 & 0x7F) << v95;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v11 = v96++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_444;
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

LABEL_444:
        v217 = 208;
        goto LABEL_533;
      case 0x11u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 236) |= 0x40000000uLL;
        while (1)
        {
          v218 = 0;
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

          v47 |= (v218 & 0x7F) << v45;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_404;
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

LABEL_404:
        v217 = 196;
        goto LABEL_533;
      case 0x12u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 236) |= 0x200000uLL;
        while (1)
        {
          v218 = 0;
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

          v122 |= (v218 & 0x7F) << v120;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v11 = v121++ >= 9;
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
          v18 = v122;
        }

LABEL_468:
        v217 = 160;
        goto LABEL_533;
      case 0x13u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 236) |= 0x40000uLL;
        while (1)
        {
          v218 = 0;
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

          v152 |= (v218 & 0x7F) << v150;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v11 = v151++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_492;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v152;
        }

LABEL_492:
        v217 = 148;
        goto LABEL_533;
      case 0x14u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 236) |= 0x80000000uLL;
        while (1)
        {
          v218 = 0;
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

          v187 |= (v218 & 0x7F) << v185;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v11 = v186++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_520;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v187;
        }

LABEL_520:
        v217 = 200;
        goto LABEL_533;
      case 0x15u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 236) |= 0x400uLL;
        while (1)
        {
          v218 = 0;
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

          v127 |= (v218 & 0x7F) << v125;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v11 = v126++ >= 9;
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
          v24 = v127;
        }

LABEL_472:
        v216 = 88;
        goto LABEL_542;
      case 0x16u:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        *(a1 + 236) |= 0x200uLL;
        while (1)
        {
          v218 = 0;
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

          v137 |= (v218 & 0x7F) << v135;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v11 = v136++ >= 9;
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
          v24 = v137;
        }

LABEL_480:
        v216 = 80;
        goto LABEL_542;
      case 0x17u:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(a1 + 236) |= 0x800uLL;
        while (1)
        {
          v218 = 0;
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

          v177 |= (v218 & 0x7F) << v175;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v11 = v176++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_512;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v177;
        }

LABEL_512:
        v216 = 96;
        goto LABEL_542;
      case 0x18u:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        *(a1 + 236) |= 0x1000uLL;
        while (1)
        {
          v218 = 0;
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

          v192 |= (v218 & 0x7F) << v190;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v11 = v191++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_524;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v192;
        }

LABEL_524:
        v216 = 104;
        goto LABEL_542;
      case 0x19u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 236) |= 0x80uLL;
        while (1)
        {
          v218 = 0;
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

          v87 |= (v218 & 0x7F) << v85;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
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
          v24 = v87;
        }

LABEL_436:
        v216 = 64;
        goto LABEL_542;
      case 0x1Au:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 236) |= 0x10uLL;
        while (1)
        {
          v218 = 0;
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

          v82 |= (v218 & 0x7F) << v80;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_432;
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

LABEL_432:
        v216 = 40;
        goto LABEL_542;
      case 0x1Bu:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        *(a1 + 236) |= 0x20uLL;
        while (1)
        {
          v218 = 0;
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

          v212 |= (v218 & 0x7F) << v210;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v11 = v211++ >= 9;
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
          v24 = v212;
        }

LABEL_541:
        v216 = 48;
        goto LABEL_542;
      case 0x1Cu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 236) |= 0x40uLL;
        while (1)
        {
          v218 = 0;
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

          v37 |= (v218 & 0x7F) << v35;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_396;
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

LABEL_396:
        v216 = 56;
        goto LABEL_542;
      case 0x1Du:
        v195 = 0;
        v196 = 0;
        v197 = 0;
        *(a1 + 236) |= 0x100uLL;
        while (1)
        {
          v218 = 0;
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

          v197 |= (v218 & 0x7F) << v195;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v195 += 7;
          v11 = v196++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_528;
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

LABEL_528:
        v216 = 72;
        goto LABEL_542;
      case 0x1Eu:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        *(a1 + 236) |= 0x2000000000uLL;
        while (1)
        {
          v218 = 0;
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

          v202 |= (v218 & 0x7F) << v200;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v200 += 7;
          v11 = v201++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_532;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v202;
        }

LABEL_532:
        v217 = 224;
        goto LABEL_533;
      case 0x1Fu:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 236) |= 0x4000000000uLL;
        while (1)
        {
          v218 = 0;
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

          v167 |= (v218 & 0x7F) << v165;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v11 = v166++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_504;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v167;
        }

LABEL_504:
        v217 = 228;
        goto LABEL_533;
      case 0x20u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 236) |= 0x8000000000uLL;
        while (1)
        {
          v218 = 0;
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

          v117 |= (v218 & 0x7F) << v115;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v11 = v116++ >= 9;
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
          v18 = v117;
        }

LABEL_464:
        v217 = 232;
LABEL_533:
        *(a1 + v217) = v18;
        continue;
      case 0x21u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 236) |= 2uLL;
        while (1)
        {
          v218 = 0;
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

          v172 |= (v218 & 0x7F) << v170;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v11 = v171++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_508;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v172;
        }

LABEL_508:
        v216 = 16;
        goto LABEL_542;
      case 0x22u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 236) |= 1uLL;
        while (1)
        {
          v218 = 0;
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

          v57 |= (v218 & 0x7F) << v55;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_412;
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

LABEL_412:
        v216 = 8;
        goto LABEL_542;
      case 0x23u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 236) |= 8uLL;
        while (1)
        {
          v218 = 0;
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

          v42 |= (v218 & 0x7F) << v40;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_400;
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

LABEL_400:
        v216 = 32;
        goto LABEL_542;
      case 0x24u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 236) |= 4uLL;
        while (1)
        {
          v218 = 0;
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

          v27 |= (v218 & 0x7F) << v25;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_388;
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

LABEL_388:
        v216 = 24;
        goto LABEL_542;
      case 0x25u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 236) |= 0x4000uLL;
        while (1)
        {
          v218 = 0;
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

          v32 |= (v218 & 0x7F) << v30;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_392;
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

LABEL_392:
        v216 = 120;
        goto LABEL_542;
      case 0x26u:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 236) |= 0x2000uLL;
        while (1)
        {
          v218 = 0;
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

          v21 |= (v218 & 0x7F) << v19;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_384;
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

LABEL_384:
        v216 = 112;
        goto LABEL_542;
      case 0x27u:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        *(a1 + 236) |= 0x10000uLL;
        while (1)
        {
          v218 = 0;
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

          v207 |= (v218 & 0x7F) << v205;
          if ((v218 & 0x80) == 0)
          {
            break;
          }

          v205 += 7;
          v11 = v206++ >= 9;
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
          v24 = v207;
        }

LABEL_537:
        v216 = 136;
        goto LABEL_542;
      case 0x28u:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(a1 + 236) |= 0x8000uLL;
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
      v218 = 0;
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

      v182 |= (v218 & 0x7F) << v180;
      if ((v218 & 0x80) == 0)
      {
        break;
      }

      v180 += 7;
      v11 = v181++ >= 9;
      if (v11)
      {
        v24 = 0;
        goto LABEL_516;
      }
    }

    if ([a2 hasError])
    {
      v24 = 0;
    }

    else
    {
      v24 = v182;
    }

LABEL_516:
    v216 = 128;
LABEL_542:
    *(a1 + v216) = v24;
  }

  return [a2 hasError] ^ 1;
}