uint64_t AWDMETRICSKCellularPowerLogLteNrRxDiversityHistReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v57[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v57[0] & 0x7F) << v5;
        if ((v57[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 8)
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
          LOBYTE(v57[0]) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v57[0] & 0x7F) << v33;
          if ((v57[0] & 0x80) == 0)
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
        goto LABEL_108;
      }

      if (v13 != 2)
      {
        if (v13 == 8)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 44) |= 0x10u;
          while (1)
          {
            LOBYTE(v57[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v57[0] & 0x7F) << v21;
            if ((v57[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
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
            v20 = v23;
          }

LABEL_106:
          v54 = 36;
          goto LABEL_107;
        }

LABEL_62:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_108;
      }

      v53 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBin);
      [a1 addCell:v53];
      v57[0] = 0;
      v57[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogLteNrRxDiversityHistRxdBinReadFrom(v53, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_108:
      v55 = [a2 position];
      if (v55 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 10)
    {
      if (v13 == 11)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 44) |= 0x20u;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v57[0] & 0x7F) << v46;
          if ((v57[0] & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            LOBYTE(v52) = 0;
            goto LABEL_94;
          }
        }

        v52 = (v48 != 0) & ~[a2 hasError];
LABEL_94:
        *(a1 + 40) = v52;
        goto LABEL_108;
      }

      if (v13 == 12)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v57[0] & 0x7F) << v27;
          if ((v57[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
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
          v20 = v29;
        }

LABEL_102:
        v54 = 28;
        goto LABEL_107;
      }
    }

    else
    {
      if (v13 == 9)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v57[0] & 0x7F) << v40;
          if ((v57[0] & 0x80) == 0)
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
        v54 = 24;
        goto LABEL_107;
      }

      if (v13 == 10)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          LOBYTE(v57[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v57[0] & 0x7F) << v14;
          if ((v57[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
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
          v20 = v16;
        }

LABEL_98:
        v54 = 32;
LABEL_107:
        *(a1 + v54) = v20;
        goto LABEL_108;
      }
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogSFTStateEventReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDMETRICSKCellularPowerLogSFTRxTxHistReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 32) |= 1u;
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

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogSFTRxTxHistMBin);
      [a1 addBin:v14];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogSFTRxTxHistMBinReadFrom(v14, a2))
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

    if (v13 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 32) |= 4u;
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
          v21 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v31;
      }

LABEL_65:
      v35 = 28;
      goto LABEL_66;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38[0] & 0x7F) << v15;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_57:
      v35 = 24;
LABEL_66:
      *(a1 + v35) = v21;
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

uint64_t AWDMETRICSKCellularPowerLogSFTRxTxHistMBinReadFrom(uint64_t a1, void *a2)
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
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSFTRxTxHistMBin__binId;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSFTRxTxHistMBin__binId;
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
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSFTRxTxHistMBin__duration;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSFTRxTxHistMBin__duration;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularAcmSleepStatsReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v45[0] & 0x7F) << v29;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v31;
          }

LABEL_67:
          v42 = 28;
LABEL_78:
          *(a1 + v42) = v27;
          goto LABEL_79;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 8u;
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
              LOBYTE(v20) = 0;
              goto LABEL_73;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_73:
          *(a1 + 32) = v20;
          goto LABEL_79;
        }

LABEL_62:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_79;
      }

      v28 = objc_alloc_init(AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevels);
      [a1 addAcm:v28];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularAcmSleepStatsAcmCaSleepLevelsReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_79:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 36) |= 1u;
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
          v41 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v41 = 0;
      }

      else
      {
        v41 = v37;
      }

LABEL_71:
      *(a1 + 8) = v41;
      goto LABEL_79;
    }

    if (v13 == 2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v45[0] & 0x7F) << v21;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_77;
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

LABEL_77:
      v42 = 24;
      goto LABEL_78;
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

void sub_21A5EBC2C(void *a1)
{
  MEMORY[0x21CEDD3E0](v1, 0x10B1C40CB89C51DLL);
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x21A5EBC18);
}

id PLLogPLIOReportAgentIOReportStats()
{
  if (qword_2811F3EE0 != -1)
  {
    dispatch_once(&qword_2811F3EE0, &__block_literal_global_8);
  }

  v1 = qword_2811F3ED8;

  return v1;
}

uint64_t __PLLogPLIOReportAgentIOReportStats_block_invoke()
{
  qword_2811F3ED8 = os_log_create("com.apple.powerlog", "PLIOReportAgentIOReportStats");

  return MEMORY[0x2821F96F8]();
}

uint64_t PowerlogMetricLogReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3985928)
      {
        if (v13 > 3986695)
        {
          if (v13 > 3987205)
          {
            if (v13 <= 3987329)
            {
              if (v13 <= 3987207)
              {
                if (v13 != 3987206)
                {
                  v14 = objc_alloc_init(KCellularProtocolStackHist);
                  [a1 addKCellularCdma1XConnectionHist:v14];
                  goto LABEL_251;
                }

                v14 = objc_alloc_init(KCellularProtocolStackHist2);
                [a1 addKCellularCdma1XProtocolStackStateHist:v14];
LABEL_239:
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularProtocolStackHist2ReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              }

              switch(v13)
              {
                case 0x3CD708:
                  v14 = objc_alloc_init(KCellularCdma1XRrState);
                  [a1 addKCellularCdma1XRrState:v14];
                  v17 = 0;
                  v18 = 0;
                  if (!PBReaderPlaceMark() || (KCellularCdma1XRrStateReadFrom(v14, a2) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_253;
                case 0x3CD780:
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularCdmaEvdoRxDiversityHist:v14];
                  goto LABEL_247;
                case 0x3CD781:
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularCdmaEvdoServingCellRx0RssiHist:v14];
                  goto LABEL_247;
              }
            }

            else
            {
              if (v13 <= 3987332)
              {
                if (v13 == 3987330)
                {
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularCdmaEvdoServingCellRx1RssiHist:v14];
                }

                else if (v13 == 3987331)
                {
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularCdmaEvdoServingCellRx0EcIoHist:v14];
                }

                else
                {
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularCdmaEvdoServingCellRx1EcIoHist:v14];
                }

                goto LABEL_247;
              }

              switch(v13)
              {
                case 0x3CD785:
                  v14 = objc_alloc_init(KCellularProtocolStackHist);
                  [a1 addKCellularCdmaEvdoTxPowerHist:v14];
                  goto LABEL_251;
                case 0x3CD786:
                  v14 = objc_alloc_init(KCellularProtocolStackHist2);
                  [a1 addKCellularCdmaEvdoProtocolStackStateHist:v14];
                  goto LABEL_239;
                case 0x3CD788:
                  v14 = objc_alloc_init(KCellularCdmaEvdoRrState);
                  [a1 addKCellularCdmaEvdoRrState:v14];
                  v17 = 0;
                  v18 = 0;
                  if (!PBReaderPlaceMark() || (KCellularCdmaEvdoRrStateReadFrom(v14, a2) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_253;
              }
            }
          }

          else
          {
            if (v13 > 3987199)
            {
              if (v13 <= 3987202)
              {
                if (v13 == 3987200)
                {
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularCdma1XRxDiversityHist:v14];
                }

                else if (v13 == 3987201)
                {
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularCdma1XServingCellRx0RssiHist:v14];
                }

                else
                {
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularCdma1XServingCellRx1RssiHist:v14];
                }

                goto LABEL_247;
              }

              if (v13 == 3987203)
              {
                v14 = objc_alloc_init(KCellularRrcModeHist);
                [a1 addKCellularCdma1XServingCellRx0EcIoHist:v14];
              }

              else
              {
                if (v13 != 3987204)
                {
                  v14 = objc_alloc_init(KCellularProtocolStackHist);
                  [a1 addKCellularCdma1XTxPowerHist:v14];
                  goto LABEL_251;
                }

                v14 = objc_alloc_init(KCellularRrcModeHist);
                [a1 addKCellularCdma1XServingCellRx1EcIoHist:v14];
              }

              goto LABEL_247;
            }

            if (v13 <= 3986704)
            {
              if (v13 == 3986696)
              {
                v14 = objc_alloc_init(KCellularProtocolStackPowerState);
                [a1 addKCellularProtocolStackPowerState:v14];
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularProtocolStackPowerStateReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              }

              if (v13 == 3986703)
              {
                v14 = objc_alloc_init(KCellularDownlinkIpPacketFilterStatus);
                [a1 addKCellularDownlinkIpPacketFilterStatus:v14];
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularDownlinkIpPacketFilterStatusReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              }
            }

            else
            {
              switch(v13)
              {
                case 0x3CD511:
                  v14 = objc_alloc_init(KCellularServingCellRfBandHist);
                  [a1 addKCellularServingCellRfBandHist:v14];
                  v17 = 0;
                  v18 = 0;
                  if (!PBReaderPlaceMark() || (KCellularServingCellRfBandHistReadFrom(v14, a2) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_253;
                case 0x3CD512:
                  v14 = objc_alloc_init(KCellularProtocolStackHist2);
                  [a1 addKCellularProtocolStackStateHist2:v14];
                  goto LABEL_239;
                case 0x3CD513:
                  v14 = objc_alloc_init(KCellularProtocolStackState);
                  [a1 addKCellularProtocolStackState:v14];
                  v17 = 0;
                  v18 = 0;
                  if (!PBReaderPlaceMark() || (KCellularProtocolStackStateReadFrom(v14, a2) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_253;
              }
            }
          }
        }

        else
        {
          if (v13 > 3986178)
          {
            if (v13 <= 3986692)
            {
              switch(v13)
              {
                case 3986179:
                  v14 = objc_alloc_init(KCellularLteFwDuplexMode);
                  [a1 addKCellularLteFwDuplexMode:v14];
                  v17 = 0;
                  v18 = 0;
                  if (!PBReaderPlaceMark() || (KCellularLteFwDuplexModeReadFrom(v14, a2) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_253;
                case 3986180:
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularLteServingCellRsrpHist:v14];
                  goto LABEL_247;
                case 3986181:
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularLteServingCellSinrHist:v14];
                  goto LABEL_247;
                case 3986182:
                  v14 = objc_alloc_init(KCellularRrcModeHist);
                  [a1 addKCellularLteSleepStateHist:v14];
                  goto LABEL_247;
                case 3986183:
                  v14 = objc_alloc_init(KCellularProtocolStackHist);
                  [a1 addKCellularLteTxPowerHist:v14];
                  goto LABEL_251;
                case 3986184:
                  v14 = objc_alloc_init(KCellularProtocolStackHist);
                  [a1 addKCellularLteDlSccStateHist:v14];
                  goto LABEL_251;
                case 3986185:
                  v14 = objc_alloc_init(KCellularProtocolStackHist);
                  [a1 addKCellularLteUlSccStateHist:v14];
                  goto LABEL_251;
                case 3986186:
                  v14 = objc_alloc_init(KCellularProtocolStackHist);
                  [a1 addKCellularLteAdvancedRxStateHist:v14];
                  goto LABEL_251;
                case 3986187:
                  v14 = objc_alloc_init(KCellularLteComponentCarrierInfo);
                  [a1 addKCellularLteComponentCarrierInfo:v14];
                  v17 = 0;
                  v18 = 0;
                  if (!PBReaderPlaceMark() || (KCellularLteComponentCarrierInfoReadFrom(v14, a2) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_253;
                case 3986188:
                  v14 = objc_alloc_init(KCellularProtocolStackHist);
                  [a1 addKCellularLteRxTxStateHist:v14];
                  goto LABEL_251;
                case 3986189:
                  v14 = objc_alloc_init(KCellularProtocolStackHist);
                  [a1 addKCellularLteTotalDlTbsHist:v14];
                  goto LABEL_251;
                case 3986200:
                  v14 = objc_alloc_init(KCellularProtocolStackHistArray);
                  [a1 addKCellularLteDlSccStateHistV3:v14];
                  break;
                case 3986201:
                  v14 = objc_alloc_init(KCellularProtocolStackHistArray);
                  [a1 addKCellularLteRxDiversityHist:v14];
                  break;
                case 3986202:
                  v14 = objc_alloc_init(KCellularProtocolStackHist2);
                  [a1 addKCellularLtePdcchStateHist:v14];
                  goto LABEL_239;
                default:
                  goto LABEL_259;
              }

              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularProtocolStackHistArrayReadFrom(v14, a2) & 1) == 0)
              {
LABEL_262:

                return 0;
              }

              goto LABEL_253;
            }

            if (v13 == 3986693)
            {
              v14 = objc_alloc_init(KCellularProtocolStackHist);
              [a1 addKCellularProtocolStackStateHist:v14];
            }

            else
            {
              if (v13 == 3986694)
              {
                v14 = objc_alloc_init(KCellularCellPlmnSearchCount);
                [a1 addKCellularCellPlmnSearchCount:v14];
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularCellPlmnSearchCountReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              }

              v14 = objc_alloc_init(KCellularProtocolStackHist);
              [a1 addKCellularCellPlmnSearchHist:v14];
            }

            goto LABEL_251;
          }

          if (v13 > 3985940)
          {
            switch(v13)
            {
              case 0x3CD215:
                v14 = objc_alloc_init(KCellularProtocolStackHist);
                [a1 addKCellularTdsRabModeHist:v14];
LABEL_251:
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularProtocolStackHistReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              case 0x3CD216:
                v14 = objc_alloc_init(KCellularProtocolStackHist);
                [a1 addKCellularTdsRabTypeHist:v14];
                goto LABEL_251;
              case 0x3CD21C:
                v14 = objc_alloc_init(KCellularTdsL1State);
                [a1 addKCellularTdsL1State:v14];
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularTdsL1StateReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
            }
          }

          else
          {
            switch(v13)
            {
              case 0x3CD209:
                v14 = objc_alloc_init(KCellularRrcModeHist);
                [a1 addKCellularTdsServingCellRx0RscpHist:v14];
LABEL_247:
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularRrcModeHistReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              case 0x3CD20A:
                v14 = objc_alloc_init(KCellularRrcModeHist);
                [a1 addKCellularTdsServingCellRx1RscpHist:v14];
                goto LABEL_247;
              case 0x3CD20B:
                v14 = objc_alloc_init(KCellularProtocolStackHist);
                [a1 addKCellularTdsTxPowerHist:v14];
                goto LABEL_251;
            }
          }
        }
      }

      else if (v13 <= 3985415)
      {
        if (v13 > 3952131)
        {
          if (v13 <= 3973383)
          {
            if (v13 <= 3952151)
            {
              if (v13 == 3952132)
              {
                v14 = objc_alloc_init(KCellularLteRrcState);
                [a1 addKCellularLteRrcState:v14];
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularLteRrcStateReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              }

              if (v13 == 3952138)
              {
                v14 = objc_alloc_init(KCellularLtePagingCycle);
                [a1 addKCellularLtePagingCycle:v14];
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularLtePagingCycleReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              }
            }

            else
            {
              switch(v13)
              {
                case 0x3C4E18:
                  v14 = objc_alloc_init(KCellularLteCdrxConfig);
                  [a1 addKCellularLteCdrxConfig:v14];
                  v17 = 0;
                  v18 = 0;
                  if (!PBReaderPlaceMark() || (KCellularLteCdrxConfigReadFrom(v14, a2) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_253;
                case 0x3C4E25:
                  v14 = objc_alloc_init(KCellularLteRadioLinkFailure);
                  [a1 addKCellularLteRadioLinkFailure:v14];
                  v17 = 0;
                  v18 = 0;
                  if (!PBReaderPlaceMark() || (KCellularLteRadioLinkFailureReadFrom(v14, a2) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_253;
                case 0x3C4F70:
                  v14 = objc_alloc_init(KCellularLtePdcchStateStats);
                  [a1 addKCellularLtePdcchStateStats:v14];
                  v17 = 0;
                  v18 = 0;
                  if (!PBReaderPlaceMark() || (KCellularLtePdcchStateStatsReadFrom(v14, a2) & 1) == 0)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_253;
              }
            }
          }

          else
          {
            if (v13 > 3985412)
            {
              if (v13 == 3985413)
              {
                v14 = objc_alloc_init(KCellularProtocolStackHist);
                [a1 addKCellularGsmServingCellSnrHist:v14];
              }

              else if (v13 == 3985414)
              {
                v14 = objc_alloc_init(KCellularProtocolStackHist);
                [a1 addKCellularGsmTxPowerHist:v14];
              }

              else
              {
                v14 = objc_alloc_init(KCellularProtocolStackHist);
                [a1 addKCellularGsmConnectedModeHist:v14];
              }

              goto LABEL_251;
            }

            switch(v13)
            {
              case 0x3CA108:
                v14 = objc_alloc_init(KCellularLqmStateChange);
                [a1 addKCellularLqmStateChange:v14];
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularLqmStateChangeReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              case 0x3CA10F:
                v14 = objc_alloc_init(KCellularServingCellLost);
                [a1 addKCellularServiceLost:v14];
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularServingCellLostReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              case 0x3CD004:
                v14 = objc_alloc_init(KCellularProtocolStackHist);
                [a1 addKCellularGsmServingCellRssiHist:v14];
                goto LABEL_251;
            }
          }
        }

        else if (v13 <= 3932180)
        {
          if (v13 <= 3932176)
          {
            if (v13 == 3932163)
            {
              v14 = objc_alloc_init(KCellularPerClientProfileTriggerCount);
              [a1 addKCellularPerClientProfileTriggerCount:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularPerClientProfileTriggerCountReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            }

            if (v13 == 3932176)
            {
              v14 = objc_alloc_init(KCellularProtocolStackCpuStats);
              [a1 addKCellularProtocolStackCpuStats:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularProtocolStackCpuStatsReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            }
          }

          else
          {
            switch(v13)
            {
              case 0x3C0011:
                v14 = objc_alloc_init(KCellularPeripheralStats);
                [a1 addKCellularPeripheralStats:v14];
                v17 = 0;
                v18 = 0;
                if (!PBReaderPlaceMark() || (KCellularPeripheralStatsReadFrom(v14, a2) & 1) == 0)
                {
                  goto LABEL_262;
                }

                goto LABEL_253;
              case 0x3C0012:
                v14 = objc_alloc_init(KCellularPmicHwStats);
                [a1 addKCellularDvfsStats:v14];
                goto LABEL_223;
              case 0x3C0014:
                v14 = objc_alloc_init(KCellularPmicHwStats);
                [a1 addKCellularLteWcdmaGsmHwStats:v14];
                goto LABEL_223;
            }
          }
        }

        else
        {
          if (v13 <= 3932183)
          {
            if (v13 == 3932181)
            {
              v14 = objc_alloc_init(KCellularPmicHwStats);
              [a1 addKCellularLteTdsGsmHwStats:v14];
              goto LABEL_223;
            }

            if (v13 == 3932182)
            {
              v14 = objc_alloc_init(KCellularPmuAverageCurrent);
              [a1 addKCellularPmuAverageCurrent:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularPmuAverageCurrentReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }
            }

            else
            {
              v14 = objc_alloc_init(KCellularFwCoreStats);
              [a1 addKCellularFwCoreStats:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularFwCoreStatsReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }
            }

LABEL_253:
            PBReaderRecallMark();

            goto LABEL_254;
          }

          switch(v13)
          {
            case 0x3C0018:
              v14 = objc_alloc_init(KCellularPmicHwStats);
              [a1 addKCellularLteWcdmaTdsHwStats:v14];
LABEL_223:
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularPmicHwStatsReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            case 0x3C0019:
              v14 = objc_alloc_init(KCellularPmicHwStats);
              [a1 addKCellularPmicHwStats:v14];
              goto LABEL_223;
            case 0x3C3483:
              v14 = objc_alloc_init(KCellularTdsRrcState);
              [a1 addKCellularTdsRrcState:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularTdsRrcStateReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
          }
        }
      }

      else
      {
        if (v13 <= 3985925)
        {
          switch(v13)
          {
            case 3985670:
              v14 = objc_alloc_init(KCellularWcdmaCpcStat);
              [a1 addKCellularWcdmaCpcStat:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularWcdmaCpcStatReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            case 3985671:
              v14 = objc_alloc_init(KCellularRrcModeHist);
              [a1 addKCellularWcdmaRxDiversityHist:v14];
              goto LABEL_247;
            case 3985672:
              v14 = objc_alloc_init(KCellularRrcModeHist);
              [a1 addKCellularWcdmaServingCellRx0RssiHist:v14];
              goto LABEL_247;
            case 3985673:
              v14 = objc_alloc_init(KCellularRrcModeHist);
              [a1 addKCellularWcdmaServingCellRx1RssiHist:v14];
              goto LABEL_247;
            case 3985674:
              v14 = objc_alloc_init(KCellularRrcModeHist);
              [a1 addKCellularWcdmaServingCellRx0EcNoHist:v14];
              goto LABEL_247;
            case 3985675:
              v14 = objc_alloc_init(KCellularRrcModeHist);
              [a1 addKCellularWcdmaServingCellRx1EcNoHist:v14];
              goto LABEL_247;
            case 3985676:
              v14 = objc_alloc_init(KCellularProtocolStackHist);
              [a1 addKCellularWcdmaTxPowerHist:v14];
              goto LABEL_251;
            case 3985677:
              v14 = objc_alloc_init(KCellularProtocolStackHist);
              [a1 addKCellularWcdmaReceiverStatusOnC0Hist:v14];
              goto LABEL_251;
            case 3985678:
              v14 = objc_alloc_init(KCellularProtocolStackHist);
              [a1 addKCellularWcdmaReceiverStatusOnC1Hist:v14];
              goto LABEL_251;
            case 3985679:
              v14 = objc_alloc_init(KCellularProtocolStackHist);
              [a1 addKCellularWcdmaCarrierStatusHist:v14];
              goto LABEL_251;
            case 3985680:
              v14 = objc_alloc_init(KCellularProtocolStackHist);
              [a1 addKCellularWcdmaRabModeHist:v14];
              goto LABEL_251;
            case 3985681:
              v14 = objc_alloc_init(KCellularProtocolStackHist);
              [a1 addKCellularWcdmaRabTypeHist:v14];
              goto LABEL_251;
            case 3985682:
              v14 = objc_alloc_init(KCellularWcdmaRrcConnectionState);
              [a1 addKCellularWcdmaRrcConnectionState:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularWcdmaRrcConnectionStateReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            case 3985683:
              v14 = objc_alloc_init(KCellularWcdmaRrcConfiguration);
              [a1 addKCellularWcdmaRrcConfiguration:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularWcdmaRrcConfigurationReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            case 3985684:
              v14 = objc_alloc_init(KCellularWcdmaRabStatus);
              [a1 addKCellularWcdmaRabStatus:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularWcdmaRabStatusReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            case 3985685:
              v14 = objc_alloc_init(KCellularWcdmaL1State);
              [a1 addKCellularWcdmaL1State:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularWcdmaL1StateReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            case 3985686:
              v14 = objc_alloc_init(KCellularWcdmaDataInactivityBeforeIdle);
              [a1 addKCellularWcdmaDataInactivityBeforeIdle:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularWcdmaDataInactivityBeforeIdleReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            case 3985687:
              v14 = objc_alloc_init(KCellularWcdmaIdleToConnectedUserData);
              [a1 addKCellularWcdmaIdleToConnectedUserData:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularWcdmaIdleToConnectedUserDataReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
            case 3985688:
            case 3985689:
              goto LABEL_259;
            case 3985690:
              v14 = objc_alloc_init(KCellularProtocolStackHist);
              [a1 addKCellularWcdmaVadHist:v14];
              goto LABEL_251;
            default:
              if (v13 != 3985416)
              {
                goto LABEL_259;
              }

              v14 = objc_alloc_init(KCellularGsmL1State);
              [a1 addKCellularGsmL1State:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (KCellularGsmL1StateReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_262;
              }

              goto LABEL_253;
          }
        }

        switch(v13)
        {
          case 0x3CD206:
            v14 = objc_alloc_init(KCellularRrcModeHist);
            [a1 addKCellularTdsRxDiversityHist:v14];
            goto LABEL_247;
          case 0x3CD207:
            v14 = objc_alloc_init(KCellularRrcModeHist);
            [a1 addKCellularTdsServingCellRx0RssiHist:v14];
            goto LABEL_247;
          case 0x3CD208:
            v14 = objc_alloc_init(KCellularRrcModeHist);
            [a1 addKCellularTdsServingCellRx1RssiHist:v14];
            goto LABEL_247;
        }
      }

LABEL_259:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_254:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PStatReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 28) |= 2u;
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
              v22 = &OBJC_IVAR___PStat__ident;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___PStat__ident;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 28) |= 1u;
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
              v22 = &OBJC_IVAR___PStat__activeDurMs;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___PStat__activeDurMs;
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
                v22 = &OBJC_IVAR___PStat__inactiveDurMs;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___PStat__inactiveDurMs;
            goto LABEL_75;
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 28) |= 0x10u;
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
                v22 = &OBJC_IVAR___PStat__toActiveCount;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___PStat__toActiveCount;
            goto LABEL_75;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 8u;
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
                v22 = &OBJC_IVAR___PStat__sleepBlockCount;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___PStat__sleepBlockCount;
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

uint64_t AWDMETRICSKCellularLtePagingCycleReadFrom(uint64_t a1, void *a2)
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
          case 6:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v58 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v58 & 0x7F) << v47;
              if ((v58 & 0x80) == 0)
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
            v53 = 24;
            break;
          case 0xF:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 0x20u;
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
            *(a1 + 36) |= 2u;
            while (1)
            {
              v61 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

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
            v53 = 16;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x10u;
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

uint64_t KCellularTdsRrcStateReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

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
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v50 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v50 & 0x7F) << v39;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_81:
          *(a1 + 8) = v45;
          goto LABEL_91;
        }

        if (v13 != 2)
        {
LABEL_68:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_91;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 8u;
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
            v20 = 0;
            goto LABEL_89;
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

LABEL_89:
        v47 = 24;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v51 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v51 & 0x7F) << v27;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_73;
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

LABEL_73:
            v47 = 16;
            break;
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v54 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v54 & 0x7F) << v33;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_77;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_77:
            v47 = 20;
            break;
          case 0xF:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x10u;
            while (1)
            {
              v53 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v14;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_85;
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

LABEL_85:
            v47 = 28;
            break;
          default:
            goto LABEL_68;
        }
      }

      *(a1 + v47) = v20;
LABEL_91:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
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

uint64_t AWDMETRICSKCellularPowerLogSleepStatesReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 14)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v45[0] & 0x7F) << v29;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v31;
          }

LABEL_67:
          v42 = 28;
LABEL_78:
          *(a1 + v42) = v27;
          goto LABEL_79;
        }

        if (v13 == 15)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 8u;
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
              LOBYTE(v20) = 0;
              goto LABEL_73;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_73:
          *(a1 + 32) = v20;
          goto LABEL_79;
        }

LABEL_62:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_79;
      }

      v28 = objc_alloc_init(AWDMETRICSKCellularPowerLogSleepStatesMBin);
      [a1 addBin:v28];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogSleepStatesMBinReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_79:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 36) |= 1u;
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
          v41 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v41 = 0;
      }

      else
      {
        v41 = v37;
      }

LABEL_71:
      *(a1 + 8) = v41;
      goto LABEL_79;
    }

    if (v13 == 2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v45[0] & 0x7F) << v21;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_77;
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

LABEL_77:
      v42 = 24;
      goto LABEL_78;
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogAcmPerfLevelsMBinReadFrom(uint64_t a1, void *a2)
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
          v20 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 1u;
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
          *(a1 + 8) = v27;
          goto LABEL_62;
        }

        if (v13 != 1)
        {
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
        *(a1 + 24) |= 2u;
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
            goto LABEL_60;
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

LABEL_60:
        v35 = 16;
      }

      *(a1 + v35) = v20;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogPerformance_block_invoke()
{
  qword_2811F3098 = os_log_create("com.apple.powerlog", "performance");

  return MEMORY[0x2821F96F8]();
}

void sub_21A61DA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AWDMETRICSKCellularPowerLogPowerEstimatorReadFrom(uint64_t a1, void *a2)
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

      if (v13 == 3)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 32) |= 2u;
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

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats);
      [a1 addPowerStats:v21];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStatsReadFrom(v21, a2))
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
      *(a1 + 32) |= 1u;
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
      *(a1 + 32) |= 4u;
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
      v35 = 20;
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

uint64_t AWDMETRICSKCellularPowerLogNRSCGRelReadFrom(uint64_t a1, void *a2)
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
            v63 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v63 & 0x7F) << v42;
            if ((v63 & 0x80) == 0)
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
          *(a1 + 48) |= 8u;
          while (1)
          {
            v62 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v62 & 0x7F) << v14;
            if ((v62 & 0x80) == 0)
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
          v56 = 24;
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
        *(a1 + 48) |= 2u;
        while (1)
        {
          v61 = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

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
        v56 = 16;
        break;
      case 3:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 48) |= 4u;
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
        v56 = 20;
        break;
      default:
        goto LABEL_62;
    }

    goto LABEL_105;
  }

  return [a2 hasError] ^ 1;
}

void NotificationCallback(uint64_t a1, void *a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__0;
  v4[4] = __Block_byref_object_dispose__0;
  v5 = a2;
  v2 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __NotificationCallback_block_invoke;
  block[3] = &unk_27825A990;
  block[4] = v4;
  dispatch_async(v2, block);

  _Block_object_dispose(v4, 8);
}

uint64_t AWDMETRICSCellularDynamicRatSelectionReadFrom(uint64_t a1, void *a2)
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
        v79 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

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
      if ((v12 >> 3) > 18)
      {
        if (v13 <= 22)
        {
          if (v13 == 19)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v87 = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v87 & 0x7F) << v46;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
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
              v20 = v48;
            }

LABEL_137:
            v77 = 20;
          }

          else
          {
            if (v13 != 20)
            {
LABEL_120:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_163;
            }

            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v86 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v86 & 0x7F) << v33;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
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
              v20 = v35;
            }

LABEL_129:
            v77 = 16;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x17:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 52) |= 0x200u;
              while (1)
              {
                v85 = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v85 & 0x7F) << v58;
                if ((v85 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
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
                v20 = v60;
              }

LABEL_145:
              v77 = 48;
              break;
            case 0x18:
              v70 = 0;
              v71 = 0;
              v72 = 0;
              *(a1 + 52) |= 0x100u;
              while (1)
              {
                v84 = 0;
                v73 = [a2 position] + 1;
                if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                {
                  v75 = [a2 data];
                  [v75 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v72 |= (v84 & 0x7F) << v70;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v11 = v71++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_161;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v72;
              }

LABEL_161:
              v77 = 44;
              break;
            case 0x1F:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              *(a1 + 52) |= 0x80u;
              while (1)
              {
                v83 = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v83 & 0x7F) << v21;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_153;
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

LABEL_153:
              v77 = 40;
              break;
            default:
              goto LABEL_120;
          }
        }
      }

      else if (v13 <= 4)
      {
        if (v13 == 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 52) |= 1u;
          while (1)
          {
            v80 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v80 & 0x7F) << v39;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_133;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_133:
          *(a1 + 8) = v45;
          goto LABEL_163;
        }

        if (v13 != 4)
        {
          goto LABEL_120;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 52) |= 0x40u;
        while (1)
        {
          v82 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v82 & 0x7F) << v27;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
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
          v20 = v29;
        }

LABEL_125:
        v77 = 36;
      }

      else
      {
        switch(v13)
        {
          case 5:
            v52 = 0;
            v53 = 0;
            v54 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              v81 = 0;
              v55 = [a2 position] + 1;
              if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
              {
                v57 = [a2 data];
                [v57 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v54 |= (v81 & 0x7F) << v52;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v11 = v53++ >= 9;
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
              v20 = v54;
            }

LABEL_141:
            v77 = 24;
            break;
          case 0x11:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 52) |= 0x20u;
            while (1)
            {
              v89 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

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
              v11 = v65++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_157;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v66;
            }

LABEL_157:
            v77 = 32;
            break;
          case 0x12:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 0x10u;
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
            v77 = 28;
            break;
          default:
            goto LABEL_120;
        }
      }

      *(a1 + v77) = v20;
LABEL_163:
      v78 = [a2 position];
    }

    while (v78 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogCamera_block_invoke()
{
  _MergedGlobals_1_8 = os_log_create("com.apple.powerlog", "camera");

  return MEMORY[0x2821F96F8]();
}

uint64_t AWDMETRICSKCellularNrSDMActivationReadFrom(uint64_t a1, void *a2)
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
      v215 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v215 & 0x7F) << v6;
      if ((v215 & 0x80) == 0)
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
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          v215 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v215 & 0x7F) << v14;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_351:
            v214 = 16;
            goto LABEL_352;
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

        goto LABEL_351;
      case 2u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 108) |= 0x80000u;
        while (1)
        {
          v215 = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v215 & 0x7F) << v101;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_354;
          }
        }

        v46 = (v103 != 0) & ~[a2 hasError];
LABEL_354:
        v213 = 94;
        goto LABEL_405;
      case 3u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 108) |= 0x100000u;
        while (1)
        {
          v215 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v215 & 0x7F) << v77;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_339;
          }
        }

        v46 = (v79 != 0) & ~[a2 hasError];
LABEL_339:
        v213 = 95;
        goto LABEL_405;
      case 4u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 108) |= 0x4000000u;
        while (1)
        {
          v215 = 0;
          v92 = [a2 position] + 1;
          if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
          {
            v94 = [a2 data];
            [v94 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v91 |= (v215 & 0x7F) << v89;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v12 = v90++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_345;
          }
        }

        v46 = (v91 != 0) & ~[a2 hasError];
LABEL_345:
        v213 = 101;
        goto LABEL_405;
      case 5u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 108) |= 0x8000000u;
        while (1)
        {
          v215 = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v215 & 0x7F) << v47;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_325;
          }
        }

        v46 = (v49 != 0) & ~[a2 hasError];
LABEL_325:
        v213 = 102;
        goto LABEL_405;
      case 6u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 108) |= 0x10000u;
        while (1)
        {
          v215 = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v215 & 0x7F) << v125;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v12 = v126++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_368;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v127;
        }

LABEL_368:
        v212 = 88;
        goto LABEL_410;
      case 7u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 108) |= 0x20000u;
        while (1)
        {
          v215 = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v215 & 0x7F) << v143;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_378;
          }
        }

        v46 = (v145 != 0) & ~[a2 hasError];
LABEL_378:
        v213 = 92;
        goto LABEL_405;
      case 8u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 108) |= 0x40000u;
        while (1)
        {
          v215 = 0;
          v98 = [a2 position] + 1;
          if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
          {
            v100 = [a2 data];
            [v100 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v97 |= (v215 & 0x7F) << v95;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_347;
          }
        }

        v46 = (v97 != 0) & ~[a2 hasError];
LABEL_347:
        v213 = 93;
        goto LABEL_405;
      case 9u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 108) |= 0x80000000;
        while (1)
        {
          v215 = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v215 & 0x7F) << v161;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_388;
          }
        }

        v46 = (v163 != 0) & ~[a2 hasError];
LABEL_388:
        v213 = 106;
        goto LABEL_405;
      case 0xAu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 108) |= 0x10u;
        while (1)
        {
          v215 = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v215 & 0x7F) << v59;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_331;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v61;
        }

LABEL_331:
        v212 = 32;
        goto LABEL_410;
      case 0xBu:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 108) |= 0x4000u;
        while (1)
        {
          v215 = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v215 & 0x7F) << v155;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_386;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v157;
        }

LABEL_386:
        v212 = 80;
        goto LABEL_410;
      case 0xCu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 108) |= 0x1000000u;
        while (1)
        {
          v215 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v215 & 0x7F) << v40;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_323;
          }
        }

        v46 = (v42 != 0) & ~[a2 hasError];
LABEL_323:
        v213 = 99;
        goto LABEL_405;
      case 0xDu:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 108) |= 0x400000u;
        while (1)
        {
          v215 = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v215 & 0x7F) << v53;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_327;
          }
        }

        v46 = (v55 != 0) & ~[a2 hasError];
LABEL_327:
        v213 = 97;
        goto LABEL_405;
      case 0xEu:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 108) |= 0x20u;
        while (1)
        {
          v215 = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v215 & 0x7F) << v137;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v12 = v138++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_376;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v139;
        }

LABEL_376:
        v212 = 36;
        goto LABEL_410;
      case 0xFu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 108) |= 0x8000u;
        while (1)
        {
          v215 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v215 & 0x7F) << v34;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_321;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_321:
        v212 = 84;
        goto LABEL_410;
      case 0x10u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 108) |= 1u;
        while (1)
        {
          v215 = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v215 & 0x7F) << v83;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_343;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v85;
        }

LABEL_343:
        v214 = 8;
LABEL_352:
        *(a1 + v214) = v20;
        continue;
      case 0x11u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 108) |= 8u;
        while (1)
        {
          v215 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v215 & 0x7F) << v28;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_317;
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

LABEL_317:
        v212 = 28;
        goto LABEL_410;
      case 0x12u:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 108) |= 0x100u;
        while (1)
        {
          v215 = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v215 & 0x7F) << v113;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_360;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v115;
        }

LABEL_360:
        v212 = 56;
        goto LABEL_410;
      case 0x13u:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          v215 = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v215 & 0x7F) << v149;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v12 = v150++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_382;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v151;
        }

LABEL_382:
        v212 = 24;
        goto LABEL_410;
      case 0x14u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 108) |= 0x200u;
        while (1)
        {
          v215 = 0;
          v188 = [a2 position] + 1;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
          {
            v190 = [a2 data];
            [v190 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v187 |= (v215 & 0x7F) << v185;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v12 = v186++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_400;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v187;
        }

LABEL_400:
        v212 = 60;
        goto LABEL_410;
      case 0x15u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 108) |= 0x40u;
        while (1)
        {
          v215 = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v215 & 0x7F) << v119;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_364;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v121;
        }

LABEL_364:
        v212 = 48;
        goto LABEL_410;
      case 0x16u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 108) |= 0x400u;
        while (1)
        {
          v215 = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v215 & 0x7F) << v131;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v12 = v132++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_372;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v133;
        }

LABEL_372:
        v212 = 64;
        goto LABEL_410;
      case 0x17u:
        v179 = 0;
        v180 = 0;
        v181 = 0;
        *(a1 + 108) |= 0x1000u;
        while (1)
        {
          v215 = 0;
          v182 = [a2 position] + 1;
          if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
          {
            v184 = [a2 data];
            [v184 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v181 |= (v215 & 0x7F) << v179;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v179 += 7;
          v12 = v180++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_396;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v181;
        }

LABEL_396:
        v212 = 72;
        goto LABEL_410;
      case 0x18u:
        v191 = PBReaderReadString();
        v192 = *(a1 + 40);
        *(a1 + 40) = v191;

        continue;
      case 0x19u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 108) |= 0x800u;
        while (1)
        {
          v215 = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v215 & 0x7F) << v71;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_337;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v73;
        }

LABEL_337:
        v212 = 68;
        goto LABEL_410;
      case 0x1Au:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 108) |= 0x200000u;
        while (1)
        {
          v215 = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v215 & 0x7F) << v65;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_333;
          }
        }

        v46 = (v67 != 0) & ~[a2 hasError];
LABEL_333:
        v213 = 96;
        goto LABEL_405;
      case 0x1Bu:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        *(a1 + 108) |= 0x80u;
        while (1)
        {
          v215 = 0;
          v208 = [a2 position] + 1;
          if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
          {
            v210 = [a2 data];
            [v210 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v207 |= (v215 & 0x7F) << v205;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v205 += 7;
          v12 = v206++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_409;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v207;
        }

LABEL_409:
        v212 = 52;
        goto LABEL_410;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 108) |= 0x2000u;
        while (1)
        {
          v215 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v215 & 0x7F) << v21;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_313;
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

LABEL_313:
        v212 = 76;
LABEL_410:
        *(a1 + v212) = v27;
        continue;
      case 0x1Du:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        *(a1 + 108) |= 0x800000u;
        while (1)
        {
          v215 = 0;
          v196 = [a2 position] + 1;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
          {
            v198 = [a2 data];
            [v198 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v195 |= (v215 & 0x7F) << v193;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v12 = v194++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_402;
          }
        }

        v46 = (v195 != 0) & ~[a2 hasError];
LABEL_402:
        v213 = 98;
        goto LABEL_405;
      case 0x1Eu:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        *(a1 + 108) |= 0x20000000u;
        while (1)
        {
          v215 = 0;
          v202 = [a2 position] + 1;
          if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
          {
            v204 = [a2 data];
            [v204 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v201 |= (v215 & 0x7F) << v199;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v199 += 7;
          v12 = v200++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_404;
          }
        }

        v46 = (v201 != 0) & ~[a2 hasError];
LABEL_404:
        v213 = 104;
        goto LABEL_405;
      case 0x1Fu:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 108) |= 0x2000000u;
        while (1)
        {
          v215 = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v215 & 0x7F) << v167;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v12 = v168++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_390;
          }
        }

        v46 = (v169 != 0) & ~[a2 hasError];
LABEL_390:
        v213 = 100;
        goto LABEL_405;
      case 0x20u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 108) |= 0x10000000u;
        while (1)
        {
          v215 = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v215 & 0x7F) << v107;
          if ((v215 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v12 = v108++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_356;
          }
        }

        v46 = (v109 != 0) & ~[a2 hasError];
LABEL_356:
        v213 = 103;
        goto LABEL_405;
      case 0x21u:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        *(a1 + 108) |= 0x40000000u;
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
      v215 = 0;
      v176 = [a2 position] + 1;
      if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
      {
        v178 = [a2 data];
        [v178 getBytes:&v215 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v175 |= (v215 & 0x7F) << v173;
      if ((v215 & 0x80) == 0)
      {
        break;
      }

      v173 += 7;
      v12 = v174++ >= 9;
      if (v12)
      {
        LOBYTE(v46) = 0;
        goto LABEL_392;
      }
    }

    v46 = (v175 != 0) & ~[a2 hasError];
LABEL_392:
    v213 = 105;
LABEL_405:
    *(a1 + v213) = v46;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerlogProtocolStackHistReadFrom(uint64_t a1, void *a2)
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
        v235 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v235 & 0x7F) << v5;
        if ((v235 & 0x80) == 0)
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
      switch((v12 >> 3))
      {
        case 1u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 156) |= 1uLL;
          while (1)
          {
            v235 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v235 & 0x7F) << v14;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
LABEL_409:
              *(a1 + 8) = v20;
              goto LABEL_491;
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

          goto LABEL_409;
        case 2u:
          v112 = 0;
          v113 = 0;
          v114 = 0;
          *(a1 + 156) |= 0x200000000uLL;
          while (1)
          {
            v235 = 0;
            v115 = [a2 position] + 1;
            if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
            {
              v117 = [a2 data];
              [v117 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v114 |= (v235 & 0x7F) << v112;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v112 += 7;
            v11 = v113++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_413;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v114;
          }

LABEL_413:
          v233 = 144;
          goto LABEL_490;
        case 3u:
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 156) |= 2uLL;
          while (1)
          {
            v235 = 0;
            v91 = [a2 position] + 1;
            if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
            {
              v93 = [a2 data];
              [v93 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v90 |= (v235 & 0x7F) << v88;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v11 = v89++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_389;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v90;
          }

LABEL_389:
          v233 = 16;
          goto LABEL_490;
        case 4u:
          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 156) |= 4uLL;
          while (1)
          {
            v235 = 0;
            v103 = [a2 position] + 1;
            if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
            {
              v105 = [a2 data];
              [v105 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v102 |= (v235 & 0x7F) << v100;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v11 = v101++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_401;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v102;
          }

LABEL_401:
          v233 = 20;
          goto LABEL_490;
        case 5u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 156) |= 0x2000uLL;
          while (1)
          {
            v235 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v235 & 0x7F) << v58;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_369;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v60;
          }

LABEL_369:
          v233 = 64;
          goto LABEL_490;
        case 6u:
          v142 = 0;
          v143 = 0;
          v144 = 0;
          *(a1 + 156) |= 0x1000000uLL;
          while (1)
          {
            v235 = 0;
            v145 = [a2 position] + 1;
            if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
            {
              v147 = [a2 data];
              [v147 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v144 |= (v235 & 0x7F) << v142;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v142 += 7;
            v11 = v143++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_433;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v144;
          }

LABEL_433:
          v233 = 108;
          goto LABEL_490;
        case 7u:
          v160 = 0;
          v161 = 0;
          v162 = 0;
          *(a1 + 156) |= 0x8000000uLL;
          while (1)
          {
            v235 = 0;
            v163 = [a2 position] + 1;
            if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
            {
              v165 = [a2 data];
              [v165 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v162 |= (v235 & 0x7F) << v160;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v160 += 7;
            v11 = v161++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_445;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v162;
          }

LABEL_445:
          v233 = 120;
          goto LABEL_490;
        case 8u:
          v106 = 0;
          v107 = 0;
          v108 = 0;
          *(a1 + 156) |= 0x10000000uLL;
          while (1)
          {
            v235 = 0;
            v109 = [a2 position] + 1;
            if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
            {
              v111 = [a2 data];
              [v111 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v108 |= (v235 & 0x7F) << v106;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v106 += 7;
            v11 = v107++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_405;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v108;
          }

LABEL_405:
          v233 = 124;
          goto LABEL_490;
        case 9u:
          v178 = 0;
          v179 = 0;
          v180 = 0;
          *(a1 + 156) |= 0x20000000uLL;
          while (1)
          {
            v235 = 0;
            v181 = [a2 position] + 1;
            if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
            {
              v183 = [a2 data];
              [v183 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v180 |= (v235 & 0x7F) << v178;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v178 += 7;
            v11 = v179++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_457;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v180;
          }

LABEL_457:
          v233 = 128;
          goto LABEL_490;
        case 0xAu:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 156) |= 0x40000000uLL;
          while (1)
          {
            v235 = 0;
            v73 = [a2 position] + 1;
            if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
            {
              v75 = [a2 data];
              [v75 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v72 |= (v235 & 0x7F) << v70;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v11 = v71++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_377;
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

LABEL_377:
          v233 = 132;
          goto LABEL_490;
        case 0xBu:
          v172 = 0;
          v173 = 0;
          v174 = 0;
          *(a1 + 156) |= 0x80000000uLL;
          while (1)
          {
            v235 = 0;
            v175 = [a2 position] + 1;
            if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
            {
              v177 = [a2 data];
              [v177 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v174 |= (v235 & 0x7F) << v172;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v172 += 7;
            v11 = v173++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_453;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v174;
          }

LABEL_453:
          v233 = 136;
          goto LABEL_490;
        case 0xCu:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 156) |= 0x100000000uLL;
          while (1)
          {
            v235 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v235 & 0x7F) << v52;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_365;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v54;
          }

LABEL_365:
          v233 = 140;
          goto LABEL_490;
        case 0xDu:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 156) |= 8uLL;
          while (1)
          {
            v235 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v235 & 0x7F) << v64;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_373;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v66;
          }

LABEL_373:
          v233 = 24;
          goto LABEL_490;
        case 0xEu:
          v154 = 0;
          v155 = 0;
          v156 = 0;
          *(a1 + 156) |= 0x10uLL;
          while (1)
          {
            v235 = 0;
            v157 = [a2 position] + 1;
            if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
            {
              v159 = [a2 data];
              [v159 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v156 |= (v235 & 0x7F) << v154;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v154 += 7;
            v11 = v155++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_441;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v156;
          }

LABEL_441:
          v233 = 28;
          goto LABEL_490;
        case 0xFu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 156) |= 0x20uLL;
          while (1)
          {
            v235 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v235 & 0x7F) << v40;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_357;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v42;
          }

LABEL_357:
          v233 = 32;
          goto LABEL_490;
        case 0x10u:
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 156) |= 0x40uLL;
          while (1)
          {
            v235 = 0;
            v97 = [a2 position] + 1;
            if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
            {
              v99 = [a2 data];
              [v99 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v96 |= (v235 & 0x7F) << v94;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v11 = v95++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_393;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v96;
          }

LABEL_393:
          v233 = 36;
          goto LABEL_490;
        case 0x11u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 156) |= 0x80uLL;
          while (1)
          {
            v235 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v235 & 0x7F) << v34;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_353;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v36;
          }

LABEL_353:
          v233 = 40;
          goto LABEL_490;
        case 0x12u:
          v124 = 0;
          v125 = 0;
          v126 = 0;
          *(a1 + 156) |= 0x100uLL;
          while (1)
          {
            v235 = 0;
            v127 = [a2 position] + 1;
            if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
            {
              v129 = [a2 data];
              [v129 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v126 |= (v235 & 0x7F) << v124;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v124 += 7;
            v11 = v125++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_421;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v126;
          }

LABEL_421:
          v233 = 44;
          goto LABEL_490;
        case 0x13u:
          v166 = 0;
          v167 = 0;
          v168 = 0;
          *(a1 + 156) |= 0x200uLL;
          while (1)
          {
            v235 = 0;
            v169 = [a2 position] + 1;
            if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
            {
              v171 = [a2 data];
              [v171 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v168 |= (v235 & 0x7F) << v166;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v166 += 7;
            v11 = v167++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_449;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v168;
          }

LABEL_449:
          v233 = 48;
          goto LABEL_490;
        case 0x14u:
          v202 = 0;
          v203 = 0;
          v204 = 0;
          *(a1 + 156) |= 0x400uLL;
          while (1)
          {
            v235 = 0;
            v205 = [a2 position] + 1;
            if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
            {
              v207 = [a2 data];
              [v207 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v204 |= (v235 & 0x7F) << v202;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v202 += 7;
            v11 = v203++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_473;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v204;
          }

LABEL_473:
          v233 = 52;
          goto LABEL_490;
        case 0x15u:
          v136 = 0;
          v137 = 0;
          v138 = 0;
          *(a1 + 156) |= 0x800uLL;
          while (1)
          {
            v235 = 0;
            v139 = [a2 position] + 1;
            if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
            {
              v141 = [a2 data];
              [v141 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v138 |= (v235 & 0x7F) << v136;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v136 += 7;
            v11 = v137++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_429;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v138;
          }

LABEL_429:
          v233 = 56;
          goto LABEL_490;
        case 0x16u:
          v148 = 0;
          v149 = 0;
          v150 = 0;
          *(a1 + 156) |= 0x1000uLL;
          while (1)
          {
            v235 = 0;
            v151 = [a2 position] + 1;
            if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
            {
              v153 = [a2 data];
              [v153 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v150 |= (v235 & 0x7F) << v148;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v148 += 7;
            v11 = v149++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_437;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v150;
          }

LABEL_437:
          v233 = 60;
          goto LABEL_490;
        case 0x17u:
          v196 = 0;
          v197 = 0;
          v198 = 0;
          *(a1 + 156) |= 0x4000uLL;
          while (1)
          {
            v235 = 0;
            v199 = [a2 position] + 1;
            if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
            {
              v201 = [a2 data];
              [v201 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v198 |= (v235 & 0x7F) << v196;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v196 += 7;
            v11 = v197++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_469;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v198;
          }

LABEL_469:
          v233 = 68;
          goto LABEL_490;
        case 0x18u:
          v208 = 0;
          v209 = 0;
          v210 = 0;
          *(a1 + 156) |= 0x8000uLL;
          while (1)
          {
            v235 = 0;
            v211 = [a2 position] + 1;
            if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
            {
              v213 = [a2 data];
              [v213 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v210 |= (v235 & 0x7F) << v208;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v208 += 7;
            v11 = v209++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_477;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v210;
          }

LABEL_477:
          v233 = 72;
          goto LABEL_490;
        case 0x19u:
          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 156) |= 0x10000uLL;
          while (1)
          {
            v235 = 0;
            v85 = [a2 position] + 1;
            if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
            {
              v87 = [a2 data];
              [v87 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v84 |= (v235 & 0x7F) << v82;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v11 = v83++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_385;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v84;
          }

LABEL_385:
          v233 = 76;
          goto LABEL_490;
        case 0x1Au:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 156) |= 0x20000uLL;
          while (1)
          {
            v235 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v235 & 0x7F) << v76;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v11 = v77++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_381;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v78;
          }

LABEL_381:
          v233 = 80;
          goto LABEL_490;
        case 0x1Bu:
          v226 = 0;
          v227 = 0;
          v228 = 0;
          *(a1 + 156) |= 0x40000uLL;
          while (1)
          {
            v235 = 0;
            v229 = [a2 position] + 1;
            if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
            {
              v231 = [a2 data];
              [v231 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v228 |= (v235 & 0x7F) << v226;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v226 += 7;
            v11 = v227++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_489;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v228;
          }

LABEL_489:
          v233 = 84;
          goto LABEL_490;
        case 0x1Cu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 156) |= 0x80000uLL;
          while (1)
          {
            v235 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v235 & 0x7F) << v28;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_349;
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

LABEL_349:
          v233 = 88;
          goto LABEL_490;
        case 0x1Du:
          v214 = 0;
          v215 = 0;
          v216 = 0;
          *(a1 + 156) |= 0x100000uLL;
          while (1)
          {
            v235 = 0;
            v217 = [a2 position] + 1;
            if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 1, v218 <= objc_msgSend(a2, "length")))
            {
              v219 = [a2 data];
              [v219 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v216 |= (v235 & 0x7F) << v214;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v214 += 7;
            v11 = v215++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_481;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v216;
          }

LABEL_481:
          v233 = 92;
          goto LABEL_490;
        case 0x1Eu:
          v220 = 0;
          v221 = 0;
          v222 = 0;
          *(a1 + 156) |= 0x200000uLL;
          while (1)
          {
            v235 = 0;
            v223 = [a2 position] + 1;
            if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 1, v224 <= objc_msgSend(a2, "length")))
            {
              v225 = [a2 data];
              [v225 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v222 |= (v235 & 0x7F) << v220;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v220 += 7;
            v11 = v221++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_485;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v222;
          }

LABEL_485:
          v233 = 96;
          goto LABEL_490;
        case 0x1Fu:
          v184 = 0;
          v185 = 0;
          v186 = 0;
          *(a1 + 156) |= 0x400000uLL;
          while (1)
          {
            v235 = 0;
            v187 = [a2 position] + 1;
            if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
            {
              v189 = [a2 data];
              [v189 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v186 |= (v235 & 0x7F) << v184;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v184 += 7;
            v11 = v185++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_461;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v186;
          }

LABEL_461:
          v233 = 100;
          goto LABEL_490;
        case 0x20u:
          v118 = 0;
          v119 = 0;
          v120 = 0;
          *(a1 + 156) |= 0x800000uLL;
          while (1)
          {
            v235 = 0;
            v121 = [a2 position] + 1;
            if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
            {
              v123 = [a2 data];
              [v123 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v120 |= (v235 & 0x7F) << v118;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v118 += 7;
            v11 = v119++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_417;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v120;
          }

LABEL_417:
          v233 = 104;
          goto LABEL_490;
        case 0x21u:
          v190 = 0;
          v191 = 0;
          v192 = 0;
          *(a1 + 156) |= 0x2000000uLL;
          while (1)
          {
            v235 = 0;
            v193 = [a2 position] + 1;
            if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
            {
              v195 = [a2 data];
              [v195 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v192 |= (v235 & 0x7F) << v190;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v190 += 7;
            v11 = v191++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_465;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v192;
          }

LABEL_465:
          v233 = 112;
          goto LABEL_490;
        case 0x22u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 156) |= 0x4000000uLL;
          while (1)
          {
            v235 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v235 & 0x7F) << v46;
            if ((v235 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_361;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v48;
          }

LABEL_361:
          v233 = 116;
          goto LABEL_490;
        default:
          if (v13 == 126)
          {
            v130 = 0;
            v131 = 0;
            v132 = 0;
            *(a1 + 156) |= 0x400000000uLL;
            while (1)
            {
              v235 = 0;
              v133 = [a2 position] + 1;
              if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
              {
                v135 = [a2 data];
                [v135 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v132 |= (v235 & 0x7F) << v130;
              if ((v235 & 0x80) == 0)
              {
                break;
              }

              v130 += 7;
              v11 = v131++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_425;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v132;
            }

LABEL_425:
            v233 = 148;
            goto LABEL_490;
          }

          if (v13 == 127)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 156) |= 0x800000000uLL;
            while (1)
            {
              v235 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v235 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v235 & 0x7F) << v21;
              if ((v235 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_397;
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

LABEL_397:
            v233 = 152;
LABEL_490:
            *(a1 + v233) = v27;
            goto LABEL_491;
          }

          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

LABEL_491:
          v234 = [a2 position];
          if (v234 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          break;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycleReadFrom(uint64_t a1, void *a2)
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
        v52 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
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
      if ((v12 >> 3) <= 11)
      {
        break;
      }

      switch(v13)
      {
        case 0xC:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v54 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v54 & 0x7F) << v35;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_79;
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

LABEL_79:
          v50 = 16;
LABEL_90:
          *(a1 + v50) = v20;
          break;
        case 0xE:
          v48 = PBReaderReadData();
          v49 = *(a1 + 24);
          *(a1 + 24) = v48;

          break;
        case 0xF:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 0x10u;
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
              LOBYTE(v27) = 0;
              goto LABEL_85;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_85:
          *(a1 + 36) = v27;
          break;
        default:
LABEL_60:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          break;
      }

LABEL_91:
      v51 = [a2 position];
      if (v51 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          v53 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v53 & 0x7F) << v28;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
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
          v34 = v30;
        }

LABEL_75:
        *(a1 + 8) = v34;
        goto LABEL_91;
      case 2:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v56 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v56 & 0x7F) << v42;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_89;
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

LABEL_89:
        v50 = 20;
        break;
      case 0xB:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 8u;
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
            v20 = 0;
            goto LABEL_83;
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

LABEL_83:
        v50 = 32;
        break;
      default:
        goto LABEL_60;
    }

    goto LABEL_90;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularNrRadioStatsReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 13)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 32) |= 1u;
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

      if (v13 != 3)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(AWDMETRICSBwpStats);
      [a1 addBwpInfo:v14];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSBwpStatsReadFrom(v14, a2))
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

    if (v13 == 14)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 32) |= 4u;
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
          v21 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v31;
      }

LABEL_65:
      v35 = 28;
      goto LABEL_66;
    }

    if (v13 == 47)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38[0] & 0x7F) << v15;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_57:
      v35 = 24;
LABEL_66:
      *(a1 + v35) = v21;
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

uint64_t AWDMETRICSKCellularPowerLogGPSStatesMBinReadFrom(uint64_t a1, void *a2)
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
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogGPSStatesMBin__binId;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogGPSStatesMBin__binId;
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
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogGPSStatesMBin__duration;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogGPSStatesMBin__duration;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}