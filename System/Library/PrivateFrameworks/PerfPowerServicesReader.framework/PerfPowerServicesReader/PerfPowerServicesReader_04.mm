uint64_t AWDMETRICSCellularPowerLogNRNSAENDCEventReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDMETRICSCellularRfTunerHistReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v39[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39[0] & 0x7F) << v5;
        if ((v39[0] & 0x80) == 0)
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

      HIDWORD(v14) = (v12 >> 3) - 1;
      LODWORD(v14) = HIDWORD(v14);
      v13 = v14 >> 1;
      if (v13 > 4)
      {
        break;
      }

      if (!v13)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v39[0] & 0x7F) << v23;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_61:
        *(a1 + 8) = v29;
        goto LABEL_67;
      }

      if (v13 != 1)
      {
        goto LABEL_34;
      }

      v15 = objc_alloc_init(AWDMETRICSTunerStateDuration);
      [a1 addTunerStateDuration:v15];
      v39[0] = 0;
      v39[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSTunerStateDurationReadFrom(v15, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 5)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v39[0] & 0x7F) << v30;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v32;
      }

LABEL_65:
      v36 = 16;
      goto LABEL_66;
    }

    if (v13 == 7)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v39[0] & 0x7F) << v16;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_57;
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

LABEL_57:
      v36 = 20;
LABEL_66:
      *(a1 + v36) = v22;
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

uint64_t AWDMETRICSCellularPowerLogPLMNScanEventReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 36) |= 4u;
            while (1)
            {
              v57 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v57 & 0x7F) << v34;
              if ((v57 & 0x80) == 0)
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
            v53 = 20;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v61 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v61 & 0x7F) << v47;
              if ((v61 & 0x80) == 0)
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
            v53 = 16;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v60 & 0x7F) << v21;
              if ((v60 & 0x80) == 0)
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
            v53 = 32;
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
            *(a1 + 36) |= 8u;
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
            v53 = 24;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x10u;
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
            v53 = 28;
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

uint64_t AWDMETRICSCellularPowerLogShutdownReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v45 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v45 & 0x7F) << v35;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_76;
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

LABEL_76:
          v42 = 8;
          goto LABEL_77;
        }

        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_78;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 8u;
        while (1)
        {
          v47 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v47 & 0x7F) << v21;
          if ((v47 & 0x80) == 0)
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
        v41 = 28;
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v46 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

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
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_72;
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

LABEL_72:
          v42 = 16;
LABEL_77:
          *(a1 + v42) = v34;
          goto LABEL_78;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v48 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v48 & 0x7F) << v14;
          if ((v48 & 0x80) == 0)
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
        v41 = 24;
      }

      *(a1 + v41) = v20;
LABEL_78:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogSystemEventReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDMETRICSMBinReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 1u;
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
            v21 = &OBJC_IVAR___AWDMETRICSMBin__binId;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___AWDMETRICSMBin__binId;
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
    *(a1 + 16) |= 2u;
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
        v21 = &OBJC_IVAR___AWDMETRICSMBin__duration;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___AWDMETRICSMBin__duration;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSMCarrierComponentInfoReadFrom(uint64_t a1, void *a2)
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
            v48 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v48 & 0x7F) << v38;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__band;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__band;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v47 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v47 & 0x7F) << v23;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__bandwidth;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__bandwidth;
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
            *(a1 + 28) |= 8u;
            while (1)
            {
              v46 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v28;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__earfcn;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__earfcn;
            goto LABEL_75;
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 28) |= 0x10u;
            while (1)
            {
              v50 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v50 & 0x7F) << v33;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__type;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__type;
            goto LABEL_75;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v49 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v49 & 0x7F) << v14;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__duplex;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__duplex;
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

uint64_t AWDMETRICSCellularPowerLogNRFRCoverageReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDMETRICSCellularPowerLogSFTStateEventReadFrom(uint64_t a1, void *a2)
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

void sub_25E30EDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E30F028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PPSConvertValueWithNSUnit(void *a1, void *a2, void *a3, void *a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = objc_alloc(MEMORY[0x277CCAB10]);
  [v7 doubleValue];
  v11 = [v10 initWithDoubleValue:v8 unit:?];
  if ([v11 canBeConvertedToUnit:v9])
  {
    v12 = [v11 measurementByConvertingToUnit:v9];
    v13 = objc_alloc(MEMORY[0x277CCABB0]);
    [v12 doubleValue];
    v14 = [v13 initWithDouble:?];
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [v8 description];
    v17 = [v9 description];
    v18 = [v15 stringWithFormat:@"Cannot convert value '%@' from unit type '%@' to unit type '%@'", v7, v16, v17];

    v19 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = v18;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a4 = [v19 errorWithDomain:@"com.apple.PerfPowerServicesReader" code:1 userInfo:v20];

    v14 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

id PPSConvertValueWithPPSUnit(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a1;
  v9 = [a2 unit];
  v10 = [v7 unit];

  v11 = PPSConvertValueWithNSUnit(v8, v9, v10, a4);

  return v11;
}

void sub_25E31299C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E312CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E31445C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint8_t buf, int a47, int a48, __int16 a49, int a50, __int16 a51, __int16 a52, uint64_t a53, __int16 a54)
{
  if (a2)
  {

    pps::Histogram_Internal::~Histogram_Internal(&a32);
    boost::archive::detail::basic_iarchive::~basic_iarchive(&__p);
    boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_25E314860(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x25F8B0470](v1);
  _Unwind_Resume(a1);
}

void boost::archive::text_iarchive::~text_iarchive(boost::archive::text_iarchive *this)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive();
}

{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive();
}

id logHandle(void)
{
  if (logHandle(void)::onceToken != -1)
  {
    logHandle();
  }

  v1 = logHandle(void)::logHandle;

  return v1;
}

{
  if (logHandle(void)::onceToken != -1)
  {
    logHandle();
  }

  v1 = logHandle(void)::__logHandle;

  return v1;
}

void sub_25E314B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint8_t buf, int a33, int a34, __int16 a35, int a36, __int16 a37, __int16 a38, uint64_t a39, __int16 a40)
{
  if (a2)
  {

    if (a15 < 0)
    {
      operator delete(__p);
    }

    boost::archive::detail::basic_oarchive::~basic_oarchive(&a16);
    boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_25E314EAC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x25F8B0470](v1);
  _Unwind_Resume(a1);
}

void boost::archive::text_oarchive::~text_oarchive(boost::archive::text_oarchive *this)
{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive();
}

{
  boost::archive::detail::basic_oarchive::~basic_oarchive(this);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive();
}

void sub_25E31505C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    __cxa_begin_catch(exception_object);
    v6 = logHandle();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v7)
      {
        [PPSHistogram initWithBinCount:range:metricName:];
      }

      __cxa_end_catch();
    }

    else
    {
      if (v7)
      {
        [PPSHistogram initWithBinCount:range:metricName:];
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x25E31501CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_25E3159A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  a40 = &a58;
  std::vector<pps::AxisConfig_Internal>::__destroy_vector::operator()[abi:ne200100](&a40);

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_25E3161F0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_25E3163A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  std::__function::__value_func<void ()(NSMutableArray *)>::~__value_func[abi:ne200100](&a14);

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::function<void ()(NSMutableArray *)>::operator()(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &v4);
}

void sub_25E31695C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char *a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(&a27, a28);
  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_25E316F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v32 = logHandle();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (a2 == 2)
    {
      if (v33)
      {
        [PPSHistogram recordSample:];
      }
    }

    else if (v33)
    {
      [PPSHistogram recordSample:];
    }

    __cxa_end_catch();
    JUMPOUT(0x25E316EF4);
  }

  _Unwind_Resume(exception_object);
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<double>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<double>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<pps::AxisEnum>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::map<int,std::vector<std::string>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::pair<int const,std::vector<std::string>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::singleton_wrapper(&boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::~singleton_wrapper, &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_instance(void)::t, &dword_25E225000);
  }

  return &boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<std::string>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<std::string>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::pair<int const,std::vector<std::string>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::transform::id>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<double>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<unsigned long long>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<pps::AxisEnum>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::vector<std::string>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::pair<int const,std::vector<std::string>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,std::map<int,std::vector<std::string>>>>::get_instance(void)::t;
}

void *boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::get_instance()
{
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    boost::serialization::singleton<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_instance();
  }

  {
    boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::singleton_wrapper(boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::get_instance(void)::t);
    __cxa_atexit(boost::serialization::detail::singleton_wrapper<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::~singleton_wrapper, boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::get_instance(void)::t, &dword_25E225000);
  }

  return boost::serialization::singleton<boost::archive::detail::oserializer<boost::archive::text_oarchive,pps::Histogram_Internal>>::get_instance(void)::t;
}

void *boost::archive::detail::common_iarchive<boost::archive::text_iarchive>::vload(uint64_t a1, _DWORD *a2)
{
  result = boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>((a1 + 40));
  *a2 = 0;
  return result;
}

void *boost::archive::detail::common_iarchive<boost::archive::text_iarchive>::vload(uint64_t a1)
{
  return boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::object_id_type>((a1 + 40));
}

{
  return boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::class_id_type>((a1 + 40));
}

{
  return boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::tracking_type>((a1 + 40));
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B0290](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::throw_exception<boost::archive::archive_exception>(const boost::archive::archive_exception *a1)
{
  exception = __cxa_allocate_exception(0x90uLL);
  boost::archive::archive_exception::archive_exception(exception, a1);
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::object_id_type>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B0290](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::class_id_type>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B02B0](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::archive::tracking_type>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B0260](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void pps::Histogram_Internal::~Histogram_Internal(char **this)
{
  *this = &unk_286FF0218;
  std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy((this + 11), this[12]);
  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy((this + 4));
  v3 = (this + 1);
  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  pps::Histogram_Internal::~Histogram_Internal(this);

  JUMPOUT(0x25F8B04C0);
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 == 0) != (*(a1 + 8) == 0))
  {
    __assert_rtn("destroy", "unlimited_storage.hpp", 494, "(ptr == nullptr) == (size == 0)");
  }

  if (v1)
  {
    v3 = a1;
    _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNS6_7destroyEvEUlPT_E_JEEEDcOS8_DpOT0_(a1, &v3);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }
}

void _ZNK5boost9histogram17unlimited_storageINSt3__19allocatorIcEEE11buffer_type5applyIZNS6_7destroyEvEUlPT_E_JEEEDcOS8_DpOT0_(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  if (v3 <= 1)
  {
    if (!*(a1 + 16))
    {
      boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>(&v6, v4, *(v5 + 8));
      return;
    }

    if (v3 == 1)
    {
      boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>(&v7, v4, *(v5 + 8));
      return;
    }
  }

  else
  {
    switch(v3)
    {
      case 2u:
        boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>(&v8, v4, *(v5 + 8));
        return;
      case 3u:
        boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>(&v9, v4, *(v5 + 8));
        return;
      case 4u:
        boost::histogram::detail::destroy_buffer<std::allocator<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>(&v10, v4, *(v5 + 8));
        return;
    }
  }

  boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>(&v11, v4, *(v5 + 8));
}

void boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>(int a1, void *__p, uint64_t a3)
{
  if (!__p)
  {
    boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>();
  }

  if (!a3)
  {
    boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>();
  }

  operator delete(__p);
}

void boost::histogram::detail::destroy_buffer<std::allocator<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>(int a1, char *__p, uint64_t a3)
{
  if (!__p)
  {
    boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>();
  }

  if (!a3)
  {
    boost::histogram::detail::destroy_buffer<std::allocator<unsigned char>>();
  }

  v4 = 24 * a3;
  do
  {
    v5 = *&__p[v4 - 24];
    if (v5)
    {
      *&__p[v4 - 16] = v5;
      operator delete(v5);
    }

    v4 -= 24;
  }

  while (v4);

  operator delete(__p);
}

void std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      boost::detail::variant::destroyer::internal_visit<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>(&v3, a1 + 8);
      return;
    }

    if (v1)
    {
      boost::detail::variant::forced_return<void>();
    }
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void boost::detail::variant::destroyer::internal_visit<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>::~variable(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t ___ZL9logHandlev_block_invoke()
{
  logHandle(void)::logHandle = os_log_create("com.apple.PerfPowerServicesReader", "PPSHistogram");

  return MEMORY[0x2821F96F8]();
}

void boost::archive::detail::common_oarchive<boost::archive::text_oarchive>::vsave(boost::archive::detail::basic_oarchive *a1, int *a2)
{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  v3 = *a2;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

void boost::archive::detail::common_oarchive<boost::archive::text_oarchive>::vsave(boost::archive::detail::basic_oarchive *a1)
{
  *(a1 + 10) = 1;
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

{
  boost::archive::detail::basic_oarchive::end_preamble(a1);
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::newtoken();
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<unsigned int>(void *a1, unsigned int *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0370);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::object_id_type>(void *a1, unsigned int *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0370);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::object_reference_type>(void *a1, unsigned int *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0370);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::class_id_type>(void *a1, __int16 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0390);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::class_id_reference_type>(void *a1, __int16 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0390);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

void boost::archive::basic_text_oprimitive<std::ostream>::save_impl<boost::archive::tracking_type>(void *a1, unsigned __int8 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + *(**a1 - 24) + 32) & 5) == 0)
  {
    v2 = *a2;
    v3 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F8B0340);
  }

  boost::archive::archive_exception::archive_exception(v4, 13, 0, 0);
  boost::serialization::throw_exception<boost::archive::archive_exception>(v4);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void pps::AxisConfig_Internal::~AxisConfig_Internal(pps::AxisConfig_Internal *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279A0EFE0, MEMORY[0x277D825F0]);
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

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F8B03F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25E31AE4C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::vector<std::string>>,std::__map_value_compare<int,std::__value_type<int,std::vector<std::string>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<std::string>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0338;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF0338;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::extended_type_info_typeid(a1) = &unk_286FF0338;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF03E0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF03E0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

uint64_t boost::serialization::typeid_system::extended_type_info_typeid_0::get_debug_info(boost::serialization::typeid_system::extended_type_info_typeid_0 *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    return *(v1 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

uint64_t boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,pps::Histogram_Internal>::load_object_data(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);

  return pps::Histogram_Internal::serialize<boost::archive::text_iarchive>(a3, v4);
}

uint64_t pps::Histogram_Internal::serialize<boost::archive::text_iarchive>(uint64_t a1, boost::archive::detail::basic_iarchive_impl **a2)
{
  instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a1 + 8, instance);
  v5 = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<pps::AxisEnum>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a1 + 64, v5);
  v6 = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::map<int,std::vector<std::string>>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a2, a1 + 88, v6);
}

void *boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(char **a1)
{
  v1 = **a1;
  if (!result)
  {
    __cxa_bad_cast();
  }

  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0428;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF0428;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>::extended_type_info_typeid(a1) = &unk_286FF0428;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF04D0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF04D0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

uint64_t boost::serialization::access::destroy<boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(result + 24);
    v2 = v1;
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__destroy_vector::operator()[abi:ne200100](&v2);
    return MEMORY[0x25F8B04C0](v1, 0x10A0C400559A86CLL);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::histogram<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>>::load_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);

  return boost::histogram::serialize<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>(v4, a3);
}

uint64_t boost::histogram::serialize<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::unlimited_storage<std::allocator<char>>>(boost::archive::detail::basic_iarchive_impl **a1, unint64_t a2)
{
  instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a1, a2, instance);
  v5 = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(a1, a2 + 24, v5);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0528;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF0528;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::extended_type_info_typeid(a1) = &unk_286FF0528;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF05D0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF05D0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

void **boost::serialization::access::destroy<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__destroy_vector::operator()[abi:ne200100](&v2);
    return MEMORY[0x25F8B04C0](v1, 0x20C40960023A9);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::load_object_data(uint64_t a1, char **a2, uint64_t *a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v7);
  v6 = 0;
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>(v4 + 5);
  if (v7 >= 4u)
  {
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(v4 + 5);
  }

  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::reserve(a3, v6);
  v5 = v6;
  boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(v4, a3, &v5);
}

void *std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(result, a2);
    }

    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25E31BB90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(boost::archive::detail::basic_iarchive_impl **a1, uint64_t *a2, unint64_t *a3)
{
  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::resize(a2, *a3);
  v6 = *a2;
  if ((*a3)--)
  {
    do
    {
      instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
      boost::archive::detail::basic_iarchive::load_object(a1, v6, instance);
      v9 = (*a3)--;
      v6 += 56;
    }

    while (v9);
  }
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B02A0](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant(a4, v7);
      v7 += 56;
      a4 = v8 + 56;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v6);
      v6 += 56;
    }
  }
}

uint64_t boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant(uint64_t result, uint64_t a2)
{
  v2 = *a2 ^ (*a2 >> 31);
  if (v2 == 2)
  {
    *(result + 8) = *(a2 + 8);
    v5 = *(a2 + 16);
    *(result + 32) = *(a2 + 32);
    *(result + 16) = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(result + 40) = *(a2 + 40);
  }

  else if (v2 == 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v4 = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
    *(result + 32) = v4;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    if (v2)
    {
      boost::detail::variant::forced_return<void>();
    }

    *(result + 8) = *(a2 + 8);
    v3 = *(a2 + 16);
    *(result + 32) = *(a2 + 32);
    *(result + 16) = v3;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(result + 40) = *(a2 + 40);
  }

  *result = *a2 ^ (*a2 >> 31);
  return result;
}

uint64_t std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 56 * a2;
    while (v3 != v7)
    {
      v3 -= 56;
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(v3);
    }

    a1[1] = v7;
  }
}

uint64_t *std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 56 * a2;
      do
      {
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 48) = 0x3FF0000000000000;
        v4 += 56;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x492492492492492)
    {
      std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>(result, v9);
    }

    v11 = 56 * v6;
    v17 = 0;
    v18 = 56 * v6;
    *(&v19 + 1) = 0;
    v12 = 56 * v6;
    do
    {
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 48) = 0x3FF0000000000000;
      v12 += 56;
    }

    while (v12 != 56 * v6 + 56 * a2);
    *&v19 = v11 + 56 * a2;
    v13 = result[1];
    v14 = v11 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(&v17);
  }

  return result;
}

void sub_25E31C10C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0628;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF0628;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::extended_type_info_typeid(a1) = &unk_286FF0628;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF06D0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF06D0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

uint64_t boost::serialization::access::destroy<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(uint64_t result)
{
  if (result)
  {
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(result);

    JUMPOUT(0x25F8B04C0);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::load_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);
  instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(v4, a3, instance);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0740;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF0740;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::extended_type_info_typeid(a1) = &unk_286FF0740;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF07E8;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF07E8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::load_object_data(uint64_t a1, char **a2, int *a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);

  boost::serialization::load<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(v4, a3);
}

void boost::serialization::load<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(uint64_t a1, int *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  boost::archive::basic_text_iprimitive<std::istream>::load<int>((a1 + 40));
  boost::serialization::variant_impl<boost::mpl::l_item<mpl_::long_<3l>,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::mpl::l_item<mpl_::long_<2l>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::mpl::l_item<mpl_::long_<1l>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::mpl::l_end>>>>::load_impl::invoke<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(a1, 0, a2);
  v4 = *MEMORY[0x277D85DE8];
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<int>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B0280](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::variant_impl<boost::mpl::l_item<mpl_::long_<3l>,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::mpl::l_item<mpl_::long_<2l>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::mpl::l_item<mpl_::long_<1l>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::mpl::l_end>>>>::load_impl::invoke<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(boost::archive::detail::basic_iarchive_impl **a1, int a2, int *a3)
{
  if (a2)
  {
    v5 = a2 - 1;

    boost::serialization::variant_impl<boost::mpl::l_item<mpl_::long_<2l>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::mpl::l_item<mpl_::long_<1l>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::mpl::l_end>>>::load_impl::invoke<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(a1, v5, a3);
  }

  else
  {
    v8 = 0;
    *__p = 0u;
    v10 = 0u;
    v11 = 0x3FF0000000000000;
    instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance();
    boost::archive::detail::basic_iarchive::load_object(a1, &v8, instance);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assign<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>(a3, &v8);
    v7 = boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>(a3);
    if (!v7)
    {
      v12 = &unk_286FF0968;
      boost::throw_exception<boost::bad_get>();
    }

    boost::archive::detail::basic_iarchive::reset_object_address(a1, v7, &v8);
    if (SBYTE7(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25E31C97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assign<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>(uint64_t a1, _DWORD *a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::direct_assigner<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>(a1, &v5) & 1) == 0)
  {
    v6 = boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::initializer_root,mpl_::int_<0>>,boost::mpl::l_iter<boost::mpl::list3<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node::initialize(v7, a2);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant_assign(a1, &v6);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(&v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25E31CA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(va);
  _Unwind_Resume(a1);
}

uint64_t boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::direct_assigner<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>(uint64_t a1, _DWORD **a2)
{
  v2 = *a1 ^ (*a1 >> 31);
  if ((v2 - 1) < 2)
  {
    return 0;
  }

  if (v2)
  {
    boost::detail::variant::forced_return<void>();
  }

  v5 = *a2;
  *(a1 + 8) = **a2;
  std::string::operator=((a1 + 16), (v5 + 2));
  *(a1 + 40) = *(v5 + 2);
  return 1;
}

void boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant_assign(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == *a2)
  {
    v5 = (a2 + 8);
    v12 = (a2 + 8);
    switch(v4 ^ (v4 >> 31))
    {
      case 0:
        *(a1 + 8) = *v5;
        if (*(a1 + 39) < 0)
        {
          operator delete(*(a1 + 16));
        }

        v6 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v6;
        *(a2 + 39) = 0;
        *(a2 + 16) = 0;
        *(a1 + 40) = *(a2 + 40);
        return;
      case 1:
        boost::detail::variant::move_storage::internal_visit<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>(&v12, a1 + 8);
        return;
      case 2:
        *(a1 + 8) = *v5;
        if (*(a1 + 39) < 0)
        {
          operator delete(*(a1 + 16));
        }

        v10 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v10;
        *(a2 + 39) = 0;
        *(a2 + 16) = 0;
        *(a1 + 40) = *(a2 + 40);
        return;
      default:
        goto LABEL_16;
    }
  }

  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v7;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a1 + 40) = *(a2 + 40);
      *a1 = 0;
      return;
    case 1:
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(a1);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v8 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v8;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
      v9 = 1;
      goto LABEL_14;
    case 2:
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(a1);
      *(a1 + 8) = *(a2 + 8);
      v11 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v11;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a1 + 40) = *(a2 + 40);
      v9 = 2;
LABEL_14:
      *a1 = v9;
      return;
    default:
LABEL_16:
      boost::detail::variant::forced_return<void>();
  }
}

{
  v4 = *a2;
  if (*a1 == *a2)
  {
    switch(*a1 ^ (*a1 >> 31))
    {
      case 0:
        *(a1 + 8) = *(a2 + 8);
        std::string::operator=((a1 + 16), (a2 + 16));
        *(a1 + 40) = *(a2 + 40);
        return;
      case 1:
        if (a2 != a1)
        {
          std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
        }

        std::string::operator=((a1 + 32), (a2 + 32));
        return;
      case 2:
        *(a1 + 8) = *(a2 + 8);
        std::string::operator=((a1 + 16), (a2 + 16));
        *(a1 + 40) = *(a2 + 40);
        return;
      default:
        goto LABEL_15;
    }
  }

  v5 = a1;
  v6 = v4 ^ (v4 >> 31);
  switch(v6)
  {
    case 0:
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assigner::assign_impl<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::has_fallback_type_>(&v5, (a2 + 8));
      break;
    case 1:
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assigner::assign_impl<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::has_fallback_type_>(&v5, a2 + 8);
      break;
    case 2:
      boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assigner::assign_impl<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::has_fallback_type_>(&v5, (a2 + 8));
      break;
    default:
LABEL_15:
      boost::detail::variant::forced_return<void>();
  }
}

uint64_t boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::initializer_root,mpl_::int_<0>>,boost::mpl::l_iter<boost::mpl::list3<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node::initialize(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  return 0;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

__n128 boost::detail::variant::move_storage::internal_visit<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>(__n128 **a1, uint64_t a2)
{
  v3 = *a1;
  std::vector<double>::__move_assign(a2, *a1);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  result = *(v3 + 24);
  *(a2 + 40) = v3[2].n128_u64[1];
  *(a2 + 24) = result;
  v3[2].n128_u8[15] = 0;
  v3[1].n128_u8[8] = 0;
  return result;
}

__n128 std::vector<double>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void boost::throw_exception<boost::bad_get>()
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::wrapexcept<boost::bad_get>::wrapexcept(exception);
}

_DWORD *boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>(int *a1)
{
  v2 = *a1;
  result = a1 + 2;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0;
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return result;
}

uint64_t boost::wrapexcept<boost::bad_get>::wrapexcept(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *result = &unk_286FF08C0;
  *(result + 8) = &unk_286FF08F0;
  *(result + 16) = &unk_286FF0918;
  return result;
}

uint64_t boost::wrapexcept<boost::bad_get>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

void sub_25E31D1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_get>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::wrapexcept<boost::bad_get>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_get>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x25F8B04C0);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_get>::~wrapexcept(uint64_t a1)
{
  *(a1 + 8) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));

  std::exception::~exception(a1);
}

{
  *(a1 + 8) = &unk_286FF0990;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));
  std::exception::~exception(a1);

  JUMPOUT(0x25F8B04C0);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_get>::~wrapexcept(void *a1)
{
  *a1 = &unk_286FF0990;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

{
  *a1 = &unk_286FF0990;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x25F8B04C0);
}

void boost::bad_get::~bad_get(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x25F8B04C0);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::wrapexcept<boost::bad_get>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286FF0938;
  *(a1 + 8) = &unk_286FF0968;
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_286FF0990;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_286FF08C0;
  *(a1 + 8) = &unk_286FF08F0;
  *(a1 + 16) = &unk_286FF0918;
  return a1;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::serialization::variant_impl<boost::mpl::l_item<mpl_::long_<2l>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::mpl::l_item<mpl_::long_<1l>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::mpl::l_end>>>::load_impl::invoke<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(boost::archive::detail::basic_iarchive_impl **a1, int a2, int *a3)
{
  if (a2)
  {
    v5 = a2 - 1;

    boost::serialization::variant_impl<boost::mpl::l_item<mpl_::long_<1l>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::mpl::l_end>>::load_impl::invoke<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(a1, v5, a3);
  }

  else
  {
    *__p = 0u;
    v10 = 0u;
    *v8 = 0u;
    instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance();
    boost::archive::detail::basic_iarchive::load_object(a1, v8, instance);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assign<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>(a3, v8);
    v7 = boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>(a3);
    if (!v7)
    {
      v11 = &unk_286FF0968;
      boost::throw_exception<boost::bad_get>();
    }

    boost::archive::detail::basic_iarchive::reset_object_address(a1, v7, v8);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[1]);
    }

    if (v8[0])
    {
      v8[1] = v8[0];
      operator delete(v8[0]);
    }
  }
}

void boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assign<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::direct_assigner<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>(a1, &v5) & 1) == 0)
  {
    memset(v7, 0, sizeof(v7));
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v7, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v8 = *(a2 + 24);
    }

    v6 = 1;
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant_assign(a1, &v6);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(&v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25E31D8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::direct_assigner<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>(uint64_t a1, const std::string **a2)
{
  v4 = *a1;
  v3 = (a1 + 8);
  v5 = 0;
  switch(v4 ^ (v4 >> 31))
  {
    case 0:
    case 2:
      return v5;
    case 1:
      v6 = *a2;
      if (*a2 != v3)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v3, v6->__r_.__value_.__l.__data_, v6->__r_.__value_.__l.__size_, (v6->__r_.__value_.__l.__size_ - v6->__r_.__value_.__r.__words[0]) >> 3);
      }

      std::string::operator=((a1 + 32), v6 + 1);
      v5 = 1;
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return v5;
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25E31DBB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>(int *a1)
{
  v1 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 2:
      return v1;
    case 1:
      v1 = a1 + 2;
      break;
    default:
      boost::detail::variant::forced_return<void>();
  }

  return v1;
}

void boost::serialization::variant_impl<boost::mpl::l_item<mpl_::long_<1l>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>,boost::mpl::l_end>>::load_impl::invoke<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(boost::archive::detail::basic_iarchive_impl **a1, int a2, int *a3)
{
  if (!a2)
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
    __p = 0;
    v11 = 0;
    instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance();
    boost::archive::detail::basic_iarchive::load_object(a1, &v7, instance);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assign<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(a3, &v7);
    v6 = boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(a3);
    if (!v6)
    {
      v12 = &unk_286FF0968;
      boost::throw_exception<boost::bad_get>();
    }

    boost::archive::detail::basic_iarchive::reset_object_address(a1, v6, &v7);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_25E31DCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::assign<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(uint64_t a1, _DWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ((boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::direct_assigner<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(a1, &v5) & 1) == 0)
  {
    v6 = boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::initializer_root,mpl_::int_<0>>,boost::mpl::l_iter<boost::mpl::list3<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node,mpl_::int_<1>>,boost::mpl::l_iter<boost::mpl::list2<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node,mpl_::int_<2>>,boost::mpl::l_iter<boost::mpl::list1<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node::initialize(v7, a2);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::variant_assign(a1, &v6);
    boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(&v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25E31DDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::destroy_content(va);
  _Unwind_Resume(a1);
}

uint64_t boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::direct_assigner<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(uint64_t a1, _DWORD **a2)
{
  v2 = *a1 ^ (*a1 >> 31);
  if (v2 < 2)
  {
    return 0;
  }

  if (v2 != 2)
  {
    boost::detail::variant::forced_return<void>();
  }

  v5 = *a2;
  *(a1 + 8) = **a2;
  std::string::operator=((a1 + 16), (v5 + 2));
  *(a1 + 40) = v5[8];
  return 1;
}

uint64_t boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::make_initializer_node::apply<boost::mpl::pair<boost::detail::variant::initializer_root,mpl_::int_<0>>,boost::mpl::l_iter<boost::mpl::list3<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node,mpl_::int_<1>>,boost::mpl::l_iter<boost::mpl::list2<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node,mpl_::int_<2>>,boost::mpl::l_iter<boost::mpl::list1<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::initializer_node::initialize(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  a1[8] = *(a2 + 32);
  return 2;
}

int *boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::apply_visitor<boost::detail::variant::get_visitor<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 < 2)
  {
    return 0;
  }

  if (v1 != 2)
  {
    boost::detail::variant::forced_return<void>();
  }

  return a1 + 2;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF09B0;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF09B0;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>::extended_type_info_typeid(a1) = &unk_286FF09B0;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF0A58;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0A58;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

uint64_t boost::serialization::access::destroy<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>(uint64_t result)
{
  if (result)
  {
    if (*(result + 31) < 0)
    {
      operator delete(*(result + 8));
    }

    JUMPOUT(0x25F8B04C0);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>::load_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);

  boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::serialize<boost::archive::text_iarchive>(a3, v4);
}

void boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>::serialize<boost::archive::text_iarchive>(unint64_t a1, uint64_t a2)
{
  instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(a2, a1, instance);
  boost::archive::basic_text_iprimitive<std::istream>::load<int>((a2 + 40));
  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load();
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<double>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B0270](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0AF8;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF0AF8;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>::extended_type_info_typeid(a1) = &unk_286FF0AF8;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF0BA0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0BA0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F8B04C0);
  }
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF0BE8;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF0BE8;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::transform::id>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF0BE8;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::transform::id>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F8B04C0);
  }
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF0C68;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF0C68;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF0C68;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0CE8;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF0CE8;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>::extended_type_info_typeid(a1) = &unk_286FF0CE8;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF0D90;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0D90;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

uint64_t boost::serialization::access::destroy<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 47) < 0)
    {
      operator delete(*(result + 24));
    }

    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x25F8B04C0);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>::load_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);
  instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_instance();
  boost::archive::detail::basic_iarchive::load_object(v4, a3, instance);

  boost::archive::text_iarchive_impl<boost::archive::text_iarchive>::load();
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<double>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0E00;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<double>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF0E00;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<double>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<double>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<std::vector<double>>::extended_type_info_typeid(a1) = &unk_286FF0E00;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<std::vector<double>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF0EA8;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<std::vector<double>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF0EA8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<std::vector<double>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<std::vector<double>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

void **boost::serialization::access::destroy<std::vector<double>>(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x25F8B04C0);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>::load_object_data(uint64_t a1, char **a2, uint64_t *a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);
  boost::archive::detail::basic_iarchive::get_library_version(v4, &v7);
  v6 = 0;
  boost::archive::basic_text_iprimitive<std::istream>::load<boost::serialization::collection_size_type>(v4 + 5);
  if (v7 >= 4u)
  {
    boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>(v4 + 5);
  }

  std::vector<double>::reserve(a3, v6);
  v5 = v6;
  boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<double>>(v4, a3, &v5);
}

void boost::serialization::stl::collection_load_impl<boost::archive::text_iarchive,std::vector<double>>(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  std::vector<double>::resize(a2, *a3);
  v6 = *a2;
  if ((*a3)--)
  {
    do
    {
      v8 = v6 + 8;
      boost::archive::basic_text_iprimitive<std::istream>::load<double>((a1 + 40));
      v9 = (*a3)--;
      v6 = v8;
    }

    while (v9);
  }
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF0F00;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF0F00;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<double>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF0F00;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<double>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF0F80;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF0F80;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF0F80;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1000;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF1000;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::extended_type_info_typeid(a1) = &unk_286FF1000;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF10A8;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF10A8;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

uint64_t boost::serialization::access::destroy<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>(uint64_t result)
{
  if (result)
  {
    if (*(result + 31) < 0)
    {
      operator delete(*(result + 8));
    }

    JUMPOUT(0x25F8B04C0);
  }

  return result;
}

void boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>::load_object_data(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);

  boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>::serialize<boost::archive::text_iarchive>(a3, v4);
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1118;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1118;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1118;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1198;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1198;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1198;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1218;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1218;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1218;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::~singleton_wrapper(boost::archive::detail::basic_iserializer *a1)
{
  *a1 = &unk_286FF1298;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);
}

{
  *a1 = &unk_286FF1298;
  boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::archive::detail::basic_iserializer::~basic_iserializer(a1);

  JUMPOUT(0x25F8B04C0);
}

void *boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::singleton_wrapper(void *a1)
{
  instance = boost::serialization::singleton<boost::serialization::extended_type_info_typeid<std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_instance();
  boost::archive::detail::basic_iserializer::basic_iserializer(a1, instance);
  *a1 = &unk_286FF1298;
  if (boost::serialization::detail::singleton_wrapper<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<boost::histogram::axis::variant<boost::histogram::axis::regular<double,boost::use_default,boost::use_default,boost::use_default>,boost::histogram::axis::variable<double,boost::use_default,boost::use_default,std::allocator<double>>,boost::histogram::axis::integer<int,boost::use_default,boost::histogram::axis::option::bit<1u>>>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1318;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF1318;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>::extended_type_info_typeid(a1) = &unk_286FF1318;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF13C0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF13C0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<boost::histogram::unlimited_storage<std::allocator<char>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

uint64_t boost::serialization::access::destroy<boost::histogram::unlimited_storage<std::allocator<char>>>(uint64_t result)
{
  if (result)
  {
    boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(result);

    JUMPOUT(0x25F8B04C0);
  }

  return result;
}

unint64_t *boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::unlimited_storage<std::allocator<char>>>::load_object_data(uint64_t a1, char **a2, unint64_t *a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);

  return boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(a3, v4);
}

unint64_t *boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(unint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v10 = 0;
  v6[2] = 0;
  boost::archive::basic_text_iprimitive<std::istream>::load<short>((a2 + 40));
  v9 = 0;
  boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>((a2 + 40));
  v6[0] = a1;
  v6[1] = 0;
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#1}>(&v7, v6);
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(&v7);
  v7 = a1;
  v8 = a2;
  result = boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#2}>(a1, &v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#1}>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v2 != 1)
      {
LABEL_27:
        if (v3)
        {
          boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#1}>();
        }

        v14 = *a2;
        v15 = a2[1];

        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<double>(v14, v15);
        return;
      }

      if (v3)
      {
        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#1}>();
      }

      v6 = *a2;
      v7 = a2[1];

      boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned short>(v6, v7);
    }

    else
    {
      if (v3)
      {
        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#1}>();
      }

      v12 = *a2;
      v13 = a2[1];

      boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned char>(v12, v13);
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        if (v3)
        {
          boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#1}>();
        }

        v8 = *a2;
        v9 = a2[1];

        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned int>(v8, v9);
        break;
      case 3u:
        if (v3)
        {
          boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#1}>();
        }

        v10 = *a2;
        v11 = a2[1];

        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned long long>(v10, v11);
        break;
      case 4u:
        if (v3)
        {
          boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#1}>();
        }

        v4 = *a2;
        v5 = a2[1];

        boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>(v4, v5);
        return;
      default:
        goto LABEL_27;
    }
  }
}

unint64_t *boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::apply<void boost::histogram::unlimited_storage<std::allocator<char>>::serialize<boost::archive::text_iarchive>(boost::archive::text_iarchive &,unsigned int)::{lambda(boost::archive::text_iarchive*)#2}>(unint64_t *result, uint64_t *a2)
{
  v2 = *(result + 16);
  v3 = *a2;
  if (v2 <= 1)
  {
    if (*(result + 16))
    {
      if (v2 != 1)
      {
LABEL_24:
        v22 = *(v3 + 8);
        if (v22)
        {
          v23 = *(v3 + 24);
          v24 = a2[1];
          do
          {
            --v22;
            v25 = v23 + 8;
            result = boost::archive::basic_text_iprimitive<std::istream>::load<double>((v24 + 40));
            v23 = v25;
          }

          while (v22);
        }

        return result;
      }

      v7 = *(v3 + 8);
      if (v7)
      {
        v8 = *(v3 + 24);
        v9 = a2[1];
        do
        {
          --v7;
          v10 = v8 + 2;
          result = boost::archive::basic_text_iprimitive<std::istream>::load<unsigned short>((v9 + 40));
          v8 = v10;
        }

        while (v7);
      }
    }

    else
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v20 = *(v3 + 24);
        v21 = a2[1];
        do
        {
          --v19;
          result = boost::archive::basic_text_iprimitive<std::istream>::load<unsigned short>((v21 + 40));
          *v20++ = 0;
        }

        while (v19);
      }
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        v11 = *(v3 + 8);
        if (v11)
        {
          v12 = *(v3 + 24);
          v13 = a2[1];
          do
          {
            --v11;
            v14 = v12 + 4;
            result = boost::archive::basic_text_iprimitive<std::istream>::load<unsigned int>((v13 + 40));
            v12 = v14;
          }

          while (v11);
        }

        break;
      case 3u:
        v15 = *(v3 + 8);
        if (v15)
        {
          v16 = *(v3 + 24);
          v17 = a2[1];
          do
          {
            --v15;
            v18 = v16 + 8;
            result = boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long long>((v17 + 40));
            v16 = v18;
          }

          while (v15);
        }

        break;
      case 4u:
        v4 = a2[1];
        v5 = *(v3 + 24);
        v6 = *(v3 + 8);
        v26[0] = v5;
        v26[1] = v6;
        return boost::serialization::array_wrapper<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::serialize_optimized<boost::archive::text_iarchive>(v26, v4);
      default:
        goto LABEL_24;
    }
  }

  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<short>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B02B0](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B02A0](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned char>(uint64_t a1, uint64_t a2)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  if (a2)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned short>(uint64_t a1, uint64_t a2)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned short>>(&v4, a2);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned int>(uint64_t a1, unint64_t a2)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned int>>(&v4, a2);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<unsigned long long>(uint64_t a1, unint64_t a2)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned long long>>(&v4, a2);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

void boost::histogram::detail::create_buffer<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>(uint64_t a1, unint64_t a2)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>(&v4, a2);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

void boost::histogram::detail::create_buffer<std::allocator<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<unsigned long long>::vector[abi:ne200100]<0>(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25E320958(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::make<double>(uint64_t a1, unint64_t a2)
{
  boost::histogram::unlimited_storage<std::allocator<char>>::buffer_type::destroy(a1);
  if (a2)
  {
    boost::histogram::detail::create_buffer<std::allocator<unsigned long long>>(&v4, a2);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<unsigned short>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B02C0](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *boost::archive::basic_text_iprimitive<std::istream>::load<unsigned long long>(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x25F8B02D0](*a1);
  if ((*(result + *(*result - 24) + 32) & 5) != 0)
  {
    boost::archive::archive_exception::archive_exception(v3, 8, 0, 0);
    boost::serialization::throw_exception<boost::archive::archive_exception>(v3);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *boost::serialization::array_wrapper<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::serialize_optimized<boost::archive::text_iarchive>(unint64_t *result, boost::archive::detail::basic_iarchive_impl **a2)
{
  v2 = result[1];
  if (v2)
  {
    v4 = *result;
    do
    {
      --v2;
      instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_instance();
      result = boost::archive::detail::basic_iarchive::load_object(a2, v4, instance);
      v4 += 24;
    }

    while (v2);
  }

  return result;
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1418;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF1418;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::singleton_wrapper(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  *boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::extended_type_info_typeid(a1) = &unk_286FF1418;
  if (boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>>::get_is_destroyed(void)::is_destroyed_flag == 1)
  {
    __assert_rtn("singleton_wrapper", "singleton.hpp", 148, "! is_destroyed()");
  }

  return a1;
}

boost::serialization::typeid_system::extended_type_info_typeid_0 *boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::extended_type_info_typeid(boost::serialization::typeid_system::extended_type_info_typeid_0 *a1)
{
  v2 = boost::serialization::typeid_system::extended_type_info_typeid_0::extended_type_info_typeid_0(a1, 0);
  *v2 = &unk_286FF14C0;
  boost::serialization::extended_type_info::key_register(a1);
  return a1;
}

void boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::~extended_type_info_typeid(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF14C0;
  boost::serialization::extended_type_info::key_unregister(a1);
  boost::serialization::typeid_system::extended_type_info_typeid_0::type_unregister(a1);

  boost::serialization::typeid_system::extended_type_info_typeid_0::~extended_type_info_typeid_0(a1);
}

{
  boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}

void boost::serialization::extended_type_info_typeid<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::construct(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }

    if (a2 == 1)
    {
      boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 3:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
      case 4:
        boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
    }
  }

  boost::serialization::extended_type_info_typeid<pps::Histogram_Internal>::construct();
}

void **boost::serialization::access::destroy<boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x25F8B04C0);
  }

  return result;
}

uint64_t boost::archive::detail::iserializer<boost::archive::text_iarchive,boost::histogram::detail::mp_int<std::allocator<unsigned long long>>>::load_object_data(uint64_t a1, char **a2, unint64_t a3)
{
  v4 = boost::serialization::smart_cast_impl::reference<boost::archive::text_iarchive &>::polymorphic::cross::cast<boost::archive::detail::basic_iarchive>(a2);
  instance = boost::serialization::singleton<boost::archive::detail::iserializer<boost::archive::text_iarchive,std::vector<unsigned long long>>>::get_instance();

  return boost::archive::detail::basic_iarchive::load_object(v4, a3, instance);
}

void boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::~singleton_wrapper(boost::serialization::extended_type_info *a1)
{
  *a1 = &unk_286FF1518;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>::~extended_type_info_typeid(a1);
}

{
  *a1 = &unk_286FF1518;
  boost::serialization::detail::singleton_wrapper<boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>>::get_is_destroyed(void)::is_destroyed_flag = 1;
  boost::serialization::extended_type_info_typeid<std::vector<unsigned long long>>::~extended_type_info_typeid(a1);

  JUMPOUT(0x25F8B04C0);
}