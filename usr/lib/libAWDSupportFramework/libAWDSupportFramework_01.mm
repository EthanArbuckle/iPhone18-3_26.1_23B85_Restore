uint64_t AWDCoreRoutineFMCCarParkedInstanceReadFrom(uint64_t a1, void *a2)
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
        v50 = 0;
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

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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
        break;
      }

      if (v12 == 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v51 = 0;
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

          v31 |= (v51 & 0x7F) << v29;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v10 = v30++ >= 9;
          if (v10)
          {
            v34 = 0;
            goto LABEL_86;
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

LABEL_86:
        *(a1 + 8) = v34;
        goto LABEL_106;
      }

      if (v12 != 2)
      {
        if (v12 != 3)
        {
          goto LABEL_62;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 0x10u;
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
          v18 = v21;
        }

LABEL_104:
        v48 = 36;
LABEL_105:
        *(a1 + v48) = v18;
        goto LABEL_106;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_106:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v53 = 0;
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

          v44 |= (v53 & 0x7F) << v42;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v10 = v43++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_92;
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

LABEL_92:
        v48 = 32;
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

          goto LABEL_106;
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v52 = 0;
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

          v26 |= (v52 & 0x7F) << v24;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
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
          v18 = v26;
        }

LABEL_100:
        v48 = 20;
      }
    }

    else
    {
      if (v12 == 4)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          v56 = 0;
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

          v38 |= (v56 & 0x7F) << v36;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v10 = v37++ >= 9;
          if (v10)
          {
            LOBYTE(v41) = 0;
            goto LABEL_88;
          }
        }

        v41 = (v38 != 0) & ~[a2 hasError];
LABEL_88:
        *(a1 + 40) = v41;
        goto LABEL_106;
      }

      if (v12 != 5)
      {
        goto LABEL_62;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 44) |= 2u;
      while (1)
      {
        v54 = 0;
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

        v15 |= (v54 & 0x7F) << v13;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v10 = v14++ >= 9;
        if (v10)
        {
          v18 = 0;
          goto LABEL_96;
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

LABEL_96:
      v48 = 16;
    }

    goto LABEL_105;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineFMCDailyAssessmentReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 48) |= 0x80u;
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
            v61 = 40;
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
          *(a1 + 48) |= 8u;
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
          v61 = 24;
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 48) |= 4u;
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
          v61 = 20;
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
            *(a1 + 48) |= 2u;
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
            v61 = 16;
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
            *(a1 + 48) |= 0x40u;
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
            v61 = 36;
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

uint64_t AWDCoreRoutineFMCDailyAssessmentsReadFrom(uint64_t a1, void *a2)
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
        v18 = objc_alloc_init(AWDCoreRoutineFMCDailyAssessment);
        [a1 addAssessment:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDCoreRoutineFMCDailyAssessmentReadFrom(v18, a2);
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

uint64_t AWDCoreRoutineFMCReturnToCarInstanceReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 32) |= 2u;
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
          v32 = 16;
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
          *(a1 + 32) |= 4u;
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
          v32 = 20;
        }

        *(a1 + v32) = v19;
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

        *(a1 + 24) = String;
      }

LABEL_65:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineFMCVehicleConnectionEventInstanceReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDCoreRoutineFMCViewedInstanceReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 28) |= 2u;
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
            v25 = 0;
            goto LABEL_44;
          }
        }

        v25 = [a2 hasError] ? 0 : v22;
LABEL_44:
        *(a1 + 24) = v25;
      }

      else if (v12 == 2)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v29 = 0;
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

          v15 |= (v29 & 0x7F) << v13;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_48;
          }
        }

        v18 = [a2 hasError] ? 0 : v15;
LABEL_48:
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

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineHeroAppEngagementInstanceReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 36) |= 2u;
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
          v32 = 16;
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
          *(a1 + 36) |= 4u;
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
          v32 = 32;
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

uint64_t AWDCoreRoutineHeroAppImpressionInstanceReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 28) |= 2u;
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
            v25 = 0;
            goto LABEL_44;
          }
        }

        v25 = [a2 hasError] ? 0 : v22;
LABEL_44:
        *(a1 + 24) = v25;
      }

      else if (v12 == 2)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v29 = 0;
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

          v15 |= (v29 & 0x7F) << v13;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_48;
          }
        }

        v18 = [a2 hasError] ? 0 : v15;
LABEL_48:
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

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineHeroAppSuggestionInstanceReadFrom(uint64_t a1, void *a2)
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
          [objc_msgSend(a2 "data")];
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
        if (v12 == 6)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            v45 = 0;
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

            v30 |= (v45 & 0x7F) << v28;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              LOBYTE(v33) = 0;
              goto LABEL_70;
            }
          }

          v33 = (v30 != 0) & ~[a2 hasError];
LABEL_70:
          *(a1 + 40) = v33;
        }

        else
        {
          if (v12 == 516)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 44) |= 2u;
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
                v21 = 0;
                goto LABEL_78;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v38;
            }

LABEL_78:
            v41 = 24;
          }

          else
          {
            if (v12 != 517)
            {
LABEL_52:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_80;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              v46 = 0;
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

              v18 |= (v46 & 0x7F) << v16;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v10 = v17++ >= 9;
              if (v10)
              {
                v21 = 0;
                goto LABEL_74;
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

LABEL_74:
            v41 = 28;
          }

          *(a1 + v41) = v21;
        }
      }

      else if (v12 == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v44 = 0;
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

          v24 |= (v44 & 0x7F) << v22;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v10 = v23++ >= 9;
          if (v10)
          {
            v27 = 0;
            goto LABEL_68;
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

LABEL_68:
        *(a1 + 8) = v27;
      }

      else
      {
        if (v12 == 2)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 32;
        }

        else
        {
          if (v12 != 3)
          {
            goto LABEL_52;
          }

          v13 = PBReaderReadString();

          v14 = v13;
          v15 = 16;
        }

        *(a1 + v15) = v14;
      }

LABEL_80:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineHintSourceSubmissionInstanceReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
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

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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

      if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v21 = 0;
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

          v14 |= (v21 & 0x7F) << v12;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_32;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_32:
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

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineHintSourceSubmissionSetReadFrom(uint64_t a1, void *a2)
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
        v18 = objc_alloc_init(AWDCoreRoutineHintSourceSubmissionInstance);
        [a1 addInstance:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDCoreRoutineHintSourceSubmissionInstanceReadFrom(v18, a2);
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

uint64_t AWDCoreRoutineHintSourceUsageInstanceReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) == 4)
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
            v20 = &OBJC_IVAR___AWDCoreRoutineHintSourceUsageInstance__isVisit;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDCoreRoutineHintSourceUsageInstance__isVisit;
        goto LABEL_52;
      }

      if (v12 == 3)
      {
        break;
      }

      if (v12 == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
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
            v20 = &OBJC_IVAR___AWDCoreRoutineHintSourceUsageInstance__hintSource;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDCoreRoutineHintSourceUsageInstance__hintSource;
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
        v20 = &OBJC_IVAR___AWDCoreRoutineHintSourceUsageInstance__isLOI;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDCoreRoutineHintSourceUsageInstance__isLOI;
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

uint64_t AWDCoreRoutineHintSourceUsageSetReadFrom(uint64_t a1, void *a2)
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
        v18 = objc_alloc_init(AWDCoreRoutineHintSourceUsageInstance);
        [a1 addInstance:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDCoreRoutineHintSourceUsageInstanceReadFrom(v18, a2);
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

uint64_t AWDCoreRoutineHistogramBinReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 2u;
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
            v19 = &OBJC_IVAR___AWDCoreRoutineHistogramBin__value;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDCoreRoutineHistogramBin__value;
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
    *(a1 + 16) |= 1u;
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
        v19 = &OBJC_IVAR___AWDCoreRoutineHistogramBin__count;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDCoreRoutineHistogramBin__count;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLMPAutofillSelectedInstanceReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 4)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
      }

      else if (v12 == 3)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v30 = 0;
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

          v21 |= (v30 & 0x7F) << v19;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_44;
          }
        }

        v24 = [a2 hasError] ? 0 : v21;
LABEL_44:
        *(a1 + 24) = v24;
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v29 = 0;
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

          v15 |= (v29 & 0x7F) << v13;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_48;
          }
        }

        v18 = [a2 hasError] ? 0 : v15;
LABEL_48:
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

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLMPDailyAssessmentReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 44) |= 0x80u;
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
            v56 = 40;
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
            *(a1 + 44) |= 0x20u;
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
            v56 = 32;
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
          *(a1 + 44) |= 8u;
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
          v56 = 24;
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
        *(a1 + 44) |= 2u;
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
        v56 = 16;
      }

      *(a1 + v56) = v18;
LABEL_135:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLMPRequestedInstanceReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 44) |= 2u;
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
              v24 = v33;
            }

LABEL_79:
            v43 = 16;
            break;
          case 5:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              v49 = 0;
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

              v40 |= (v49 & 0x7F) << v38;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v10 = v39++ >= 9;
              if (v10)
              {
                v24 = 0;
                goto LABEL_89;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v40;
            }

LABEL_89:
            v43 = 32;
            break;
          case 6:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 44) |= 8u;
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
                goto LABEL_85;
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

LABEL_85:
            v43 = 36;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_91;
        }

        *(a1 + v43) = v24;
      }

      else
      {
        switch(v12)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v46 = 0;
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

              v27 |= (v46 & 0x7F) << v25;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                v30 = 0;
                goto LABEL_75;
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

LABEL_75:
            *(a1 + 8) = v30;
            break;
          case 2:
            String = PBReaderReadString();

            *(a1 + 24) = String;
            break;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 44) |= 0x10u;
            while (1)
            {
              v47 = 0;
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

              v15 |= (v47 & 0x7F) << v13;
              if ((v47 & 0x80) == 0)
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
            *(a1 + 40) = v18;
            break;
          default:
            goto LABEL_60;
        }
      }

LABEL_91:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLMPResponseInstanceReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDCoreRoutineLMPScoreBoardReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v22[0]) = 0;
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

        v7 |= (v22[0] & 0x7F) << v5;
        if ((v22[0] & 0x80) == 0)
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
        v19 = objc_alloc_init(AWDCoreRoutineLMPScoreBoardInstance);
        [a1 addInstances:v19];
        goto LABEL_31;
      }

      if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v22[0]) = 0;
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

          v15 |= (v22[0] & 0x7F) << v13;
          if ((v22[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_39;
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

LABEL_39:
        *(a1 + 8) = v18;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v19 = objc_alloc_init(AWDCoreRoutineLMPScoreBoardInstance);
    [a1 addSecondaryInstances:v19];
LABEL_31:

    v22[0] = 0;
    v22[1] = 0;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    result = AWDCoreRoutineLMPScoreBoardInstanceReadFrom(v19, a2);
    if (!result)
    {
      return result;
    }

    PBReaderRecallMark();
    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLMPScoreBoardInstanceReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if (v12 != 1)
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

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v42 = 0;
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

          v21 |= (v42 & 0x7F) << v19;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_77;
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

LABEL_77:
        v36 = 8;
        goto LABEL_78;
      }

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_79:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 3:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v41 = 0;
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

          v26 |= (v41 & 0x7F) << v24;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v10 = v25++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_65;
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

LABEL_65:
        v36 = 12;
        break;
      case 4:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          v40 = 0;
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

          v31 |= (v40 & 0x7F) << v29;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v10 = v30++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_69;
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

LABEL_69:
        v36 = 32;
        break;
      case 5:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          v39 = 0;
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

          v15 |= (v39 & 0x7F) << v13;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
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
          v18 = v15;
        }

LABEL_73:
        v36 = 16;
        break;
      default:
        goto LABEL_60;
    }

LABEL_78:
    *(a1 + v36) = v18;
    goto LABEL_79;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLearnedLocationReconciliationVisitReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 6)
      {
        if (v12 > 9)
        {
          switch(v12)
          {
            case 0xA:
              v48 = 0;
              v49 = 0;
              v50 = 0;
              *(a1 + 52) |= 0x10u;
              while (1)
              {
                LOBYTE(v76[0]) = 0;
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

                v50 |= (v76[0] & 0x7F) << v48;
                if ((v76[0] & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v10 = v49++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_157;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v50;
              }

LABEL_157:
              v73 = 36;
              goto LABEL_173;
            case 0xB:
              v68 = 0;
              v69 = 0;
              v70 = 0;
              *(a1 + 52) |= 8u;
              while (1)
              {
                LOBYTE(v76[0]) = 0;
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

                v70 |= (v76[0] & 0x7F) << v68;
                if ((v76[0] & 0x80) == 0)
                {
                  break;
                }

                v68 += 7;
                v10 = v69++ >= 9;
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
                v18 = v70;
              }

LABEL_172:
              v73 = 32;
              goto LABEL_173;
            case 0xC:
              v30 = objc_alloc_init(AWDCoreRoutineLearnedLocationReconciliationVisit);
              [a1 addAlternativeVisits:v30];

              v76[0] = 0;
              v76[1] = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDCoreRoutineLearnedLocationReconciliationVisitReadFrom(v30, a2);
              if (!result)
              {
                return result;
              }

              PBReaderRecallMark();
              goto LABEL_174;
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
              *(a1 + 52) |= 0x40u;
              while (1)
              {
                LOBYTE(v76[0]) = 0;
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

                v40 |= (v76[0] & 0x7F) << v38;
                if ((v76[0] & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v10 = v39++ >= 9;
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
                v18 = v40;
              }

LABEL_151:
              v73 = 44;
              goto LABEL_173;
            case 8:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 52) |= 0x20u;
              while (1)
              {
                LOBYTE(v76[0]) = 0;
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

                v60 |= (v76[0] & 0x7F) << v58;
                if ((v76[0] & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v10 = v59++ >= 9;
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
                v18 = v60;
              }

LABEL_165:
              v73 = 40;
              goto LABEL_173;
            case 9:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 52) |= 0x200u;
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
                  LOBYTE(v24) = 0;
                  goto LABEL_141;
                }
              }

              v24 = (v21 != 0) & ~[a2 hasError];
LABEL_141:
              v74 = 50;
              goto LABEL_168;
          }
        }
      }

      else if (v12 > 3)
      {
        switch(v12)
        {
          case 4:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            *(a1 + 52) |= 0x400u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v45 |= (v76[0] & 0x7F) << v43;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v10 = v44++ >= 9;
              if (v10)
              {
                LOBYTE(v24) = 0;
                goto LABEL_153;
              }
            }

            v24 = (v45 != 0) & ~[a2 hasError];
LABEL_153:
            v74 = 51;
            goto LABEL_168;
          case 5:
            v63 = 0;
            v64 = 0;
            v65 = 0;
            *(a1 + 52) |= 0x80u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v65 |= (v76[0] & 0x7F) << v63;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              v10 = v64++ >= 9;
              if (v10)
              {
                LOBYTE(v24) = 0;
                goto LABEL_167;
              }
            }

            v24 = (v65 != 0) & ~[a2 hasError];
LABEL_167:
            v74 = 48;
            goto LABEL_168;
          case 6:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 52) |= 0x100u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v27 |= (v76[0] & 0x7F) << v25;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                LOBYTE(v24) = 0;
                goto LABEL_143;
              }
            }

            v24 = (v27 != 0) & ~[a2 hasError];
LABEL_143:
            v74 = 49;
LABEL_168:
            *(a1 + v74) = v24;
            goto LABEL_174;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v34 |= (v76[0] & 0x7F) << v32;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
              if (v10)
              {
                v37 = 0;
                goto LABEL_147;
              }
            }

            if ([a2 hasError])
            {
              v37 = 0;
            }

            else
            {
              v37 = v34;
            }

LABEL_147:
            *(a1 + 8) = v37;
            goto LABEL_174;
          case 2:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v76[0]) = 0;
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

              v55 |= (v76[0] & 0x7F) << v53;
              if ((v76[0] & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v10 = v54++ >= 9;
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
              v18 = v55;
            }

LABEL_161:
            v73 = 24;
            goto LABEL_173;
          case 3:
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
            v73 = 28;
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

uint64_t AWDCoreRoutineLearnedLocationReconciliationVisitDensityReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDCoreRoutineLearnedLocationTrainingMetricsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v72) = 0;
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

        v7 |= (v72 & 0x7F) << v5;
        if ((v72 & 0x80) == 0)
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
              v47 = 0;
              v48 = 0;
              v49 = 0;
              *(a1 + 84) |= 0x100u;
              while (1)
              {
                LOBYTE(v72) = 0;
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

                v49 |= (v72 & 0x7F) << v47;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                v10 = v48++ >= 9;
                if (v10)
                {
                  v24 = 0;
                  goto LABEL_158;
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

LABEL_158:
              v70 = 68;
              goto LABEL_169;
            case 0xB:
              v64 = 0;
              v65 = 0;
              v66 = 0;
              *(a1 + 84) |= 0x20u;
              while (1)
              {
                LOBYTE(v72) = 0;
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

                v66 |= (v72 & 0x7F) << v64;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v10 = v65++ >= 9;
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
                v24 = v66;
              }

LABEL_168:
              v70 = 44;
              goto LABEL_169;
            case 0xC:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 84) |= 0x40u;
              while (1)
              {
                LOBYTE(v72) = 0;
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

                v32 |= (v72 & 0x7F) << v30;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v10 = v31++ >= 9;
                if (v10)
                {
                  v24 = 0;
                  goto LABEL_145;
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

LABEL_145:
              v70 = 48;
              goto LABEL_169;
          }
        }

        else
        {
          switch(v12)
          {
            case 7:
              v40 = objc_alloc_init(AWDCoreRoutineVisit);
              [a1 addVisits:v40];

              v72 = 0;
              v73 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDCoreRoutineVisitReadFrom(v40, a2);
              if (!result)
              {
                return result;
              }

              goto LABEL_109;
            case 8:
              v58 = objc_alloc_init(AWDCoreRoutinePlace);
              [a1 addPlaces:v58];

              v72 = 0;
              v73 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDCoreRoutinePlaceReadFrom(&v58->super.super.isa, a2);
              if (!result)
              {
                return result;
              }

LABEL_109:
              PBReaderRecallMark();
              goto LABEL_170;
            case 9:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 84) |= 0x80u;
              while (1)
              {
                LOBYTE(v72) = 0;
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
                  v24 = 0;
                  goto LABEL_137;
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

LABEL_137:
              v70 = 64;
              goto LABEL_169;
          }
        }
      }

      else if (v12 > 3)
      {
        switch(v12)
        {
          case 4:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 84) |= 2u;
            while (1)
            {
              LOBYTE(v72) = 0;
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

              v44 |= (v72 & 0x7F) << v42;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v10 = v43++ >= 9;
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
              v18 = v44;
            }

LABEL_153:
            v69 = 16;
            goto LABEL_154;
          case 5:
            v59 = 0;
            v60 = 0;
            v61 = 0;
            *(a1 + 84) |= 0x10u;
            while (1)
            {
              LOBYTE(v72) = 0;
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

              v61 |= (v72 & 0x7F) << v59;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              v10 = v60++ >= 9;
              if (v10)
              {
                v24 = 0;
                goto LABEL_164;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v61;
            }

LABEL_164:
            v70 = 40;
LABEL_169:
            *(a1 + v70) = v24;
            goto LABEL_170;
          case 6:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 84) |= 4u;
            while (1)
            {
              LOBYTE(v72) = 0;
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

              v27 |= (v72 & 0x7F) << v25;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_141;
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

LABEL_141:
            v69 = 24;
            goto LABEL_154;
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
            *(a1 + 84) |= 8u;
            while (1)
            {
              LOBYTE(v72) = 0;
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

              v37 |= (v72 & 0x7F) << v35;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v10 = v36++ >= 9;
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
              v18 = v37;
            }

LABEL_149:
            v69 = 32;
            goto LABEL_154;
          case 2:
            v52 = 0;
            v53 = 0;
            v54 = 0;
            *(a1 + 84) |= 0x200u;
            while (1)
            {
              LOBYTE(v72) = 0;
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

              v54 |= (v72 & 0x7F) << v52;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v10 = v53++ >= 9;
              if (v10)
              {
                LOBYTE(v57) = 0;
                goto LABEL_160;
              }
            }

            v57 = (v54 != 0) & ~[a2 hasError];
LABEL_160:
            *(a1 + 80) = v57;
            goto LABEL_170;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 84) |= 1u;
            while (1)
            {
              LOBYTE(v72) = 0;
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

              v15 |= (v72 & 0x7F) << v13;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
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
              v18 = v15;
            }

LABEL_133:
            v69 = 8;
LABEL_154:
            *(a1 + v69) = v18;
            goto LABEL_170;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_170:
      v71 = [a2 position];
    }

    while (v71 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLearnedRouteInstanceReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v71) = 0;
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

        v7 |= (v71 & 0x7F) << v5;
        if ((v71 & 0x80) == 0)
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
      if ((v11 >> 3) <= 5)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 88) |= 1u;
            while (1)
            {
              LOBYTE(v71) = 0;
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

              v38 |= (v71 & 0x7F) << v36;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
              if (v10)
              {
                v41 = 0;
                goto LABEL_129;
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

LABEL_129:
            *(a1 + 32) = v41;
            goto LABEL_159;
          }

          if (v12 == 2)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 88) |= 0x40u;
            while (1)
            {
              LOBYTE(v71) = 0;
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

              v33 |= (v71 & 0x7F) << v31;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v10 = v32++ >= 9;
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
              v18 = v33;
            }

LABEL_133:
            v64 = 72;
            goto LABEL_158;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v53 = 0;
              v54 = 0;
              v55 = 0;
              *(a1 + 88) |= 0x20u;
              while (1)
              {
                LOBYTE(v71) = 0;
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

                v55 |= (v71 & 0x7F) << v53;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v10 = v54++ >= 9;
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
                v18 = v55;
              }

LABEL_149:
              v64 = 68;
              goto LABEL_158;
            case 4:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 88) |= 8u;
              while (1)
              {
                LOBYTE(v71) = 0;
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

                v44 |= (v71 & 0x7F) << v42;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v10 = v43++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_137;
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

LABEL_137:
              v64 = 48;
              goto LABEL_158;
            case 5:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 88) |= 0x80u;
              while (1)
              {
                LOBYTE(v71) = 0;
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

                v21 |= (v71 & 0x7F) << v19;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v10 = v20++ >= 9;
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
                v18 = v21;
              }

LABEL_145:
              v64 = 76;
              goto LABEL_158;
          }
        }
      }

      else if (v12 > 8)
      {
        switch(v12)
        {
          case 9:
            v63 = objc_alloc_init(AWDCoreRoutineRoadClassItem);
            [a1 addRoadClassHistogram:v63];

            v71 = 0;
            v72 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDCoreRoutineRoadClassItemReadFrom(v63, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_123;
          case 0xA:
            v52 = objc_alloc_init(AWDCoreRoutineLocationTypeItem);
            [a1 addLocationTypeHistogram:v52];

            v71 = 0;
            v72 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDCoreRoutineLocationTypeItemReadFrom(v52, a2);
            if (!result)
            {
              return result;
            }

LABEL_123:
            PBReaderRecallMark();
            goto LABEL_159;
          case 0xB:
            if ((v11 & 7) != 2)
            {
              v66 = 0;
              v67 = 0;
              v68 = 0;
              while (1)
              {
                LOBYTE(v71) = 0;
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

                v68 |= (v71 & 0x7F) << v66;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v66 += 7;
                v10 = v67++ >= 9;
                if (v10)
                {
                  goto LABEL_171;
                }
              }

              [a2 hasError];
LABEL_171:
              PBRepeatedInt32Add();
              goto LABEL_159;
            }

            v71 = 0;
            v72 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v25 = [a2 position];
              if (v25 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_123;
              }

              v26 = 0;
              v27 = 0;
              v28 = 0;
              while (1)
              {
                v73 = 0;
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

                v28 |= (v73 & 0x7F) << v26;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                v10 = v27++ >= 9;
                if (v10)
                {
                  goto LABEL_61;
                }
              }

              [a2 hasError];
LABEL_61:
              PBRepeatedInt32Add();
            }
        }
      }

      else
      {
        switch(v12)
        {
          case 6:
            v58 = 0;
            v59 = 0;
            v60 = 0;
            *(a1 + 88) |= 2u;
            while (1)
            {
              LOBYTE(v71) = 0;
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

              v60 |= (v71 & 0x7F) << v58;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v10 = v59++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_157;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v60;
            }

LABEL_157:
            v64 = 40;
            goto LABEL_158;
          case 7:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 88) |= 4u;
            while (1)
            {
              LOBYTE(v71) = 0;
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

              v49 |= (v71 & 0x7F) << v47;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v10 = v48++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_141;
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

LABEL_141:
            v64 = 44;
            goto LABEL_158;
          case 8:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 88) |= 0x10u;
            while (1)
            {
              LOBYTE(v71) = 0;
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

              v15 |= (v71 & 0x7F) << v13;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
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
              v18 = v15;
            }

LABEL_153:
            v64 = 64;
LABEL_158:
            *(a1 + v64) = v18;
            goto LABEL_159;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_159:
      v65 = [a2 position];
    }

    while (v65 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLocationAwarenessBasicHistogramReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
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

        v6 |= (v24[0] & 0x7F) << v4;
        if ((v24[0] & 0x80) == 0)
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
      if (([a2 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        if ((v10 & 7) == 2)
        {
          v24[0] = 0;
          v24[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v12 = [a2 position];
            if (v12 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v13 = 0;
            v14 = 0;
            v15 = 0;
            while (1)
            {
              v25 = 0;
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

              v15 |= (v25 & 0x7F) << v13;
              if ((v25 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v9 = v14++ >= 9;
              if (v9)
              {
                goto LABEL_32;
              }
            }

            [a2 hasError];
LABEL_32:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
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

            v20 |= (v24[0] & 0x7F) << v18;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v9 = v19++ >= 9;
            if (v9)
            {
              goto LABEL_46;
            }
          }

          [a2 hasError];
LABEL_46:
          PBRepeatedInt32Add();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLocationAwarenessHeartbeatStatisticsReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
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

            v24 |= (v29[0] & 0x7F) << v22;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v10 = v23++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v24;
          }

LABEL_52:
          v27 = 16;
          goto LABEL_57;
        }

        if (v12 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
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

            v17 |= (v29[0] & 0x7F) << v15;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v10 = v16++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_56;
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

LABEL_56:
          v27 = 8;
LABEL_57:
          *(a1 + v27) = v20;
          goto LABEL_58;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

            v14 = 32;
            goto LABEL_35;
          case 4:
            v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

            v14 = 24;
LABEL_35:
            *(a1 + v14) = v13;
            v29[0] = 0;
            v29[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDCoreRoutineLocationAwarenessBasicHistogramReadFrom(v13, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_58;
          case 5:
            v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

            v14 = 40;
            goto LABEL_35;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_58:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLocationAwarenessIntervalHistogramReadFrom(_BYTE *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            a1[64] |= 2u;
            while (1)
            {
              LOBYTE(v28[0]) = 0;
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

              v16 |= (v28[0] & 0x7F) << v14;
              if ((v28[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v10 = v15++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_57;
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

LABEL_57:
            v25 = 16;
            goto LABEL_62;
          case 2:
            v20 = 0;
            v21 = 0;
            v22 = 0;
            a1[64] |= 1u;
            while (1)
            {
              LOBYTE(v28[0]) = 0;
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

              v22 |= (v28[0] & 0x7F) << v20;
              if ((v28[0] & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v10 = v21++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_61;
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

LABEL_61:
            v25 = 8;
LABEL_62:
            *&a1[v25] = v19;
            goto LABEL_63;
          case 3:
            v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);
            [a1 addLessThan10mIntervalHistogram:v13];
            goto LABEL_42;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);
          [a1 addLessThan200mIntervalHistogram:v13];
LABEL_42:

          v28[0] = 0;
          v28[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDCoreRoutineLocationAwarenessBasicHistogramReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_63;
        }

        if (v12 == 7)
        {
          v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);
          [a1 addAnyPositiveIntervalHistogram:v13];
          goto LABEL_42;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);
          [a1 addLessThan25mIntervalHistogram:v13];
          goto LABEL_42;
        }

        if (v12 == 5)
        {
          v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);
          [a1 addLessThan55mIntervalHistogram:v13];
          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_63:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLocationAwarenessLocationTimeHistogramsReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v29[0]) = 0;
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

              v17 |= (v29[0] & 0x7F) << v15;
              if ((v29[0] & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v10 = v16++ >= 9;
              if (v10)
              {
                v20 = 0;
                goto LABEL_57;
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

LABEL_57:
            v26 = 16;
            goto LABEL_62;
          case 2:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v29[0]) = 0;
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

              v23 |= (v29[0] & 0x7F) << v21;
              if ((v29[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
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
              v20 = v23;
            }

LABEL_61:
            v26 = 8;
LABEL_62:
            *(a1 + v26) = v20;
            goto LABEL_63;
          case 3:
            v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

            v14 = 32;
            goto LABEL_42;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v14 = 40;
LABEL_42:
          *(a1 + v14) = v13;
          v29[0] = 0;
          v29[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDCoreRoutineLocationAwarenessBasicHistogramReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_63;
        }

        if (v12 == 7)
        {
          v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v14 = 24;
          goto LABEL_42;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v14 = 48;
          goto LABEL_42;
        }

        if (v12 == 5)
        {
          v13 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v14 = 56;
          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_63:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLocationAwarenessStatisticsReadFrom(uint64_t a1, void *a2)
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

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 136) |= 2u;
          while (1)
          {
            LOBYTE(v28[0]) = 0;
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

            v14 |= (v28[0] & 0x7F) << v12;
            if ((v28[0] & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_60:
              v27 = 16;
              goto LABEL_65;
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

          goto LABEL_60;
        case 2u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 136) |= 1u;
          break;
        case 3u:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 96;
          goto LABEL_50;
        case 4u:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 24;
          goto LABEL_50;
        case 5u:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 128;
          goto LABEL_50;
        case 6u:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 104;
          goto LABEL_50;
        case 7u:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 120;
          goto LABEL_50;
        case 8u:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 112;
          goto LABEL_50;
        case 9u:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 80;
          goto LABEL_50;
        case 0xAu:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 88;
          goto LABEL_50;
        case 0xBu:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 40;
          goto LABEL_50;
        case 0xCu:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 48;
          goto LABEL_50;
        case 0xDu:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 56;
          goto LABEL_50;
        case 0xEu:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 64;
          goto LABEL_50;
        case 0xFu:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 72;
          goto LABEL_50;
        case 0x10u:
          v18 = objc_alloc_init(AWDCoreRoutineLocationAwarenessBasicHistogram);

          v19 = 32;
LABEL_50:
          *(a1 + v19) = v18;
          v28[0] = 0;
          v28[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDCoreRoutineLocationAwarenessBasicHistogramReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_53;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_53;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v28[0]) = 0;
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

        v22 |= (v28[0] & 0x7F) << v20;
        if ((v28[0] & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v10 = v21++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_64;
        }
      }

      v17 = [a2 hasError] ? 0 : v22;
LABEL_64:
      v27 = 8;
LABEL_65:
      *(a1 + v27) = v17;
LABEL_53:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineLocationTypeItemReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 1u;
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
            v19 = &OBJC_IVAR___AWDCoreRoutineLocationTypeItem__locationType;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDCoreRoutineLocationTypeItem__locationType;
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
    *(a1 + 16) |= 2u;
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
        v19 = &OBJC_IVAR___AWDCoreRoutineLocationTypeItem__percentage;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDCoreRoutineLocationTypeItem__percentage;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineMagicMomentsSuggestionInstanceReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v40[0]) = 0;
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

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
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
            v30 = objc_alloc_init(AWDCoreRoutineMagicalMomentsExpertInstance);
            [a1 addSuggestions:v30];

            v40[0] = 0;
            v40[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDCoreRoutineMagicalMomentsExpertInstanceReadFrom(v30, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_83;
          case 5:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
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

              v35 |= (v40[0] & 0x7F) << v33;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v10 = v34++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_81;
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

LABEL_81:
            v38 = 24;
            goto LABEL_82;
          case 6:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
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

              v21 |= (v40[0] & 0x7F) << v19;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_77;
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

LABEL_77:
            v38 = 20;
            goto LABEL_82;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
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

              v26 |= (v40[0] & 0x7F) << v24;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v29 = 0;
                goto LABEL_69;
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

LABEL_69:
            *(a1 + 8) = v29;
            goto LABEL_83;
          case 2:
            String = PBReaderReadString();

            *(a1 + 32) = String;
            goto LABEL_83;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              LOBYTE(v40[0]) = 0;
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

              v15 |= (v40[0] & 0x7F) << v13;
              if ((v40[0] & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
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
              v18 = v15;
            }

LABEL_73:
            v38 = 16;
LABEL_82:
            *(a1 + v38) = v18;
            goto LABEL_83;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_83:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineMagicalMomentsExpertInstanceReadFrom(_BYTE *a1, void *a2)
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
        LOBYTE(v39) = 0;
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
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            a1[40] |= 8u;
            while (1)
            {
              LOBYTE(v39) = 0;
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

              v28 |= (v39 & 0x7F) << v26;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v10 = v27++ >= 9;
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
              v18 = v28;
            }

LABEL_75:
            v37 = 36;
            goto LABEL_84;
          case 5:
            v36 = objc_alloc_init(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance);
            [a1 addInstances:v36];

            v39 = 0;
            v40 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstanceReadFrom(v36, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_67;
          case 6:
            v19 = objc_alloc_init(AWDCoreRoutineMagicalMomentsFeatureAddon);
            [a1 addAddons:v19];

            v39 = 0;
            v40 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDCoreRoutineMagicalMomentsFeatureAddonReadFrom(v19, a2);
            if (!result)
            {
              return result;
            }

LABEL_67:
            PBReaderRecallMark();
            goto LABEL_85;
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
            a1[40] |= 4u;
            while (1)
            {
              LOBYTE(v39) = 0;
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

              v23 |= (v39 & 0x7F) << v21;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_71;
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

LABEL_71:
            v37 = 32;
            goto LABEL_84;
          case 2:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            a1[40] |= 2u;
            while (1)
            {
              LOBYTE(v39) = 0;
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

              v33 |= (v39 & 0x7F) << v31;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v10 = v32++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_83;
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

LABEL_83:
            v37 = 20;
            goto LABEL_84;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            a1[40] |= 1u;
            while (1)
            {
              LOBYTE(v39) = 0;
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

              v15 |= (v39 & 0x7F) << v13;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_79;
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

LABEL_79:
            v37 = 16;
LABEL_84:
            *&a1[v37] = v18;
            goto LABEL_85;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineMagicalMomentsExpertsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34[0]) = 0;
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

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
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
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
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

            v28 |= (v34[0] & 0x7F) << v26;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v10 = v27++ >= 9;
            if (v10)
            {
              v31 = 0;
              goto LABEL_64;
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

LABEL_64:
          *(a1 + 8) = v31;
          goto LABEL_70;
        }

        if (v12 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
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

            v16 |= (v34[0] & 0x7F) << v14;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v10 = v15++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_68;
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

LABEL_68:
          v32 = 16;
          goto LABEL_69;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v20 = 0;
            v21 = 0;
            v22 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              LOBYTE(v34[0]) = 0;
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

              v22 |= (v34[0] & 0x7F) << v20;
              if ((v34[0] & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v10 = v21++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_60;
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

LABEL_60:
            v32 = 40;
LABEL_69:
            *(a1 + v32) = v19;
            goto LABEL_70;
          case 4:
            v13 = objc_alloc_init(AWDCoreRoutineMagicalMomentsExpertInstance);
            [a1 addExperts:v13];
LABEL_43:

            v34[0] = 0;
            v34[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDCoreRoutineMagicalMomentsExpertInstanceReadFrom(v13, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_70;
          case 5:
            v13 = objc_alloc_init(AWDCoreRoutineMagicalMomentsExpertInstance);
            [a1 addSuggestions:v13];
            goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_70:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineMagicalMomentsFeatureAddonReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 20) |= 1u;
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
        *(a1 + 16) = v18;
      }

      else if ((v11 >> 3) == 1)
      {
        String = PBReaderReadString();

        *(a1 + 8) = String;
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

uint64_t AWDCoreRoutineMagicalMomentsIndividualMomentReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 2)
      {
        break;
      }

      if (v12 == 3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 32) |= 2u;
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
          v18 = v29;
        }

LABEL_63:
        v32 = 16;
LABEL_64:
        *(a1 + v32) = v18;
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

      String = PBReaderReadString();

      *(a1 + 24) = String;
LABEL_65:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
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
      goto LABEL_65;
    }

    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    *(a1 + 32) |= 4u;
    while (1)
    {
      v37 = 0;
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

      v15 |= (v37 & 0x7F) << v13;
      if ((v37 & 0x80) == 0)
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
    v32 = 20;
    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstanceReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 24) |= 1u;
        while (1)
        {
          v29 = 0;
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

          v22 |= (v29 & 0x7F) << v20;
          if ((v29 & 0x80) == 0)
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
        v26 = 16;
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 == 1)
          {
            String = PBReaderReadString();

            *(a1 + 8) = String;
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
        *(a1 + 24) |= 2u;
        while (1)
        {
          v30 = 0;
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

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
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
        v26 = 20;
      }

      *(a1 + v26) = v19;
LABEL_50:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSetReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44[0]) = 0;
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

        v7 |= (v44[0] & 0x7F) << v5;
        if ((v44[0] & 0x80) == 0)
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
        switch(v12)
        {
          case 5:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              LOBYTE(v44[0]) = 0;
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

              v32 |= (v44[0] & 0x7F) << v30;
              if ((v44[0] & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v10 = v31++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_81;
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

LABEL_81:
            v41 = 24;
            goto LABEL_94;
          case 6:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v44[0]) = 0;
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

              v38 |= (v44[0] & 0x7F) << v36;
              if ((v44[0] & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_93;
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

LABEL_93:
            v41 = 16;
            goto LABEL_94;
          case 7:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              LOBYTE(v44[0]) = 0;
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

              v21 |= (v44[0] & 0x7F) << v19;
              if ((v44[0] & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_89;
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

LABEL_89:
            v41 = 20;
            goto LABEL_94;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v44[0]) = 0;
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

              v26 |= (v44[0] & 0x7F) << v24;
              if ((v44[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v29 = 0;
                goto LABEL_77;
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

LABEL_77:
            *(a1 + 8) = v29;
            goto LABEL_95;
          case 2:
            v35 = objc_alloc_init(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance);
            [a1 addInstance:v35];

            v44[0] = 0;
            v44[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstanceReadFrom(v35, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_95;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 44) |= 0x10u;
            while (1)
            {
              LOBYTE(v44[0]) = 0;
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

              v15 |= (v44[0] & 0x7F) << v13;
              if ((v44[0] & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_85;
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

LABEL_85:
            v41 = 40;
LABEL_94:
            *(a1 + v41) = v18;
            goto LABEL_95;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_95:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}