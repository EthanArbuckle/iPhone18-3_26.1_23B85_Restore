uint64_t AWDMETRICSCellularPowerLogWUSReadFrom(uint64_t a1, void *a2)
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
            v47 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v47 & 0x7F) << v35;
            if ((v47 & 0x80) == 0)
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

uint64_t AWDMETRICSCellularPowerLogNRSARRCStateChangeReadFrom(uint64_t a1, void *a2)
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
        v61 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61 & 0x7F) << v5;
        if ((v61 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v62 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_94:
            *(a1 + 8) = v39;
            goto LABEL_120;
          case 2:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 40) |= 0x20u;
            while (1)
            {
              v66 = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v66 & 0x7F) << v53;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_118;
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

LABEL_118:
            v59 = 32;
            break;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 40) |= 8u;
            while (1)
            {
              v65 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v65 & 0x7F) << v21;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_114;
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

LABEL_114:
            v59 = 24;
            break;
          default:
            goto LABEL_62;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v64 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v64 & 0x7F) << v47;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_102;
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

LABEL_102:
          v59 = 16;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_62:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v63 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v63 & 0x7F) << v27;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_110;
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

LABEL_110:
          v59 = 20;
        }
      }

      else if (v13 == 4)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 40) |= 0x10u;
        while (1)
        {
          v68 = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v68 & 0x7F) << v41;
          if ((v68 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v43;
        }

LABEL_98:
        v59 = 28;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_62;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 0x40u;
        while (1)
        {
          v67 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v67 & 0x7F) << v14;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_106;
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

LABEL_106:
        v59 = 36;
      }

      *(a1 + v59) = v20;
LABEL_120:
      v60 = [a2 position];
    }

    while (v60 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogWcdmaRrcStateChangeReadFrom(uint64_t a1, void *a2)
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
        v68 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

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
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              v75 = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v75 & 0x7F) << v53;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_113;
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

LABEL_113:
            v66 = 16;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_100;
            }

            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              v74 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v74 & 0x7F) << v27;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
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
              v20 = v29;
            }

LABEL_129:
            v66 = 24;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v69 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v69 & 0x7F) << v40;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v46 = 0;
                goto LABEL_105;
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

LABEL_105:
            *(a1 + 8) = v46;
            goto LABEL_131;
          }

          if (v13 != 2)
          {
            goto LABEL_100;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 0x40u;
          while (1)
          {
            v71 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v71 & 0x7F) << v14;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_121;
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

LABEL_121:
          v66 = 36;
        }

        goto LABEL_130;
      }

      if (v13 <= 6)
      {
        break;
      }

      if (v13 == 7)
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          v72 = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

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
          v11 = v60++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_117;
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

LABEL_117:
        v66 = 32;
LABEL_130:
        *(a1 + v66) = v20;
        goto LABEL_131;
      }

      if (v13 != 8)
      {
LABEL_100:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_131;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      *(a1 + 44) |= 0x80u;
      while (1)
      {
        v76 = 0;
        v36 = [a2 position] + 1;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v35 |= (v76 & 0x7F) << v33;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v11 = v34++ >= 9;
        if (v11)
        {
          LOBYTE(v39) = 0;
          goto LABEL_134;
        }
      }

      v39 = (v35 != 0) & ~[a2 hasError];
LABEL_134:
      *(a1 + 40) = v39;
LABEL_131:
      v67 = [a2 position];
      if (v67 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 5)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      *(a1 + 44) |= 0x10u;
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
          v20 = 0;
          goto LABEL_109;
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

LABEL_109:
      v66 = 28;
    }

    else
    {
      if (v13 != 6)
      {
        goto LABEL_100;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        v73 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v73 & 0x7F) << v21;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
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
        v20 = v23;
      }

LABEL_125:
      v66 = 20;
    }

    goto LABEL_130;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogSMCMetrics_block_invoke()
{
  qword_2811F3D38 = os_log_create("com.apple.PerfPowerServices", "smcmetrics");

  return MEMORY[0x2821F96F8]();
}

void sub_21A58F9D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21A5912AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id PLLogUserActiveState()
{
  if (qword_2811F3DD0 != -1)
  {
    dispatch_once(&qword_2811F3DD0, &__block_literal_global_2);
  }

  v1 = _MergedGlobals_1_1;

  return v1;
}

uint64_t __PLLogUserActiveState_block_invoke()
{
  _MergedGlobals_1_1 = os_log_create("com.apple.powerlog", "userActiveState");

  return MEMORY[0x2821F96F8]();
}

uint64_t AWDMETRICSKCellularLteDataInactivityBeforeIdleReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 15)
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

id PLLogGameMode()
{
  if (qword_2811F70A0 != -1)
  {
    dispatch_once(&qword_2811F70A0, &__block_literal_global_3);
  }

  v1 = _MergedGlobals_80;

  return v1;
}

uint64_t __PLLogGameMode_block_invoke()
{
  _MergedGlobals_80 = os_log_create("com.apple.powerlog", "gamemode");

  return MEMORY[0x2821F96F8]();
}

uint64_t AWDMETRICSKCellularPowerLogXOShutdownReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v56[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v56[0] & 0x7F) << v5;
        if ((v56[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v56[0] & 0x7F) << v33;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_88;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v35;
        }

LABEL_88:
        *(a1 + 8) = v39;
        goto LABEL_110;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v56[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v56[0] & 0x7F) << v21;
            if ((v56[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_108;
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

LABEL_108:
          v53 = 28;
          goto LABEL_109;
        }

LABEL_62:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_110;
      }

      v52 = objc_alloc_init(AWDMETRICSKCellularPowerLogXOShutdownMBin);
      [a1 addBin:v52];
      v56[0] = 0;
      v56[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogXOShutdownMBinReadFrom(v52, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_110:
      v54 = [a2 position];
      if (v54 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v56[0] & 0x7F) << v46;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_96;
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

LABEL_96:
        v53 = 36;
        goto LABEL_109;
      }

      if (v13 == 7)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v56[0] & 0x7F) << v27;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_104;
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

LABEL_104:
        v53 = 40;
        goto LABEL_109;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v56[0] & 0x7F) << v40;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_92;
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

LABEL_92:
        v53 = 24;
        goto LABEL_109;
      }

      if (v13 == 5)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v56[0] & 0x7F) << v14;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_100;
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

LABEL_100:
        v53 = 32;
LABEL_109:
        *(a1 + v53) = v20;
        goto LABEL_110;
      }
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogPLMNSearchEventReadFrom(uint64_t a1, void *a2)
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
        v61 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61 & 0x7F) << v5;
        if ((v61 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v62 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_94:
            *(a1 + 8) = v39;
            goto LABEL_120;
          case 2:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 40) |= 0x20u;
            while (1)
            {
              v66 = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v66 & 0x7F) << v53;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_118;
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

LABEL_118:
            v59 = 32;
            break;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 40) |= 8u;
            while (1)
            {
              v65 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v65 & 0x7F) << v21;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_114;
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

LABEL_114:
            v59 = 24;
            break;
          default:
            goto LABEL_62;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v68 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v68 & 0x7F) << v47;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_102;
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

LABEL_102:
          v59 = 16;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_62:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 40) |= 0x40u;
          while (1)
          {
            v67 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v67 & 0x7F) << v27;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_110;
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

LABEL_110:
          v59 = 36;
        }
      }

      else if (v13 == 4)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 40) |= 0x10u;
        while (1)
        {
          v64 = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v64 & 0x7F) << v41;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v43;
        }

LABEL_98:
        v59 = 28;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_62;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v63 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v63 & 0x7F) << v14;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_106;
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

LABEL_106:
        v59 = 20;
      }

      *(a1 + v59) = v20;
LABEL_120:
      v60 = [a2 position];
    }

    while (v60 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogRATChangeEventReadFrom(uint64_t a1, void *a2)
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
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
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
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

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

uint64_t AWDMETRICSCellularPowerLogServiceEventReadFrom(uint64_t a1, void *a2)
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
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
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
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

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

uint64_t AWDMETRICSKCellularPowerLogLteNrTxPowerHistReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v38[0] & 0x7F) << v29;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v31;
        }

LABEL_65:
        v35 = 16;
        goto LABEL_66;
      }

      if (v13 != 8)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist);
      [a1 addHist:v21];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogLteNrTxPowerHistHistReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v38[0] & 0x7F) << v22;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v28 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

LABEL_61:
      *(a1 + 8) = v28;
      goto LABEL_67;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v38[0] & 0x7F) << v14;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
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
        v20 = v16;
      }

LABEL_57:
      v35 = 32;
LABEL_66:
      *(a1 + v35) = v20;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogWCDMACDRXConfigReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDMETRICSKCellularPowerLogSocPerfLevelsReadFrom(_BYTE *a1, void *a2)
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
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        a1[40] |= 2u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v45[0] & 0x7F) << v35;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_75;
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

LABEL_75:
        v42 = 16;
        goto LABEL_76;
      }

      if (v13 != 2)
      {
        goto LABEL_62;
      }

      v21 = objc_alloc_init(AWDMETRICSKCellularPowerLogSocPerfLevelsMBin);
      [a1 addBin:v21];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogSocPerfLevelsMBinReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_82:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        a1[40] |= 8u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v45[0] & 0x7F) << v22;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
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
          v20 = v24;
        }

LABEL_67:
        v41 = 36;
        goto LABEL_81;
      case 4:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        a1[40] |= 1u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v45[0] & 0x7F) << v28;
          if ((v45[0] & 0x80) == 0)
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
        v42 = 8;
LABEL_76:
        *&a1[v42] = v34;
        goto LABEL_82;
      case 0xF:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        a1[40] |= 4u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v45[0] & 0x7F) << v14;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_80;
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

LABEL_80:
        v41 = 32;
LABEL_81:
        *&a1[v41] = v20;
        goto LABEL_82;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_82;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogWCDMARRCStateChangeReadFrom(uint64_t a1, void *a2)
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
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v61 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v61 & 0x7F) << v34;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
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

LABEL_87:
            v53 = 24;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v60 & 0x7F) << v47;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
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

LABEL_103:
            v53 = 32;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v57 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v57 & 0x7F) << v21;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
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

LABEL_95:
            v53 = 16;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v59 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

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
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 28;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v58 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

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
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
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

LABEL_91:
            v53 = 20;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSMetricLogPowerReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

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
      if ((v12 >> 3) > 3985411)
      {
        if (v13 <= 3985679)
        {
          if (v13 > 3985671)
          {
            switch(v13)
            {
              case 0x3CD108:
                v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
                [a1 addKCellularWcdmaServingCellRx0RssiHist:v14];
                break;
              case 0x3CD109:
                v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
                [a1 addKCellularWcdmaServingCellRx1RssiHist:v14];
                break;
              case 0x3CD10C:
                v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
                [a1 addKCellularWcdmaTxPowerHist:v14];
                goto LABEL_89;
              default:
                goto LABEL_81;
            }
          }

          else
          {
            if (v13 == 3985412)
            {
              v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
              [a1 addKCellularGsmServingCellRssiHist:v14];
              goto LABEL_89;
            }

            if (v13 == 3985414)
            {
              v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
              [a1 addKCellularGsmTxPowerHist:v14];
LABEL_89:
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerlogProtocolStackHistReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }

              goto LABEL_210;
            }

            if (v13 != 3985671)
            {
              goto LABEL_81;
            }

            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
            [a1 addKCellularWcdmaRxDiversityHist:v14];
          }

          goto LABEL_94;
        }

        if (v13 > 3986179)
        {
          if (v13 == 3986180)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
            [a1 addKCellularLteServingCellRsrpHist:v14];
            goto LABEL_94;
          }

          if (v13 == 3986181)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRrcModeHist);
            [a1 addKCellularLteServingCellSinrHist:v14];
LABEL_94:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerlogRrcModeHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            goto LABEL_210;
          }

          if (v13 != 3986196)
          {
            goto LABEL_81;
          }

          v14 = objc_alloc_init(AWDMETRICSKCellularLteDataInactivityBeforeIdle);
          [a1 addKCellularLteDataInactivityBeforeIdle:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || (AWDMETRICSKCellularLteDataInactivityBeforeIdleReadFrom(v14, a2) & 1) == 0)
          {
LABEL_230:

            return 0;
          }
        }

        else
        {
          if (v13 == 3985680)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
            [a1 addKCellularWcdmaRabModeHist:v14];
            goto LABEL_89;
          }

          if (v13 == 3985681)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogProtocolStackHist);
            [a1 addKCellularWcdmaPsRabTypeHist:v14];
            goto LABEL_89;
          }

          if (v13 != 3985686)
          {
            goto LABEL_81;
          }

          v14 = objc_alloc_init(AWDMETRICSKCellularWcdmaDataInactivityBeforeIdle);
          [a1 addKCellularWcdmaDataInactivityBeforeIdle:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || (AWDMETRICSKCellularWcdmaDataInactivityBeforeIdleReadFrom(v14, a2) & 1) == 0)
          {
            goto LABEL_230;
          }
        }
      }

      else if (v13 <= 3952671)
      {
        if (v13 <= 3952141)
        {
          switch(v13)
          {
            case 0x3C0003:
              v14 = objc_alloc_init(AWDMETRICSKCellularPerClientProfileTriggerCount);
              [a1 addKCellularPerClientProfileTriggerCount:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPerClientProfileTriggerCountReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }

              break;
            case 0x3C4E09:
              v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycle);
              [a1 addKCellularPowerLogWcdmaPagingDRXCycle:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycleReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }

              break;
            case 0x3C4E0A:
              v14 = objc_alloc_init(AWDMETRICSKCellularLtePagingCycle);
              [a1 addKCellularLtePagingCycle:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularLtePagingCycleReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }

              break;
            default:
              goto LABEL_81;
          }
        }

        else if (v13 > 3952663)
        {
          if (v13 == 3952664)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularNrSDMActivation);
            [a1 addKCellularNrSDMActivation:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularNrSDMActivationReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }
          }

          else
          {
            if (v13 != 3952665)
            {
LABEL_81:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                return 0;
              }

              goto LABEL_211;
            }

            v14 = objc_alloc_init(AWDMETRICSKCellularNrSdmEndcRelease);
            [a1 addKCellularNrSdmEndcRelease:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularNrSdmEndcReleaseReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }
          }
        }

        else if (v13 == 3952142)
        {
          v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRPagingDRXCycle);
          [a1 addKCellularPowerLogNRPagingDRXCycle:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRPagingDRXCycleReadFrom(v14, a2) & 1) == 0)
          {
            goto LABEL_230;
          }
        }

        else
        {
          if (v13 != 3952152)
          {
            goto LABEL_81;
          }

          v14 = objc_alloc_init(AWDMETRICSKCellularLteCdrxConfig);
          [a1 addKCellularLteCdrxConfig:v14];
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || (AWDMETRICSKCellularLteCdrxConfigReadFrom(v14, a2) & 1) == 0)
          {
            goto LABEL_230;
          }
        }
      }

      else
      {
        switch(v13)
        {
          case 3962379:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteCaConfigActivateStats);
            [a1 addKCellularPowerLogLteCaConfigActivateStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962380:
          case 3962381:
          case 3962384:
          case 3962385:
          case 3962386:
          case 3962387:
          case 3962388:
          case 3962390:
          case 3962391:
          case 3962394:
          case 3962395:
          case 3962397:
          case 3962398:
          case 3962399:
          case 3962401:
          case 3962402:
          case 3962403:
          case 3962404:
          case 3962405:
          case 3962406:
          case 3962407:
          case 3962408:
          case 3962409:
          case 3962410:
          case 3962411:
          case 3962413:
          case 3962420:
          case 3962421:
          case 3962424:
          case 3962429:
          case 3962431:
          case 3962432:
          case 3962440:
          case 3962441:
          case 3962442:
          case 3962443:
          case 3962445:
          case 3962446:
          case 3962447:
          case 3962448:
          case 3962449:
          case 3962450:
          case 3962452:
          case 3962453:
          case 3962454:
          case 3962455:
          case 3962456:
          case 3962457:
          case 3962458:
          case 3962459:
          case 3962460:
          case 3962461:
          case 3962462:
          case 3962463:
          case 3962472:
          case 3962473:
            goto LABEL_81;
          case 3962382:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteCarrierComponentInfo);
            [a1 addKCellularPowerLogLteCarrierComponentInfo:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteCarrierComponentInfoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962383:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogAggregatedDLTBSHist);
            [a1 addKCellularPowerLogLTEAggregatedDLTBS:v14];
            goto LABEL_153;
          case 3962389:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogPowerEstimator);
            [a1 addKCellularPowerLogPowerEstimator:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogPowerEstimatorReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962392:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogProtocolStateHist);
            [a1 addKCellularPowerLogProtocolState:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogProtocolStateHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962393:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogPLMNSearchHist);
            [a1 addKCellularPowerLogPLMNSearch:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogPLMNSearchHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962396:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogGSMRABMode);
            [a1 addKCellularPowerLogGSMRABMode:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogGSMRABModeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962400:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRSCGRel);
            [a1 addKCellularPowerLogNRSCGRel:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRSCGRelReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962412:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogWCDMACDRXConfig);
            [a1 addKCellularPowerLogWCDMACDRXConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogWCDMACDRXConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962414:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogWcdmaRrcStateChange);
            [a1 addKCellularPowerLogWcdmaRrcStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogWcdmaRrcStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962415:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteRrcStateChange);
            [a1 addKCellularPowerLogLteRrcStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteRrcStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962416:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSystemEvent);
            [a1 addKCellularPowerLogSystemEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSystemEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962417:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogRatChangeEvent);
            [a1 addKCellularPowerLogRatReselectionEvent:v14];
            goto LABEL_178;
          case 3962418:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogRatChangeEvent);
            [a1 addKCellularPowerLogRatRedirectionEvent:v14];
LABEL_178:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogRatChangeEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962419:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogGsmRrcStateChange);
            [a1 addKCellularPowerLogGsmRrcStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogGsmRrcStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962422:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogServiceStatusEvent);
            [a1 addKCellularPowerLogServiceStatusEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogServiceStatusEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962423:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogPlmnSearchEvent);
            [a1 addKCellularPowerLogPlmnSearchEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogPlmnSearchEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962425:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNrSaRrcStateChange);
            [a1 addKCellularPowerLogNrSaRrcStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNrSaRrcStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962426:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRNSAENDCEvent);
            [a1 addKCellularPowerLogNRNSAENDCEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRNSAENDCEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962427:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCdrxConfig);
            [a1 addKCellularPowerLogNRCdrxConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRCdrxConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962428:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRBWPHist);
            [a1 addKCellularPowerLogNRsub6BWP:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRBWPHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962430:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNrCaConfigActivateStats);
            [a1 addKCellularPowerLogNrCaConfigActivateStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNrCaConfigActivateStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962433:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCarrierComponentInfo);
            [a1 addKCellularPowerLogNRCarrierComponentInfo:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRCarrierComponentInfoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962434:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogAggregatedDLTBSHist);
            [a1 addKCellularPowerLogNRsub6DLTBS:v14];
LABEL_153:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogAggregatedDLTBSHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962435:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRSub6RSRPHist);
            [a1 addKCellularPowerLogNRSub6RSRP:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRSub6RSRPHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962436:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRSub6SINRHist);
            [a1 addKCellularPowerLogNRSub6SINR:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogNRSub6SINRHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962437:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrRxDiversityHist);
            [a1 addKCellularPowerLogLteNrRxDiversityHist:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteNrRxDiversityHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962438:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrTxPowerHist);
            [a1 addKCellularPowerLogLteNrTxPowerHist:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteNrTxPowerHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962439:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats);
            [a1 addKCellularPowerLogLteNrRxTxActivityStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962444:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSFTStateEvent);
            [a1 addKCellularPowerLogSFTState:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSFTStateEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962451:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSFTRxTxHist);
            [a1 addKCellularPowerLogSFTRxTx:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSFTRxTxHistReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962464:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogXOShutdown);
            [a1 addKCellularPowerLogXOShutdown:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogXOShutdownReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962465:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogCpuPerfLevels);
            [a1 addKCellularPowerLogCpuPerfLevels:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogCpuPerfLevelsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962466:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSocPerfLevels);
            [a1 addKCellularPowerLogSocPerfLevels:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSocPerfLevelsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962467:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogAcmPerfLevels);
            [a1 addKCellularPowerLogAcmPerfLevels:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogAcmPerfLevelsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962468:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogCpsSleepStates:v14];
            goto LABEL_208;
          case 3962469:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogCdpDSleepStates:v14];
            goto LABEL_208;
          case 3962470:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogCdpUSleepStates:v14];
            goto LABEL_208;
          case 3962471:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogCdpHSleepStates:v14];
            goto LABEL_208;
          case 3962474:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogL1CSleepStates:v14];
            goto LABEL_208;
          case 3962475:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogL1SSleepStates:v14];
            goto LABEL_208;
          case 3962476:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLogDcsSleepStates:v14];
            goto LABEL_208;
          case 3962477:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSubsysSleepStates);
            [a1 addKCellularPowerLog2g3gSleepStates:v14];
LABEL_208:
            v17 = 0;
            v18 = 0;
            if (PBReaderPlaceMark() && (AWDMETRICSKCellularPowerLogSubsysSleepStatesReadFrom(v14, a2) & 1) != 0)
            {
              break;
            }

            goto LABEL_230;
          case 3962478:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSleepStates);
            [a1 addKCellularPowerLogSleepStates:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogSleepStatesReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962479:
            v14 = objc_alloc_init(AWDMETRICSKCellularPlatformApBbSleepStats);
            [a1 addKCellularPlatformApBbSleepStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPlatformApBbSleepStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962480:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogGPSStates);
            [a1 addKCellularPowerLogGPSStates:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogGPSStatesReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962481:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerlogRFSSVoltageLevels);
            [a1 addKCellularPowerlogRFSSVoltageLevels:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerlogRFSSVoltageLevelsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962482:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogBasebandSleepVeto);
            [a1 addKCellularPowerLogBasebandSleepVeto:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularPowerLogBasebandSleepVetoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          case 3962483:
            v14 = objc_alloc_init(AWDMETRICSKCellularAcmSleepStats);
            [a1 addKCellularAcmSleepStats:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSKCellularAcmSleepStatsReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_230;
            }

            break;
          default:
            if (v13 == 3952672)
            {
              v14 = objc_alloc_init(AWDMETRICSKCellularNrDataInactivityBeforeIdle);
              [a1 addKCellularNrDataInactivityBeforeIdle:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularNrDataInactivityBeforeIdleReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }
            }

            else
            {
              if (v13 != 3962165)
              {
                goto LABEL_81;
              }

              v14 = objc_alloc_init(AWDMETRICSKCellularRfTunerHist);
              [a1 addKCellularRfTunerHist:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSKCellularRfTunerHistReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_230;
              }
            }

            break;
        }
      }

LABEL_210:
      PBReaderRecallMark();

LABEL_211:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogXOShutdownMBinReadFrom(uint64_t a1, void *a2)
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
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

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
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v37 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37 & 0x7F) << v28;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogXOShutdownMBin__count;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogXOShutdownMBin__count;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v36 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

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
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogXOShutdownMBin__binId;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogXOShutdownMBin__binId;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 4u;
    while (1)
    {
      v38 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v38 & 0x7F) << v23;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogXOShutdownMBin__durationMs;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogXOShutdownMBin__durationMs;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularWcdmaDataInactivityBeforeIdleReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 15)
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

uint64_t AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroupReadFrom(uint64_t a1, void *a2)
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
        v103 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v103 & 0x7F) << v5;
        if ((v103 & 0x80) == 0)
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
          *(a1 + 60) |= 0x1000u;
          while (1)
          {
            v105 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v105 & 0x7F) << v13;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
LABEL_173:
              v100 = 56;
              goto LABEL_174;
            }
          }

          v19 = (v15 != 0) & ~[a2 hasError];
          goto LABEL_173;
        case 2u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v117 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v117 & 0x7F) << v63;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_178;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v65;
          }

LABEL_178:
          v101 = 12;
          goto LABEL_199;
        case 3u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            v116 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v116 & 0x7F) << v45;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_163;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v47;
          }

LABEL_163:
          v101 = 16;
          goto LABEL_199;
        case 4u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            v115 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v115 & 0x7F) << v51;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_167;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v53;
          }

LABEL_167:
          v101 = 8;
          goto LABEL_199;
        case 5u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 60) |= 0x100u;
          while (1)
          {
            v114 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v114 & 0x7F) << v26;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_151;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v28;
          }

LABEL_151:
          v101 = 40;
          goto LABEL_199;
        case 6u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 60) |= 0x200u;
          while (1)
          {
            v113 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v113 & 0x7F) << v69;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_182;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v71;
          }

LABEL_182:
          v101 = 44;
          goto LABEL_199;
        case 7u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 60) |= 0x40u;
          while (1)
          {
            v112 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v112 & 0x7F) << v81;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v83;
          }

LABEL_190:
          v101 = 32;
          goto LABEL_199;
        case 8u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 60) |= 0x80u;
          while (1)
          {
            v111 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v111 & 0x7F) << v57;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_171;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v59;
          }

LABEL_171:
          v101 = 36;
          goto LABEL_199;
        case 9u:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            v110 = 0;
            v96 = [a2 position] + 1;
            if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
            {
              v98 = [a2 data];
              [v98 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v95 |= (v110 & 0x7F) << v93;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            v11 = v94++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_198;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v95;
          }

LABEL_198:
          v101 = 20;
          goto LABEL_199;
        case 0xAu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 60) |= 0x10u;
          while (1)
          {
            v109 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

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
            v11 = v40++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_159;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v41;
          }

LABEL_159:
          v101 = 24;
          goto LABEL_199;
        case 0xBu:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            v108 = 0;
            v90 = [a2 position] + 1;
            if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
            {
              v92 = [a2 data];
              [v92 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v89 |= (v108 & 0x7F) << v87;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v11 = v88++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_194;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v89;
          }

LABEL_194:
          v101 = 28;
          goto LABEL_199;
        case 0xCu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 60) |= 0x2000u;
          while (1)
          {
            v104 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v104 & 0x7F) << v20;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_147;
            }
          }

          v19 = (v22 != 0) & ~[a2 hasError];
LABEL_147:
          v100 = 57;
LABEL_174:
          *(a1 + v100) = v19;
          goto LABEL_200;
        case 0xDu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 60) |= 0x400u;
          while (1)
          {
            v107 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v107 & 0x7F) << v33;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_155;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v35;
          }

LABEL_155:
          v101 = 48;
          goto LABEL_199;
        case 0xEu:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 60) |= 0x800u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_200;
      }

      while (1)
      {
        v106 = 0;
        v78 = [a2 position] + 1;
        if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
        {
          v80 = [a2 data];
          [v80 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v77 |= (v106 & 0x7F) << v75;
        if ((v106 & 0x80) == 0)
        {
          break;
        }

        v75 += 7;
        v11 = v76++ >= 9;
        if (v11)
        {
          v32 = 0;
          goto LABEL_186;
        }
      }

      v32 = [a2 hasError] ? 0 : v77;
LABEL_186:
      v101 = 52;
LABEL_199:
      *(a1 + v101) = v32;
LABEL_200:
      v102 = [a2 position];
    }

    while (v102 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogCoreDuet_block_invoke()
{
  _MergedGlobals_1_2 = os_log_create("com.apple.powerlog", "coreduet");

  return MEMORY[0x2821F96F8]();
}

uint64_t AWDMETRICSKCellularPowerLogLteCarrierComponentInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

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
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

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
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_59;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_59:
          *(a1 + 28) = v27;
          goto LABEL_64;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_64;
      }

      v35 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfo);
      [a1 addCarrierInfo:v35];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogLteCarrierComponentInfoMCarrierComponentInfoReadFrom(v35, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_64:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v38[0] & 0x7F) << v28;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v34 = 0;
          goto LABEL_63;
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

LABEL_63:
      *(a1 + 8) = v34;
      goto LABEL_64;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v38[0] & 0x7F) << v14;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
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
        v20 = v16;
      }

LABEL_57:
      *(a1 + 24) = v20;
      goto LABEL_64;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

id PLLogHomeKit()
{
  if (qword_2811F3EC8 != -1)
  {
    dispatch_once(&qword_2811F3EC8, &__block_literal_global_6);
  }

  v1 = _MergedGlobals_1_4;

  return v1;
}

uint64_t __PLLogHomeKit_block_invoke()
{
  _MergedGlobals_1_4 = os_log_create("com.apple.powerlog", "homekit");

  return MEMORY[0x2821F96F8]();
}

uint64_t KCellularServingCellRfBandHistReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

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
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 15)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

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
            v11 = v22++ >= 9;
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
            v20 = v23;
          }

LABEL_61:
          v35 = 32;
          goto LABEL_62;
        }

        goto LABEL_40;
      }

      v34 = objc_alloc_init(RfBandDuration);
      [a1 addPcellBandDuration:v34];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !RfBandDurationReadFrom(v34, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v30 = [a2 position] + 1;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

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
        v11 = v28++ >= 9;
        if (v11)
        {
          v33 = 0;
          goto LABEL_66;
        }
      }

      if ([a2 hasError])
      {
        v33 = 0;
      }

      else
      {
        v33 = v29;
      }

LABEL_66:
      *(a1 + 8) = v33;
      goto LABEL_67;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v38[0] & 0x7F) << v14;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
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
        v20 = v16;
      }

LABEL_57:
      v35 = 16;
LABEL_62:
      *(a1 + v35) = v20;
      goto LABEL_67;
    }

LABEL_40:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularTdsL1StateReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 15)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
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
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

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

uint64_t AWDMETRICSCellularPowerLogNRSCGRelReadFrom(uint64_t a1, void *a2)
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
            v47 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v47 & 0x7F) << v35;
            if ((v47 & 0x80) == 0)
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

uint64_t AWDMETRICSKCellularPowerLogNRPagingDRXCycleReadFrom(uint64_t a1, void *a2)
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
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

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
      if ((v12 >> 3) <= 10)
      {
        break;
      }

      if (v13 <= 13)
      {
        if (v13 == 11)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 48) |= 0x10u;
          while (1)
          {
            v61 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

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
            v11 = v43++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v44;
          }

LABEL_90:
          v56 = 40;
        }

        else
        {
          if (v13 != 12)
          {
            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v60 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v60 & 0x7F) << v14;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_94;
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

LABEL_94:
          v56 = 20;
        }

LABEL_105:
        *(a1 + v56) = v20;
        goto LABEL_106;
      }

      if (v13 == 14)
      {
        v48 = PBReaderReadData();
        v49 = *(a1 + 32);
        *(a1 + 32) = v48;
      }

      else
      {
        if (v13 != 15)
        {
LABEL_62:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_106;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 48) |= 0x20u;
        while (1)
        {
          v64 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v64 & 0x7F) << v27;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_96;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_96:
        *(a1 + 44) = v33;
      }

LABEL_106:
      v57 = [a2 position];
      if (v57 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v59 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

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
          v11 = v35++ >= 9;
          if (v11)
          {
            v40 = 0;
            goto LABEL_86;
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

LABEL_86:
        *(a1 + 8) = v40;
        goto LABEL_106;
      case 2:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          v62 = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v62 & 0x7F) << v50;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v52;
        }

LABEL_104:
        v56 = 24;
        break;
      case 4:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          v63 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v63 & 0x7F) << v21;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_100;
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

LABEL_100:
        v56 = 16;
        break;
      default:
        goto LABEL_62;
    }

    goto LABEL_105;
  }

  return [a2 hasError] ^ 1;
}

void PLProcessCPU::PLProcessCPU(PLProcessCPU *this)
{
  *this = &unk_282B5AB50;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 19) = 0;
  v2 = os_log_create("com.apple.powerlog", "PLProcessCPU");
  v3 = *(this + 19);
  *(this + 19) = v2;

  LODWORD(count) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 17) = 0x100000000;
  *(this + 144) = 1;
  v4 = mach_absolute_time();
  *(this + 15) = v4;
  *(this + 16) = v4;
  v8 = 4;
  sysctlbyname("kern.maxproc", &count, &v8, 0, 0);
  *(this + 11) = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
  v5 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
  *(this + 12) = v5;
  *(this + 26) = 4 * count;
  v6 = *(this + 19);
  if (!*(this + 11) || !v5)
  {
    if (os_log_type_enabled(*(this + 19), OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Unable to allocate memory.", v7, 2u);
    }

    __cxa_rethrow();
  }

  if (os_log_type_enabled(*(this + 19), OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "PLProcessCPU initialized.", v7, 2u);
  }
}

void sub_21A5E2AD4(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void PLProcessCPU::~PLProcessCPU(void **this)
{
  *this = &unk_282B5AB50;
  free(this[11]);
  free(this[12]);

  std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::~__hash_table((this + 6));
  std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::~__hash_table((this + 1));
}

void PLProcessCPU::findMissing(PLProcessCPU *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + *(this + 35) + 27);
  if (v2)
  {
    v4 = *(this + *(this + 34) + 27);
    if (v2 >= 1 && v4 >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = this + 88;
      v11 = (v2 - v4);
      v23 = *(this + *(this + 35) + 27);
      v20 = *(this + *(this + 34) + 27);
      do
      {
        v22 = v11;
        v12 = 0;
        v13 = v4 - v8;
        v14 = v9;
        v15 = 4 * v9;
        v16 = v2 - v9;
        v26 = v9;
        v27 = v8;
        v24 = v15;
        v25 = v4 - v8;
        while (1)
        {
          v17 = *(*&v10[8 * *(this + 35)] + v15 + 4 * v12);
          if (*(*&v10[8 * *(this + 34)] + 4 * v8) == v17)
          {
            break;
          }

          if (v13 >= v16)
          {
            v4 = v20;
            a2[1] = v6;
            a2[2] = 0;
            v9 = v14 + v12;
            *a2 = 0;
            v19 = v22;
            goto LABEL_19;
          }

          v18 = v7 >> 2;
          if (((v7 >> 2) + 1) >> 62)
          {
            a2[1] = v6;
            a2[2] = 0;
            *a2 = 0;
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (v7 >> 2 != -1)
          {
            if (!(((v7 >> 2) + 1) >> 62))
            {
              operator new();
            }

            a2[1] = v6;
            a2[2] = 0;
            *a2 = 0;
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v18) = v17;
          v6 = 4 * v18 + 4;
          memcpy(0, 0, v7);
          v2 = v23;
          v15 = v24;
          v14 = v26;
          v8 = v27;
          v13 = v25;
          ++v12;
          --v16;
          v7 = v6;
          if (v26 + v12 >= v23)
          {
            a2[1] = v6;
            a2[2] = 0;
            *a2 = 0;
            return;
          }
        }

        v19 = v22;
        a2[1] = v6;
        a2[2] = 0;
        *a2 = 0;
        v4 = v20;
        if (v14 + v12 == v22)
        {
          return;
        }

        v9 = v14 + v12 + 1;
LABEL_19:
        if (++v8 >= v4)
        {
          break;
        }

        v11 = v19 + 1;
      }

      while (v9 < v2);
    }
  }
}

void sub_21A5E2DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    *(a10 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void PLProcessCPU::cleanupDeadPids(PLProcessCPU *this)
{
  PLProcessCPU::findMissing(this, &v9);
  v2 = v9;
  v3 = v10;
  if (v9 != v10)
  {
    v4 = v9;
    do
    {
      v5 = *v4;
      v6 = std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::find<int>(this + 1, *v4);
      if (v6)
      {
        v7 = v6[3];
        v11 = v6 + 3;
        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 6, v7);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(v8 + 3, v5);
        std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::__erase_unique<int>(this + 1, v5);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  if (v2)
  {

    operator delete(v2);
  }
}

void sub_21A5E2EB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__darwin_ino64_t PLProcessCPU::getInode(PLProcessCPU *this, const char *a2)
{
  if (stat(a2, &v3) == -1)
  {
    return -1;
  }

  else
  {
    return v3.st_ino;
  }
}

uint64_t PLProcessCPU::updateInodeMap(PLProcessCPU *this, int *a2)
{
  buffer[128] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    if (!proc_pidpath(*a2, buffer, 0x400u))
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = "Unable to get path for pid, or process terminated";
      __cxa_throw(exception, MEMORY[0x277D82740], 0);
    }

    v4 = (**this)(this, buffer);
    v26 = v4;
    if (v4 == -1)
    {
      v22 = __cxa_allocate_exception(8uLL);
      *v22 = "Cannot find the inode for the process";
      __cxa_throw(v22, MEMORY[0x277D82740], 0);
    }

    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v26 = 0;
    strcpy(buffer, "kernel_task");
  }

  std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 1, v5)[3] = v4;
  *&__dst = &v26;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 6, v26);
  v7 = v6;
  v8 = *a2;
  v9 = v6[4];
  if (!*&v9)
  {
    goto LABEL_23;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = *a2;
    if (*&v9 <= v8)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v8;
  }

  v12 = *(v6[3] + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_23;
    }

LABEL_22:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (*(v13 + 4) != v8)
  {
    goto LABEL_22;
  }

  if ((*(v6 + 87) & 0x8000000000000000) != 0)
  {
    if (!v6[9])
    {
      goto LABEL_28;
    }
  }

  else if (!*(v6 + 87))
  {
LABEL_28:
    v15 = (*(*this + 8))(this, buffer);
    v16 = v15;
    if (!v15)
    {
      v23 = __cxa_allocate_exception(8uLL);
      *v23 = "Unable to get basename for the process";
      __cxa_throw(v23, MEMORY[0x277D82740], 0);
    }

    v17 = strlen(v15);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v25) = v17;
    if (v17)
    {
      memmove(&__dst, v16, v17);
    }

    *(&__dst + v18) = 0;
    if (*(v7 + 87) < 0)
    {
      operator delete(v7[8]);
    }

    *(v7 + 4) = __dst;
    v7[10] = v25;
  }

  result = v26;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PLProcessCPU::getRawCpu(PLProcessCPU *this, int *a2, unint64_t *a3)
{
  if ((*(*this + 16))(this, *a2, v9) != 96)
  {
    std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::__erase_unique<int>(this + 1, *a2);
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::find<unsigned long long>(this + 6, *a3);
    if (!v7[6])
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(v7 + 3, *a2);
    }

    exception = __cxa_allocate_exception(8uLL);
    *exception = "Process terminated while acquiring pidinfo";
    __cxa_throw(exception, MEMORY[0x277D82740], 0);
  }

  return v9[3] + v9[2];
}

uint64_t PLProcessCPU::aggregateCpu(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v4 = a2[1];
  v5 = *a4;
  if (!*&v4)
  {
    v9 = *a3;
    goto LABEL_33;
  }

  v6 = *a2;
  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = *a4;
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v5;
  }

  v10 = *(v6 + 8 * v8);
  if (v10)
  {
    for (i = *v10; i; i = *i)
    {
      v12 = i[1];
      if (v12 == v5)
      {
        if (i[2] == v5)
        {
          result = i[3];
          v18 = *a3 + result;
          *a3 = v18;
          i[3] = v18;
          return result;
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (v12 >= *&v4)
          {
            v12 %= *&v4;
          }
        }

        else
        {
          v12 &= *&v4 - 1;
        }

        if (v12 != v8)
        {
          break;
        }
      }
    }
  }

  if (v7.u32[0] > 1uLL)
  {
    v13 = *a4;
    if (*&v4 <= v5)
    {
      v13 = v5 % *&v4;
    }
  }

  else
  {
    v13 = (*&v4 - 1) & v5;
  }

  v14 = *(v6 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_33:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v16 >= *&v4)
      {
        v16 %= *&v4;
      }
    }

    else
    {
      v16 &= *&v4 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_33;
    }

LABEL_32:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_33;
    }
  }

  if (v15[2] != v5)
  {
    goto LABEL_32;
  }

  result = 0;
  v15[3] = *a3;
  return result;
}

void PLProcessCPU::addToReport(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, unint64_t *a6)
{
  v10 = PLProcessCPU::aggregateCpu(a1, a3, a5, a2);
  v12 = (a4 + 8);
  v11 = *(a4 + 8);
  if (v11)
  {
    v13 = *a2;
    v14 = (a4 + 8);
    do
    {
      v15 = v11[5];
      v16 = v15 >= v10;
      v17 = v15 > v10;
      v18 = v16;
      if (v11[4] == v13)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      v20 = v19 == 0;
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v14 = v11;
      }

      v11 = v11[v21];
    }

    while (v11);
    if (v14 != v12)
    {
      v22 = v14[5];
      v28 = v22 > v10;
      v23 = v22 < v10;
      v24 = !v28;
      if (!(v14[4] == v13 ? v23 : v24))
      {
        std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__remove_node_pointer(a4, v14);
        operator delete(v14);
      }
    }
  }

  v26 = *(a4 + 16);
  v27 = *a5;
  v28 = v26 != 10 || v27 > *a6;
  if (v28)
  {
    v29 = *a2;
    v30 = *v12;
    if (!*v12)
    {
LABEL_44:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v31 = v30;
        v32 = v30[4];
        v33 = v31[5];
        v34 = v33 < v27;
        if (v32 != v29)
        {
          v34 = v33 <= v27;
        }

        if (!v34)
        {
          break;
        }

        v30 = *v31;
        if (!*v31)
        {
          goto LABEL_44;
        }
      }

      v16 = v33 >= v27;
      v35 = v33 > v27;
      v36 = v16;
      if (!(v32 == v29 ? v35 : v36))
      {
        break;
      }

      v30 = v31[1];
      if (!v30)
      {
        goto LABEL_44;
      }
    }

    if (v26 >= 0xB)
    {
      do
      {
        v38 = *v12;
        v39 = (a4 + 8);
        if (*v12)
        {
          do
          {
            v39 = v38;
            v38 = v38[1];
          }

          while (v38);
          v40 = *v39;
        }

        else
        {
          do
          {
            v41 = v39;
            v39 = v39[2];
            v40 = *v39;
          }

          while (*v39 == v41);
        }

        if (v40)
        {
          do
          {
            v39 = v40;
            v40 = v40[1];
          }

          while (v40);
          *a6 = v39[5];
        }

        else
        {
          do
          {
            v43 = v39;
            v39 = v39[2];
          }

          while (*v39 == v43);
          v44 = v39[1];
          *a6 = v39[5];
          if (v44)
          {
            do
            {
              v42 = v44;
              v44 = *v44;
            }

            while (v44);
            goto LABEL_59;
          }
        }

        do
        {
          v42 = v39[2];
          v20 = *v42 == v39;
          v39 = v42;
        }

        while (!v20);
LABEL_59:
        std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__remove_node_pointer(a4, v42);
        operator delete(v42);
      }

      while (*(a4 + 16) > 0xAuLL);
    }
  }
}

void PLProcessCPU::reportCpus(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D3F258] secondsFromMachTime:*a3];
  v6 = v5 * 1000.0;
  [MEMORY[0x277D3F258] secondsFromMachTime:*(a1 + 120 + 8 * *(a1 + 136)) - *(a1 + 120 + 8 * *(a1 + 140))];
  if (a2[2])
  {
    v8 = *&v7;
    v9 = *(a1 + 152);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      *buf = 134218240;
      *v31 = v6;
      *&v31[8] = 2048;
      *&v31[10] = v10;
      _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEFAULT, "plcpu-00, %8.2f ms, %6.2f s", buf, 0x16u);
    }
  }

  v13 = *a2;
  v11 = a2 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    v14 = 0;
    v15 = v6;
    *&v7 = 67110146;
    v27 = v7;
    do
    {
      v28 = *(v12 + 2);
      [MEMORY[0x277D3F258] secondsFromMachTime:{*(&v28 + 1), v27}];
      v17 = v16;
      v18 = *(a1 + 152);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v29 = &v28;
        v19 = *(std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 48), v28)[5] + 16);
        v29 = &v28;
        v20 = std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 48), v28);
        v21 = v20 + 8;
        if (*(v20 + 87) < 0)
        {
          v21 = *v21;
        }

        v22 = v17 * 1000.0;
        ++v14;
        *buf = v27;
        *v31 = v14;
        *&v31[4] = 2048;
        *&v31[6] = v22;
        *&v31[14] = 2048;
        *&v31[16] = v22 * 100.0 / v15;
        v32 = 1024;
        v33 = v19;
        v34 = 2080;
        v35 = v21;
        _os_log_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEFAULT, "plcpu-%02d, %8.2f ms, %6.2f %%, %5d, %s", buf, 0x2Cu);
      }

      v23 = v12[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v12[2];
          v25 = *v24 == v12;
          v12 = v24;
        }

        while (!v25);
      }

      v12 = v24;
    }

    while (v24 != v11);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t PLProcessCPU::processPids(int32x2_t *this)
{
  v2 = this + 11;
  v3 = &this[13] + 4;
  this[13].i32[this[17].i32[0] + 1] = proc_listallpids(*&this[this[17].i32[0] + 11], this[13].i32[0]);
  PLProcessCPU::cleanupDeadPids(this);
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v14 = 0;
  v4 = mach_absolute_time();
  v5 = this[17].i32[0];
  this[v5 + 15] = v4;
  if (this[13].i32[v5 + 1] >= 1)
  {
    v6 = 0;
    do
    {
      v13 = *(*&v2[v5] + 4 * v6);
      v12 = 0;
      v7 = std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::find<int>(&this[1], v13);
      v8 = v7;
      if (v7)
      {
        updated = v7[3];
      }

      else
      {
        updated = PLProcessCPU::updateInodeMap(this, &v13);
      }

      v12 = updated;
      RawCpu = PLProcessCPU::getRawCpu(this, &v13, &v12);
      if (v8)
      {
        v8[this[17].i32[0] + 4] = RawCpu;
        if ((this[18].i8[0] & 1) == 0)
        {
          v20 = (RawCpu - v8[this[17].i32[1] + 4]);
          v14 += v20;
          if (v20)
          {
            PLProcessCPU::addToReport(RawCpu, &v12, v18, &v16, &v20, &v15);
          }
        }
      }

      else
      {
        v20 = &v13;
        std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&this[1], v13)[this[17].i32[0] + 4] = RawCpu;
      }

      ++v6;
      v5 = this[17].i32[0];
    }

    while (v6 < *&v3[4 * v5]);
  }

  PLProcessCPU::reportCpus(this, &v16, &v14);
  this[17] = vrev64_s32(this[17]);
  this[18].i8[0] = 0;
  std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::destroy(v17[0]);
  return std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::~__hash_table(v18);
}

uint64_t std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,PLProcessCPU::inode_data_t>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,PLProcessCPU::inode_data_t>,0>(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2782590D0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::find<int>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_21A5E4A88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,PLProcessCPU::inode_data_t>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(uint64_t *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *a1;
  v6 = *(*a1 + 8 * v4);
  if (!v6)
  {
    return;
  }

  v7 = *v6;
  if (!v7)
  {
    return;
  }

  v8 = v2 - 1;
  while (1)
  {
    v9 = v7[1];
    if (v9 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v9 >= v2)
      {
        v9 %= v2;
      }
    }

    else
    {
      v9 &= v8;
    }

    if (v9 != v4)
    {
      return;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      return;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  v10 = *v7;
  if (v3.u32[0] > 1uLL)
  {
    if (v9 >= v2)
    {
      v9 %= v2;
    }
  }

  else
  {
    v9 &= v8;
  }

  v11 = *(v5 + 8 * v9);
  do
  {
    v12 = v11;
    v11 = *v11;
  }

  while (v11 != v7);
  if (v12 == a1 + 2)
  {
    goto LABEL_36;
  }

  v13 = v12[1];
  if (v3.u32[0] > 1uLL)
  {
    if (v13 >= v2)
    {
      v13 %= v2;
    }
  }

  else
  {
    v13 &= v8;
  }

  if (v13 == v9)
  {
LABEL_38:
    if (v10)
    {
      v14 = *(v10 + 8);
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
    if (!v10)
    {
      goto LABEL_37;
    }

    v14 = *(v10 + 8);
    if (v3.u32[0] > 1uLL)
    {
      v15 = *(v10 + 8);
      if (v14 >= v2)
      {
        v15 = v14 % v2;
      }
    }

    else
    {
      v15 = v14 & v8;
    }

    if (v15 != v9)
    {
LABEL_37:
      *(v5 + 8 * v9) = 0;
      v10 = *v7;
      goto LABEL_38;
    }

LABEL_40:
    if (v3.u32[0] > 1uLL)
    {
      if (v14 >= v2)
      {
        v14 %= v2;
      }
    }

    else
    {
      v14 &= v8;
    }

    if (v14 != v9)
    {
      *(*a1 + 8 * v14) = v12;
      v10 = *v7;
    }
  }

  *v12 = v10;
  *v7 = 0;
  --a1[3];
  operator delete(v7);
}

void std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::__erase_unique<int>(void *a1, int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::find<int>(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = a1[1];
  v5 = *v3;
  v6 = v3[1];
  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *&v4)
    {
      v6 %= *&v4;
    }
  }

  else
  {
    v6 &= *&v4 - 1;
  }

  v8 = *(*a1 + 8 * v6);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 != v3);
  if (v9 == a1 + 2)
  {
    goto LABEL_20;
  }

  v10 = v9[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v10 >= *&v4)
    {
      v10 %= *&v4;
    }
  }

  else
  {
    v10 &= *&v4 - 1;
  }

  if (v10 != v6)
  {
LABEL_20:
    if (v5)
    {
      v11 = *(v5 + 8);
      if (v7.u32[0] > 1uLL)
      {
        v12 = *(v5 + 8);
        if (v11 >= *&v4)
        {
          v12 = v11 % *&v4;
        }
      }

      else
      {
        v12 = v11 & (*&v4 - 1);
      }

      if (v12 == v6)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v6) = 0;
    v5 = *v3;
  }

  if (v5)
  {
    v11 = *(v5 + 8);
LABEL_24:
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v6)
    {
      *(*a1 + 8 * v11) = v9;
      v5 = *v3;
    }
  }

  *v9 = v5;
  *v3 = 0;
  --a1[3];

  operator delete(v3);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t **std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__remove_node_pointer(uint64_t **result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v30 = *v3 == v4;
      v4 = v3;
    }

    while (!v30);
  }

  if (*result == a2)
  {
    *result = v3;
  }

  v5 = result[1];
  result[2] = (result[2] - 1);
  v6 = *a2;
  v7 = a2;
  if (*a2)
  {
    v8 = a2[1];
    if (!v8)
    {
      v7 = a2;
      goto LABEL_15;
    }

    do
    {
      v7 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  v6 = v7[1];
  if (v6)
  {
LABEL_15:
    v10 = 0;
    v9 = v7[2];
    *(v6 + 16) = v9;
    goto LABEL_16;
  }

  v9 = v7[2];
  v10 = 1;
LABEL_16:
  v11 = *v9;
  if (*v9 == v7)
  {
    *v9 = v6;
    if (v7 == v5)
    {
      v11 = 0;
      v5 = v6;
    }

    else
    {
      v11 = v9[1];
    }
  }

  else
  {
    v9[1] = v6;
  }

  v12 = *(v7 + 24);
  if (v7 != a2)
  {
    v13 = a2[2];
    v7[2] = v13;
    v13[*v13 != a2] = v7;
    v15 = *a2;
    v14 = a2[1];
    *(v15 + 16) = v7;
    *v7 = v15;
    v7[1] = v14;
    if (v14)
    {
      *(v14 + 16) = v7;
    }

    *(v7 + 24) = *(a2 + 24);
    if (v5 == a2)
    {
      v5 = v7;
    }
  }

  if (!v5 || !v12)
  {
    return result;
  }

  if (!v10)
  {
    *(v6 + 24) = 1;
    return result;
  }

  while (1)
  {
    v16 = v11[2];
    v17 = *v16;
    v18 = *(v11 + 24);
    if (*v16 == v11)
    {
      break;
    }

    if ((v11[3] & 1) == 0)
    {
      *(v11 + 24) = 1;
      *(v16 + 24) = 0;
      v19 = v16[1];
      v20 = *v19;
      v16[1] = *v19;
      if (v20)
      {
        *(v20 + 16) = v16;
      }

      v21 = v16[2];
      v19[2] = v21;
      v21[*v21 != v16] = v19;
      *v19 = v16;
      v16[2] = v19;
      if (v5 == *v11)
      {
        v5 = v11;
      }

      v11 = *(*v11 + 8);
    }

    v22 = *v11;
    if (*v11 && *(v22 + 24) != 1)
    {
      v23 = v11[1];
      if (v23 && (v23[3] & 1) == 0)
      {
LABEL_66:
        v22 = v11;
      }

      else
      {
        *(v22 + 24) = 1;
        *(v11 + 24) = 0;
        v31 = v22[1];
        *v11 = v31;
        if (v31)
        {
          *(v31 + 16) = v11;
        }

        v32 = v11[2];
        v22[2] = v32;
        v32[*v32 != v11] = v22;
        v22[1] = v11;
        v11[2] = v22;
        v23 = v11;
      }

      v33 = v22[2];
      *(v22 + 24) = *(v33 + 24);
      *(v33 + 24) = 1;
      *(v23 + 24) = 1;
      v34 = *(v33 + 8);
      v35 = *v34;
      *(v33 + 8) = *v34;
      if (v35)
      {
        *(v35 + 16) = v33;
      }

      v36 = *(v33 + 16);
      v34[2] = v36;
      v36[*v36 != v33] = v34;
      *v34 = v33;
      goto LABEL_79;
    }

    v23 = v11[1];
    if (v23 && *(v23 + 24) != 1)
    {
      goto LABEL_66;
    }

    *(v11 + 24) = 0;
    v24 = v11[2];
    if (v24 == v5 || (v24[3] & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_57:
    v11 = *(v24[2] + 8 * (*v24[2] == v24));
  }

  if ((v11[3] & 1) == 0)
  {
    *(v11 + 24) = 1;
    *(v16 + 24) = 0;
    v25 = v17[1];
    *v16 = v25;
    if (v25)
    {
      *(v25 + 16) = v16;
    }

    v26 = v16[2];
    v17[2] = v26;
    v26[*v26 != v16] = v17;
    v17[1] = v16;
    v16[2] = v17;
    v27 = v11[1];
    if (v5 == v27)
    {
      v5 = v11;
    }

    v11 = *v27;
  }

  v28 = *v11;
  if (*v11 && *(v28 + 24) != 1)
  {
    goto LABEL_75;
  }

  v29 = v11[1];
  if (!v29 || *(v29 + 24) == 1)
  {
    *(v11 + 24) = 0;
    v24 = v11[2];
    v30 = *(v24 + 24) != 1 || v24 == v5;
    if (v30)
    {
LABEL_60:
      *(v24 + 24) = 1;
      return result;
    }

    goto LABEL_57;
  }

  if (v28 && (v28[3] & 1) == 0)
  {
LABEL_75:
    v29 = v11;
    goto LABEL_76;
  }

  *(v29 + 24) = 1;
  *(v11 + 24) = 0;
  v37 = *v29;
  v11[1] = *v29;
  if (v37)
  {
    *(v37 + 16) = v11;
  }

  v38 = v11[2];
  v29[2] = v38;
  v38[*v38 != v11] = v29;
  *v29 = v11;
  v11[2] = v29;
  v28 = v11;
LABEL_76:
  v33 = v29[2];
  *(v29 + 24) = *(v33 + 24);
  *(v33 + 24) = 1;
  *(v28 + 24) = 1;
  v34 = *v33;
  v39 = *(*v33 + 8);
  *v33 = v39;
  if (v39)
  {
    *(v39 + 16) = v33;
  }

  v40 = *(v33 + 16);
  v34[2] = v40;
  v40[*v40 != v33] = v34;
  v34[1] = v33;
LABEL_79:
  *(v33 + 16) = v34;
  return result;
}

void std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::destroy(*a1);
    std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t AWDMETRICSKCellularPowerLogSubsysSleepStatesMBinReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 20) |= 1u;
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
        *(a1 + 8) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 2u;
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
        *(a1 + 16) = v19;
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