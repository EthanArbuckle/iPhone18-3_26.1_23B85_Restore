uint64_t AWDITesterCertApplePayTestFinishReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v35 = 0;
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

              v25 |= (v35 & 0x7F) << v23;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v10 = v24++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_57;
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

LABEL_57:
            *(a1 + 8) = v28;
            goto LABEL_52;
          case 2:
            String = PBReaderReadString();

            v20 = String;
            v21 = 56;
            break;
          case 3:
            v19 = PBReaderReadString();

            v20 = v19;
            v21 = 32;
            break;
          default:
            goto LABEL_46;
        }

        goto LABEL_51;
      }

      if (v12 > 5)
      {
        break;
      }

      if (v12 == 4)
      {
        v30 = PBReaderReadString();

        v20 = v30;
        v21 = 48;
LABEL_51:
        *(a1 + v21) = v20;
        goto LABEL_52;
      }

      if (v12 != 5)
      {
        goto LABEL_46;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 64) |= 2u;
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
      *(a1 + 24) = v18;
LABEL_52:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 6)
    {
      v31 = PBReaderReadString();

      v20 = v31;
      v21 = 40;
    }

    else
    {
      if (v12 != 7)
      {
LABEL_46:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_52;
      }

      v22 = PBReaderReadString();

      v20 = v22;
      v21 = 16;
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterCertApplePayTestStartReadFrom(uint64_t a1, void *a2)
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
        v25 = 0;
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

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
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
        String = PBReaderReadString();

        v20 = String;
        v21 = 16;
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
            *(a1 + 32) |= 1u;
            while (1)
            {
              v26 = 0;
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

              v15 |= (v26 & 0x7F) << v13;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_37;
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

LABEL_37:
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

          goto LABEL_38;
        }

        v19 = PBReaderReadString();

        v20 = v19;
        v21 = 24;
      }

      *(a1 + v21) = v20;
LABEL_38:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterCertApplePayTestSubmissionReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 32;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v16 = PBReaderReadString();

          v14 = v16;
          v15 = 24;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v27 = 0;
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

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_40;
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

LABEL_40:
          *(a1 + 8) = v23;
          goto LABEL_41;
        }

        if (v12 != 2)
        {
          goto LABEL_24;
        }

        v13 = PBReaderReadString();

        v14 = v13;
        v15 = 16;
      }

      *(a1 + v15) = v14;
LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterCertHomeKitTestFinishReadFrom(uint64_t a1, void *a2)
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
        v36 = 0;
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
            String = PBReaderReadString();

            v14 = String;
            v15 = 24;
            goto LABEL_54;
          }

          if (v12 == 4)
          {
            v17 = PBReaderReadString();

            v14 = v17;
            v15 = 72;
            goto LABEL_54;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              v37 = 0;
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

              v21 |= (v37 & 0x7F) << v19;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
              if (v10)
              {
                v24 = 0;
                goto LABEL_62;
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

LABEL_62:
            *(a1 + 8) = v24;
            goto LABEL_55;
          }

          if (v12 == 2)
          {
            v16 = PBReaderReadString();

            v14 = v16;
            v15 = 16;
            goto LABEL_54;
          }
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v32 = PBReaderReadString();

          v14 = v32;
          v15 = 48;
          goto LABEL_54;
        }

        if (v12 == 6)
        {
          v18 = PBReaderReadString();

          v14 = v18;
          v15 = 64;
          goto LABEL_54;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              v38 = 0;
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

              v28 |= (v38 & 0x7F) << v26;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v10 = v27++ >= 9;
              if (v10)
              {
                v31 = 0;
                goto LABEL_66;
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

LABEL_66:
            *(a1 + 40) = v31;
            goto LABEL_55;
          case 8:
            v33 = PBReaderReadString();

            v14 = v33;
            v15 = 56;
            goto LABEL_54;
          case 9:
            v13 = PBReaderReadString();

            v14 = v13;
            v15 = 32;
LABEL_54:
            *(a1 + v15) = v14;
            goto LABEL_55;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_55:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterCertHomeKitTestStartReadFrom(uint64_t a1, void *a2)
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
        v27 = 0;
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
      if ((v11 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v28 = 0;
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

            v22 |= (v28 & 0x7F) << v20;
            if ((v28 & 0x80) == 0)
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

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v22;
          }

LABEL_44:
          *(a1 + 8) = v25;
          goto LABEL_28;
        }

        if (v12 == 2)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 16;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v17 = PBReaderReadString();

            v14 = v17;
            v15 = 24;
            goto LABEL_27;
          case 4:
            v18 = PBReaderReadString();

            v14 = v18;
            v15 = 40;
            goto LABEL_27;
          case 5:
            v13 = PBReaderReadString();

            v14 = v13;
            v15 = 32;
LABEL_27:
            *(a1 + v15) = v14;
            goto LABEL_28;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_28:
      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterCertHomeKitTestSubmissionReadFrom(uint64_t a1, void *a2)
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
        v27 = 0;
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
      if ((v11 >> 3) <= 2)
      {
        if (v12 == 1)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v28 = 0;
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

            v22 |= (v28 & 0x7F) << v20;
            if ((v28 & 0x80) == 0)
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

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v22;
          }

LABEL_44:
          *(a1 + 8) = v25;
          goto LABEL_28;
        }

        if (v12 == 2)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 16;
          goto LABEL_27;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v17 = PBReaderReadString();

            v14 = v17;
            v15 = 24;
            goto LABEL_27;
          case 4:
            v18 = PBReaderReadString();

            v14 = v18;
            v15 = 40;
            goto LABEL_27;
          case 5:
            v13 = PBReaderReadString();

            v14 = v13;
            v15 = 32;
LABEL_27:
            *(a1 + v15) = v14;
            goto LABEL_28;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_28:
      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterCertTestFinishReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
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

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
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
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v33 = 0;
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

            v26 |= (v33 & 0x7F) << v24;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v29 = 0;
              goto LABEL_50;
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

LABEL_50:
          *(a1 + 8) = v29;
          goto LABEL_55;
        }

        if (v12 != 2)
        {
LABEL_45:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_55;
        }

        String = PBReaderReadString();

        v20 = String;
        v21 = 32;
        goto LABEL_35;
      }

      if (v12 == 3)
      {
        break;
      }

      if (v12 == 4)
      {
        v23 = PBReaderReadString();

        v20 = v23;
        v21 = 24;
        goto LABEL_35;
      }

      if (v12 != 5)
      {
        goto LABEL_45;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 44) |= 2u;
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
          goto LABEL_54;
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

LABEL_54:
      *(a1 + 40) = v18;
LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = PBReaderReadString();

    v20 = v22;
    v21 = 16;
LABEL_35:
    *(a1 + v21) = v20;
    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterCertTestStartReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 16;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v16 = PBReaderReadString();

          v14 = v16;
          v15 = 24;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v27 = 0;
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

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_40;
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

LABEL_40:
          *(a1 + 8) = v23;
          goto LABEL_41;
        }

        if (v12 != 2)
        {
          goto LABEL_24;
        }

        v13 = PBReaderReadString();

        v14 = v13;
        v15 = 32;
      }

      *(a1 + v15) = v14;
LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterCertTestSubmissionReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 16;
        }

        else
        {
          if (v12 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v16 = PBReaderReadString();

          v14 = v16;
          v15 = 24;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v27 = 0;
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

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_40;
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

LABEL_40:
          *(a1 + 8) = v23;
          goto LABEL_41;
        }

        if (v12 != 2)
        {
          goto LABEL_24;
        }

        v13 = PBReaderReadString();

        v14 = v13;
        v15 = 32;
      }

      *(a1 + v15) = v14;
LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterTestFinishReadFrom(uint64_t a1, void *a2)
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
        String = PBReaderReadString();

        v14 = String;
        v15 = 32;
LABEL_44:
        *(a1 + v15) = v14;
        goto LABEL_53;
      }

      if (v12 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_53;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        v33 = 0;
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

        v18 |= (v33 & 0x7F) << v16;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v10 = v17++ >= 9;
        if (v10)
        {
          v21 = 0;
          goto LABEL_48;
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

LABEL_48:
      *(a1 + 24) = v21;
LABEL_53:
      v30 = [a2 position];
      if (v30 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v32 = 0;
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

        v25 |= (v32 & 0x7F) << v23;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v10 = v24++ >= 9;
        if (v10)
        {
          v28 = 0;
          goto LABEL_52;
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

LABEL_52:
      *(a1 + 8) = v28;
      goto LABEL_53;
    }

    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v13 = PBReaderReadString();

    v14 = v13;
    v15 = 16;
    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterTestLoadReadFrom(uint64_t a1, void *a2)
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
        if (String)
        {
          [a1 addTestNames:String];
        }
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
            goto LABEL_35;
          }
        }

        v17 = [a2 hasError] ? 0 : v14;
LABEL_35:
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

uint64_t AWDITesterTestShareReadFrom(uint64_t a1, void *a2)
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
        v25 = 0;
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

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
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
        String = PBReaderReadString();

        v20 = String;
        v21 = 24;
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
            *(a1 + 32) |= 1u;
            while (1)
            {
              v26 = 0;
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

              v15 |= (v26 & 0x7F) << v13;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_37;
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

LABEL_37:
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

          goto LABEL_38;
        }

        v19 = PBReaderReadString();

        v20 = v19;
        v21 = 16;
      }

      *(a1 + v21) = v20;
LABEL_38:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDITesterTestStartReadFrom(uint64_t a1, void *a2)
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
        v25 = 0;
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

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
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
        String = PBReaderReadString();

        v20 = String;
        v21 = 24;
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
            *(a1 + 32) |= 1u;
            while (1)
            {
              v26 = 0;
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

              v15 |= (v26 & 0x7F) << v13;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_37;
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

LABEL_37:
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

          goto LABEL_38;
        }

        v19 = PBReaderReadString();

        v20 = v19;
        v21 = 16;
      }

      *(a1 + v21) = v20;
LABEL_38:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLBClientConnectionReportReadFrom(uint64_t a1, void *a2)
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
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 80) |= 0x40u;
            while (1)
            {
              v76 = 0;
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

              v37 |= (v76 & 0x7F) << v35;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v10 = v36++ >= 9;
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
              v18 = v37;
            }

LABEL_135:
            v71 = 56;
            goto LABEL_177;
          }

          if (v12 != 2)
          {
LABEL_130:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_178;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 80) |= 0x80u;
          while (1)
          {
            v80 = 0;
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

            v31 |= (v80 & 0x7F) << v29;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v34 = 0;
              goto LABEL_139;
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

LABEL_139:
          v72 = 64;
        }

        else
        {
          switch(v12)
          {
            case 3:
              v55 = 0;
              v56 = 0;
              v57 = 0;
              *(a1 + 80) |= 0x200u;
              while (1)
              {
                v79 = 0;
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

                v57 |= (v79 & 0x7F) << v55;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                v10 = v56++ >= 9;
                if (v10)
                {
                  v34 = 0;
                  goto LABEL_159;
                }
              }

              if ([a2 hasError])
              {
                v34 = 0;
              }

              else
              {
                v34 = v57;
              }

LABEL_159:
              v72 = 72;
              break;
            case 4:
              v40 = 0;
              v41 = 0;
              v42 = 0;
              *(a1 + 80) |= 0x100u;
              while (1)
              {
                v78 = 0;
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

                v42 |= (v78 & 0x7F) << v40;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v10 = v41++ >= 9;
                if (v10)
                {
                  v34 = 0;
                  goto LABEL_143;
                }
              }

              if ([a2 hasError])
              {
                v34 = 0;
              }

              else
              {
                v34 = v42;
              }

LABEL_143:
              v72 = 68;
              break;
            case 5:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 80) |= 8u;
              while (1)
              {
                v75 = 0;
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

                v21 |= (v75 & 0x7F) << v19;
                if ((v75 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v10 = v20++ >= 9;
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
                v18 = v21;
              }

LABEL_155:
              v71 = 32;
              goto LABEL_177;
            default:
              goto LABEL_130;
          }
        }
      }

      else
      {
        if (v12 > 8)
        {
          switch(v12)
          {
            case 9:
              v65 = 0;
              v66 = 0;
              v67 = 0;
              *(a1 + 80) |= 1u;
              while (1)
              {
                v83 = 0;
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

                v67 |= (v83 & 0x7F) << v65;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v10 = v66++ >= 9;
                if (v10)
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
                v18 = v67;
              }

LABEL_176:
              v71 = 8;
              break;
            case 0xA:
              v50 = 0;
              v51 = 0;
              v52 = 0;
              *(a1 + 80) |= 0x20u;
              while (1)
              {
                v82 = 0;
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

                v52 |= (v82 & 0x7F) << v50;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v10 = v51++ >= 9;
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
                v18 = v52;
              }

LABEL_151:
              v71 = 48;
              break;
            case 0xB:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              *(a1 + 80) |= 0x10u;
              while (1)
              {
                v81 = 0;
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

                v26 |= (v81 & 0x7F) << v24;
                if ((v81 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v10 = v25++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_168;
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

LABEL_168:
              v71 = 40;
              break;
            default:
              goto LABEL_130;
          }

          goto LABEL_177;
        }

        if (v12 == 6)
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 80) |= 4u;
          while (1)
          {
            v85 = 0;
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

            v62 |= (v85 & 0x7F) << v60;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v10 = v61++ >= 9;
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
            v18 = v62;
          }

LABEL_172:
          v71 = 24;
LABEL_177:
          *(a1 + v71) = v18;
          goto LABEL_178;
        }

        if (v12 != 7)
        {
          if (v12 != 8)
          {
            goto LABEL_130;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            v84 = 0;
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

            v15 |= (v84 & 0x7F) << v13;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
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
            v18 = v15;
          }

LABEL_164:
          v71 = 16;
          goto LABEL_177;
        }

        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 80) |= 0x400u;
        while (1)
        {
          v77 = 0;
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
          v10 = v46++ >= 9;
          if (v10)
          {
            v34 = 0;
            goto LABEL_147;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v47;
        }

LABEL_147:
        v72 = 76;
      }

      *(a1 + v72) = v34;
LABEL_178:
      v73 = [a2 position];
    }

    while (v73 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLBConnectionReportReadFrom(uint64_t a1, void *a2)
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
          LOBYTE(v138) = 0;
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

          v7 |= (v138 & 0x7F) << v5;
          if ((v138 & 0x80) == 0)
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
                *(a1 + 184) |= 0x10u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v13 += 7;
                  v10 = v14++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
LABEL_251:
                    v115 = 136;
                    goto LABEL_272;
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

                goto LABEL_251;
              case 2u:
                v73 = 0;
                v74 = 0;
                v75 = 0;
                *(a1 + 184) |= 0x20u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v75 |= (v138 & 0x7F) << v73;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v73 += 7;
                  v10 = v74++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_255;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v75;
                }

LABEL_255:
                v116 = 144;
                goto LABEL_277;
              case 3u:
                v53 = 0;
                v54 = 0;
                v55 = 0;
                *(a1 + 184) |= 0x100u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v55 |= (v138 & 0x7F) << v53;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v53 += 7;
                  v10 = v54++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_235;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v55;
                }

LABEL_235:
                v116 = 156;
                goto LABEL_277;
              case 4u:
                v63 = 0;
                v64 = 0;
                v65 = 0;
                *(a1 + 184) |= 0x200u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v65 |= (v138 & 0x7F) << v63;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v63 += 7;
                  v10 = v64++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_243;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v65;
                }

LABEL_243:
                v116 = 160;
                goto LABEL_277;
              case 5u:
                v37 = 0;
                v38 = 0;
                v39 = 0;
                *(a1 + 184) |= 0x80u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v39 |= (v138 & 0x7F) << v37;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v37 += 7;
                  v10 = v38++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_227;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v39;
                }

LABEL_227:
                v116 = 152;
                goto LABEL_277;
              case 6u:
                v83 = 0;
                v84 = 0;
                v85 = 0;
                *(a1 + 184) |= 0x40u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v85 |= (v138 & 0x7F) << v83;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v83 += 7;
                  v10 = v84++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_263;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v85;
                }

LABEL_263:
                v116 = 148;
                goto LABEL_277;
              case 7u:
                if (v12 != 2)
                {
                  v128 = 0;
                  v129 = 0;
                  v130 = 0;
                  while (1)
                  {
                    LOBYTE(v138) = 0;
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

                    v130 |= (v138 & 0x7F) << v128;
                    if ((v138 & 0x80) == 0)
                    {
                      break;
                    }

                    v128 += 7;
                    v10 = v129++ >= 9;
                    if (v10)
                    {
                      goto LABEL_308;
                    }
                  }

LABEL_307:
                  [a2 hasError];
LABEL_308:
                  PBRepeatedInt64Add();
                  goto LABEL_278;
                }

                v138 = 0;
                v139 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v93 = [a2 position];
                  if (v93 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_204;
                  }

                  v94 = 0;
                  v95 = 0;
                  v96 = 0;
                  while (1)
                  {
                    v140 = 0;
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

                    v96 |= (v140 & 0x7F) << v94;
                    if ((v140 & 0x80) == 0)
                    {
                      break;
                    }

                    v94 += 7;
                    v10 = v95++ >= 9;
                    if (v10)
                    {
                      goto LABEL_179;
                    }
                  }

                  [a2 hasError];
LABEL_179:
                  PBRepeatedInt64Add();
                }

              case 8u:
                v68 = 0;
                v69 = 0;
                v70 = 0;
                *(a1 + 184) |= 0x1000u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v70 |= (v138 & 0x7F) << v68;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v68 += 7;
                  v10 = v69++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_247;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v70;
                }

LABEL_247:
                v116 = 172;
                goto LABEL_277;
              case 9u:
                v110 = 0;
                v111 = 0;
                v112 = 0;
                *(a1 + 184) |= 0x800u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v112 |= (v138 & 0x7F) << v110;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v110 += 7;
                  v10 = v111++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_276;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v112;
                }

LABEL_276:
                v116 = 168;
                goto LABEL_277;
              case 0xAu:
                v48 = 0;
                v49 = 0;
                v50 = 0;
                *(a1 + 184) |= 0x400u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v50 |= (v138 & 0x7F) << v48;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v48 += 7;
                  v10 = v49++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_231;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v50;
                }

LABEL_231:
                v116 = 164;
                goto LABEL_277;
              case 0xBu:
                if (v12 == 2)
                {
                  v138 = 0;
                  v139 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v104 = [a2 position];
                    if (v104 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v105 = 0;
                    v106 = 0;
                    v107 = 0;
                    while (1)
                    {
                      v140 = 0;
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

                      v107 |= (v140 & 0x7F) << v105;
                      if ((v140 & 0x80) == 0)
                      {
                        break;
                      }

                      v105 += 7;
                      v10 = v106++ >= 9;
                      if (v10)
                      {
                        goto LABEL_203;
                      }
                    }

                    [a2 hasError];
LABEL_203:
                    PBRepeatedInt32Add();
                  }

LABEL_204:
                  PBReaderRecallMark();
                }

                else
                {
                  v133 = 0;
                  v134 = 0;
                  v135 = 0;
                  while (1)
                  {
                    LOBYTE(v138) = 0;
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

                    v135 |= (v138 & 0x7F) << v133;
                    if ((v138 & 0x80) == 0)
                    {
                      break;
                    }

                    v133 += 7;
                    v10 = v134++ >= 9;
                    if (v10)
                    {
                      goto LABEL_319;
                    }
                  }

                  [a2 hasError];
LABEL_319:
                  PBRepeatedInt32Add();
                }

LABEL_278:
                v117 = [a2 position];
                if (v117 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              case 0xCu:
                if (v12 != 2)
                {
                  v118 = 0;
                  v119 = 0;
                  v120 = 0;
                  while (1)
                  {
                    LOBYTE(v138) = 0;
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

                    v120 |= (v138 & 0x7F) << v118;
                    if ((v138 & 0x80) == 0)
                    {
                      goto LABEL_307;
                    }

                    v118 += 7;
                    v10 = v119++ >= 9;
                    if (v10)
                    {
                      goto LABEL_308;
                    }
                  }
                }

                v138 = 0;
                v139 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v31 = [a2 position];
                  if (v31 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_204;
                  }

                  v32 = 0;
                  v33 = 0;
                  v34 = 0;
                  while (1)
                  {
                    v140 = 0;
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

                    v34 |= (v140 & 0x7F) << v32;
                    if ((v140 & 0x80) == 0)
                    {
                      break;
                    }

                    v32 += 7;
                    v10 = v33++ >= 9;
                    if (v10)
                    {
                      goto LABEL_59;
                    }
                  }

                  [a2 hasError];
LABEL_59:
                  PBRepeatedInt64Add();
                }

              case 0xDu:
                if (v12 != 2)
                {
                  v123 = 0;
                  v124 = 0;
                  v125 = 0;
                  while (1)
                  {
                    LOBYTE(v138) = 0;
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

                    v125 |= (v138 & 0x7F) << v123;
                    if ((v138 & 0x80) == 0)
                    {
                      goto LABEL_307;
                    }

                    v123 += 7;
                    v10 = v124++ >= 9;
                    if (v10)
                    {
                      goto LABEL_308;
                    }
                  }
                }

                v138 = 0;
                v139 = 0;
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
                    v140 = 0;
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

                    v45 |= (v140 & 0x7F) << v43;
                    if ((v140 & 0x80) == 0)
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
                  PBRepeatedInt64Add();
                }

              case 0xEu:
                v88 = 0;
                v89 = 0;
                v90 = 0;
                *(a1 + 184) |= 0x4000u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v90 |= (v138 & 0x7F) << v88;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v88 += 7;
                  v10 = v89++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_267;
                  }
                }

                if ([a2 hasError])
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v90;
                }

LABEL_267:
                v116 = 180;
                goto LABEL_277;
              case 0xFu:
                v24 = 0;
                v25 = 0;
                v26 = 0;
                *(a1 + 184) |= 0x2000u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v26 |= (v138 & 0x7F) << v24;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v24 += 7;
                  v10 = v25++ >= 9;
                  if (v10)
                  {
                    v29 = 0;
                    goto LABEL_223;
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

LABEL_223:
                v116 = 176;
LABEL_277:
                *(a1 + v116) = v29;
                goto LABEL_278;
              case 0x10u:
                v58 = 0;
                v59 = 0;
                v60 = 0;
                *(a1 + 184) |= 8u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v60 |= (v138 & 0x7F) << v58;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v58 += 7;
                  v10 = v59++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_239;
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

LABEL_239:
                v115 = 128;
                goto LABEL_272;
              case 0x11u:
                v19 = 0;
                v20 = 0;
                v21 = 0;
                *(a1 + 184) |= 2u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v21 |= (v138 & 0x7F) << v19;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v19 += 7;
                  v10 = v20++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_219;
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

LABEL_219:
                v115 = 112;
                goto LABEL_272;
              case 0x12u:
                v78 = 0;
                v79 = 0;
                v80 = 0;
                *(a1 + 184) |= 1u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v80 |= (v138 & 0x7F) << v78;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v78 += 7;
                  v10 = v79++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_259;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v80;
                }

LABEL_259:
                v115 = 104;
                goto LABEL_272;
              case 0x13u:
                v99 = 0;
                v100 = 0;
                v101 = 0;
                *(a1 + 184) |= 4u;
                while (1)
                {
                  LOBYTE(v138) = 0;
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

                  v101 |= (v138 & 0x7F) << v99;
                  if ((v138 & 0x80) == 0)
                  {
                    break;
                  }

                  v99 += 7;
                  v10 = v100++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
                    goto LABEL_271;
                  }
                }

                if ([a2 hasError])
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v101;
                }

LABEL_271:
                v115 = 120;
LABEL_272:
                *(a1 + v115) = v18;
                goto LABEL_278;
              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_278;
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

uint64_t AWDLBEndpointsFetchReportReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v52 = 0;
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

              v32 |= (v52 & 0x7F) << v30;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v10 = v31++ >= 9;
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
              v18 = v32;
            }

LABEL_87:
            v46 = 28;
            break;
          case 5:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v51 = 0;
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

              v43 |= (v51 & 0x7F) << v41;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v10 = v42++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_103;
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

LABEL_103:
            v46 = 20;
            break;
          case 6:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v50 = 0;
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

              v21 |= (v50 & 0x7F) << v19;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
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
              v18 = v21;
            }

LABEL_95:
            v46 = 16;
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
        switch(v12)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v49 = 0;
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

              v26 |= (v49 & 0x7F) << v24;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v29 = 0;
                goto LABEL_83;
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

LABEL_83:
            *(a1 + 8) = v29;
            goto LABEL_105;
          case 2:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v54 = 0;
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

              v38 |= (v54 & 0x7F) << v36;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_99;
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

LABEL_99:
            v46 = 24;
            break;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 36) |= 0x20u;
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
            v46 = 32;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v46) = v18;
LABEL_105:
      v47 = [a2 position];
    }

    while (v47 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLibnetcoreCellularFallbackReportReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 92) |= 4u;
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
                LOBYTE(v33) = 0;
                goto LABEL_92;
              }
            }

            v33 = (v30 != 0) & ~[a2 hasError];
LABEL_92:
            *(a1 + 88) = v33;
            goto LABEL_123;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 92) |= 2u;
            while (1)
            {
              LOBYTE(v58) = 0;
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

              v43 |= (v58 & 0x7F) << v41;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v10 = v42++ >= 9;
              if (v10)
              {
                v46 = 0;
                goto LABEL_100;
              }
            }

            if ([a2 hasError])
            {
              v46 = 0;
            }

            else
            {
              v46 = v43;
            }

LABEL_100:
            *(a1 + 72) = v46;
            goto LABEL_123;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 92) |= 1u;
            while (1)
            {
              LOBYTE(v58) = 0;
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

              v23 |= (v58 & 0x7F) << v21;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_96;
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

LABEL_96:
            *(a1 + 56) = v26;
            goto LABEL_123;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v40 = objc_alloc_init(AWDLibnetcoreConnectionStatisticsReport);
          [a1 addPrimaryInterfaceAttemptStatisticsReports:v40];

          v58 = 0;
          v59 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDLibnetcoreConnectionStatisticsReportReadFrom(v40, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_81;
        }

        if (v13 == 7)
        {
          v27 = objc_alloc_init(AWDLibnetcoreConnectionDataUsageSnapshot);
          [a1 addDataUsageSnapshotsAtNetworkEvents:v27];

          v58 = 0;
          v59 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDLibnetcoreConnectionDataUsageSnapshotReadFrom(v27, a2);
          if (!result)
          {
            return result;
          }

LABEL_81:
          PBReaderRecallMark();
          goto LABEL_123;
        }
      }

      else
      {
        if (v13 == 4)
        {
          if (v12 != 2)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
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

              v49 |= (v58 & 0x7F) << v47;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v10 = v48++ >= 9;
              if (v10)
              {
                goto LABEL_120;
              }
            }

            [a2 hasError];
LABEL_120:
            PBRepeatedInt32Add();
            goto LABEL_123;
          }

          v58 = 0;
          v59 = 0;
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
              goto LABEL_81;
            }

            v35 = 0;
            v36 = 0;
            v37 = 0;
            while (1)
            {
              v60 = 0;
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

              v37 |= (v60 & 0x7F) << v35;
              if ((v60 & 0x80) == 0)
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
            PBRepeatedInt32Add();
          }
        }

        if (v13 == 5)
        {
          if (v12 != 2)
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
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

              v54 |= (v58 & 0x7F) << v52;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v10 = v53++ >= 9;
              if (v10)
              {
                goto LABEL_122;
              }
            }

            [a2 hasError];
LABEL_122:
            PBRepeatedUInt64Add();
            goto LABEL_123;
          }

          v58 = 0;
          v59 = 0;
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
              goto LABEL_81;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v60 = 0;
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

              v18 |= (v60 & 0x7F) << v16;
              if ((v60 & 0x80) == 0)
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
            PBRepeatedUInt64Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_123:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLibnetcoreConnectionDataUsageSnapshotReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 72) |= 8u;
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
                v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesInInitial;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesInInitial;
            goto LABEL_110;
          }

          if (v12 == 8)
          {
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x40u;
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
                v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesOutInitial;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesOutInitial;
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
                v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesInWiFi;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesInWiFi;
            goto LABEL_110;
          }

          if (v12 == 6)
          {
            v21 = 0;
            v22 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x80u;
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
                v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesOutWiFi;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesOutWiFi;
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
              v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesInCell;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesInCell;
          goto LABEL_110;
        }

        if (v12 == 4)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x20u;
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
              v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesOutCell;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__multipathBytesOutCell;
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
              v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__bytesIn;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__bytesIn;
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
              v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__bytesOut;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreConnectionDataUsageSnapshot__bytesOut;
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

uint64_t AWDLibnetcoreConnectionStatisticsReportReadFrom(uint64_t a1, void *a2)
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
      v255 = 0;
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

      v8 |= (v255 & 0x7F) << v6;
      if ((v255 & 0x80) == 0)
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
        *(a1 + 308) |= 0x100000000uLL;
        while (1)
        {
          v255 = 0;
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

          v15 |= (v255 & 0x7F) << v13;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_525:
            v252 = 264;
            goto LABEL_614;
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

        goto LABEL_525;
      case 2u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        *(a1 + 308) |= 0x10000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v128 |= (v255 & 0x7F) << v126;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v11 = v127++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_527;
          }
        }

        v85 = (v128 != 0) & ~[a2 hasError];
LABEL_527:
        v254 = 299;
        goto LABEL_601;
      case 3u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 308) |= 0x40000000uLL;
        while (1)
        {
          v255 = 0;
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

          v108 |= (v255 & 0x7F) << v106;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v11 = v107++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_511;
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

LABEL_511:
        v252 = 248;
        goto LABEL_614;
      case 4u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 308) |= 0x4000uLL;
        while (1)
        {
          v255 = 0;
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

          v118 |= (v255 & 0x7F) << v116;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v11 = v117++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_519;
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

LABEL_519:
        v252 = 120;
        goto LABEL_614;
      case 5u:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 308) |= 0x2000uLL;
        while (1)
        {
          v255 = 0;
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

          v77 |= (v255 & 0x7F) << v75;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v11 = v76++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_491;
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

LABEL_491:
        v252 = 112;
        goto LABEL_614;
      case 6u:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 308) |= 0x800000000uLL;
        while (1)
        {
          v255 = 0;
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

          v153 |= (v255 & 0x7F) << v151;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v11 = v152++ >= 9;
          if (v11)
          {
            v69 = 0;
            goto LABEL_545;
          }
        }

        if ([a2 hasError])
        {
          v69 = 0;
        }

        else
        {
          v69 = v153;
        }

LABEL_545:
        v253 = 288;
        goto LABEL_546;
      case 7u:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 308) |= 0x40000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v168 |= (v255 & 0x7F) << v166;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v11 = v167++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_556;
          }
        }

        v85 = (v168 != 0) & ~[a2 hasError];
LABEL_556:
        v254 = 301;
        goto LABEL_601;
      case 8u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 308) |= 0x80000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v123 |= (v255 & 0x7F) << v121;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v11 = v122++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_521;
          }
        }

        v85 = (v123 != 0) & ~[a2 hasError];
LABEL_521:
        v254 = 302;
        goto LABEL_601;
      case 9u:
        v181 = 0;
        v182 = 0;
        v183 = 0;
        *(a1 + 308) |= 0x100000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v183 |= (v255 & 0x7F) << v181;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v181 += 7;
          v11 = v182++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_566;
          }
        }

        v85 = (v183 != 0) & ~[a2 hasError];
LABEL_566:
        v254 = 303;
        goto LABEL_601;
      case 0xAu:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 308) |= 0x200000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v93 |= (v255 & 0x7F) << v91;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_499;
          }
        }

        v85 = (v93 != 0) & ~[a2 hasError];
LABEL_499:
        v254 = 304;
        goto LABEL_601;
      case 0xBu:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        *(a1 + 308) |= 0x20uLL;
        while (1)
        {
          v255 = 0;
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

          v178 |= (v255 & 0x7F) << v176;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          v11 = v177++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_564;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v178;
        }

LABEL_564:
        v252 = 48;
        goto LABEL_614;
      case 0xCu:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 308) |= 0x40uLL;
        while (1)
        {
          v255 = 0;
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

          v72 |= (v255 & 0x7F) << v70;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_487;
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

LABEL_487:
        v252 = 56;
        goto LABEL_614;
      case 0xDu:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 308) |= 0x10uLL;
        while (1)
        {
          v255 = 0;
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

          v88 |= (v255 & 0x7F) << v86;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_497;
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

LABEL_497:
        v252 = 40;
        goto LABEL_614;
      case 0xEu:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 308) |= 0x80uLL;
        while (1)
        {
          v255 = 0;
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

          v163 |= (v255 & 0x7F) << v161;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v11 = v162++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_554;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v163;
        }

LABEL_554:
        v252 = 64;
        goto LABEL_614;
      case 0xFu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 308) |= 0x100uLL;
        while (1)
        {
          v255 = 0;
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

          v61 |= (v255 & 0x7F) << v59;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v11 = v60++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_479;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v61;
        }

LABEL_479:
        v252 = 72;
        goto LABEL_614;
      case 0x10u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 308) |= 0x800000uLL;
        while (1)
        {
          v255 = 0;
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

          v113 |= (v255 & 0x7F) << v111;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_515;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v113;
        }

LABEL_515:
        v252 = 192;
        goto LABEL_614;
      case 0x11u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 308) |= 0x1000000uLL;
        while (1)
        {
          v255 = 0;
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

          v51 |= (v255 & 0x7F) << v49;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_471;
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

LABEL_471:
        v252 = 200;
        goto LABEL_614;
      case 0x12u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 308) |= 0x400000uLL;
        while (1)
        {
          v255 = 0;
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

          v138 |= (v255 & 0x7F) << v136;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v11 = v137++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_533;
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

LABEL_533:
        v252 = 184;
        goto LABEL_614;
      case 0x13u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        *(a1 + 308) |= 0x2000000uLL;
        while (1)
        {
          v255 = 0;
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

          v173 |= (v255 & 0x7F) << v171;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v11 = v172++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_560;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v173;
        }

LABEL_560:
        v252 = 208;
        goto LABEL_614;
      case 0x14u:
        v211 = 0;
        v212 = 0;
        v213 = 0;
        *(a1 + 308) |= 0x4000000uLL;
        while (1)
        {
          v255 = 0;
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

          v213 |= (v255 & 0x7F) << v211;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          v11 = v212++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_586;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v213;
        }

LABEL_586:
        v252 = 216;
        goto LABEL_614;
      case 0x15u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 308) |= 0x800uLL;
        while (1)
        {
          v255 = 0;
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

          v148 |= (v255 & 0x7F) << v146;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v11 = v147++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_541;
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

LABEL_541:
        v252 = 96;
        goto LABEL_614;
      case 0x16u:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 308) |= 0x10000000uLL;
        while (1)
        {
          v255 = 0;
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

          v158 |= (v255 & 0x7F) << v156;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v11 = v157++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_550;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v158;
        }

LABEL_550:
        v252 = 232;
        goto LABEL_614;
      case 0x17u:
        v201 = 0;
        v202 = 0;
        v203 = 0;
        *(a1 + 308) |= 4uLL;
        while (1)
        {
          v255 = 0;
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

          v203 |= (v255 & 0x7F) << v201;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v201 += 7;
          v11 = v202++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_578;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v203;
        }

LABEL_578:
        v252 = 24;
        goto LABEL_614;
      case 0x18u:
        v221 = 0;
        v222 = 0;
        v223 = 0;
        *(a1 + 308) |= 0x8000000uLL;
        while (1)
        {
          v255 = 0;
          v224 = [a2 position] + 1;
          if (v224 >= [a2 position] && (v225 = objc_msgSend(a2, "position") + 1, v225 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v223 |= (v255 & 0x7F) << v221;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v221 += 7;
          v11 = v222++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_594;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v223;
        }

LABEL_594:
        v252 = 224;
        goto LABEL_614;
      case 0x19u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 308) |= 0x20000000uLL;
        while (1)
        {
          v255 = 0;
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

          v103 |= (v255 & 0x7F) << v101;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v11 = v102++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_507;
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

LABEL_507:
        v252 = 240;
        goto LABEL_614;
      case 0x1Au:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 308) |= 0x400uLL;
        while (1)
        {
          v255 = 0;
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

          v98 |= (v255 & 0x7F) << v96;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v11 = v97++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_503;
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

LABEL_503:
        v252 = 88;
        goto LABEL_614;
      case 0x1Bu:
        v241 = 0;
        v242 = 0;
        v243 = 0;
        *(a1 + 308) |= 2uLL;
        while (1)
        {
          v255 = 0;
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

          v243 |= (v255 & 0x7F) << v241;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v241 += 7;
          v11 = v242++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_609;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v243;
        }

LABEL_609:
        v252 = 16;
        goto LABEL_614;
      case 0x1Cu:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 308) |= 1uLL;
        while (1)
        {
          v255 = 0;
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

          v41 |= (v255 & 0x7F) << v39;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_463;
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

LABEL_463:
        v252 = 8;
        goto LABEL_614;
      case 0x1Du:
        v226 = 0;
        v227 = 0;
        v228 = 0;
        *(a1 + 308) |= 0x400000000uLL;
        while (1)
        {
          v255 = 0;
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

          v228 |= (v255 & 0x7F) << v226;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v226 += 7;
          v11 = v227++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_598;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v228;
        }

LABEL_598:
        v252 = 280;
        goto LABEL_614;
      case 0x1Eu:
        v231 = 0;
        v232 = 0;
        v233 = 0;
        *(a1 + 308) |= 0x400000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v233 |= (v255 & 0x7F) << v231;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v231 += 7;
          v11 = v232++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_600;
          }
        }

        v85 = (v233 != 0) & ~[a2 hasError];
LABEL_600:
        v254 = 305;
        goto LABEL_601;
      case 0x1Fu:
        v186 = 0;
        v187 = 0;
        v188 = 0;
        *(a1 + 308) |= 0x2000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v188 |= (v255 & 0x7F) << v186;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v186 += 7;
          v11 = v187++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_568;
          }
        }

        v85 = (v188 != 0) & ~[a2 hasError];
LABEL_568:
        v254 = 296;
        goto LABEL_601;
      case 0x20u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 308) |= 0x4000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v133 |= (v255 & 0x7F) << v131;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v11 = v132++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_529;
          }
        }

        v85 = (v133 != 0) & ~[a2 hasError];
LABEL_529:
        v254 = 297;
        goto LABEL_601;
      case 0x21u:
        v191 = 0;
        v192 = 0;
        v193 = 0;
        *(a1 + 308) |= 0x8000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v193 |= (v255 & 0x7F) << v191;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v11 = v192++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_570;
          }
        }

        v85 = (v193 != 0) & ~[a2 hasError];
LABEL_570:
        v254 = 298;
        goto LABEL_601;
      case 0x22u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 308) |= 0x1000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v66 |= (v255 & 0x7F) << v64;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v69 = 0;
            goto LABEL_483;
          }
        }

        if ([a2 hasError])
        {
          v69 = 0;
        }

        else
        {
          v69 = v66;
        }

LABEL_483:
        v253 = 292;
LABEL_546:
        *(a1 + v253) = v69;
        continue;
      case 0x23u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 308) |= 0x200000000uLL;
        while (1)
        {
          v255 = 0;
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

          v46 |= (v255 & 0x7F) << v44;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_467;
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

LABEL_467:
        v252 = 272;
        goto LABEL_614;
      case 0x24u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 308) |= 0x1000uLL;
        while (1)
        {
          v255 = 0;
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

          v31 |= (v255 & 0x7F) << v29;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_455;
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

LABEL_455:
        v252 = 104;
        goto LABEL_614;
      case 0x25u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 308) |= 0x80000000uLL;
        while (1)
        {
          v255 = 0;
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

          v36 |= (v255 & 0x7F) << v34;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_459;
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

LABEL_459:
        v252 = 256;
        goto LABEL_614;
      case 0x26u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 308) |= 0x200uLL;
        while (1)
        {
          v255 = 0;
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

          v26 |= (v255 & 0x7F) << v24;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_451;
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

LABEL_451:
        v252 = 80;
        goto LABEL_614;
      case 0x27u:
        v236 = 0;
        v237 = 0;
        v238 = 0;
        *(a1 + 308) |= 8uLL;
        while (1)
        {
          v255 = 0;
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

          v238 |= (v255 & 0x7F) << v236;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v236 += 7;
          v11 = v237++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_605;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v238;
        }

LABEL_605:
        v252 = 32;
        goto LABEL_614;
      case 0x28u:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        *(a1 + 308) |= 0x200000uLL;
        while (1)
        {
          v255 = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v255 & 0x7F) << v206;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v11 = v207++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_582;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v208;
        }

LABEL_582:
        v252 = 176;
        goto LABEL_614;
      case 0x29u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 308) |= 0x20000000000uLL;
        while (1)
        {
          v255 = 0;
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

          v82 |= (v255 & 0x7F) << v80;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            LOBYTE(v85) = 0;
            goto LABEL_493;
          }
        }

        v85 = (v82 != 0) & ~[a2 hasError];
LABEL_493:
        v254 = 300;
LABEL_601:
        *(a1 + v254) = v85;
        continue;
      case 0x2Au:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        *(a1 + 308) |= 0x8000uLL;
        while (1)
        {
          v255 = 0;
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

          v143 |= (v255 & 0x7F) << v141;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v11 = v142++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_537;
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

LABEL_537:
        v252 = 128;
        goto LABEL_614;
      case 0x2Bu:
        v216 = 0;
        v217 = 0;
        v218 = 0;
        *(a1 + 308) |= 0x40000uLL;
        while (1)
        {
          v255 = 0;
          v219 = [a2 position] + 1;
          if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v218 |= (v255 & 0x7F) << v216;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v216 += 7;
          v11 = v217++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_590;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v218;
        }

LABEL_590:
        v252 = 152;
        goto LABEL_614;
      case 0x2Cu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 308) |= 0x20000uLL;
        while (1)
        {
          v255 = 0;
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

          v21 |= (v255 & 0x7F) << v19;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_447;
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

LABEL_447:
        v252 = 144;
        goto LABEL_614;
      case 0x2Du:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 308) |= 0x100000uLL;
        while (1)
        {
          v255 = 0;
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

          v56 |= (v255 & 0x7F) << v54;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_475;
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

LABEL_475:
        v252 = 168;
        goto LABEL_614;
      case 0x2Eu:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        *(a1 + 308) |= 0x10000uLL;
        while (1)
        {
          v255 = 0;
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

          v198 |= (v255 & 0x7F) << v196;
          if ((v255 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v11 = v197++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_574;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v198;
        }

LABEL_574:
        v252 = 136;
        goto LABEL_614;
      case 0x2Fu:
        v246 = 0;
        v247 = 0;
        v248 = 0;
        *(a1 + 308) |= 0x80000uLL;
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
      v255 = 0;
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

      v248 |= (v255 & 0x7F) << v246;
      if ((v255 & 0x80) == 0)
      {
        break;
      }

      v246 += 7;
      v11 = v247++ >= 9;
      if (v11)
      {
        v18 = 0;
        goto LABEL_613;
      }
    }

    if ([a2 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v248;
    }

LABEL_613:
    v252 = 160;
LABEL_614:
    *(a1 + v252) = v18;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDLibnetcoreMPTCPStatsReportReadFrom(uint64_t a1, void *a2)
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
      case 0xCu:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x400u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverAttempts;
          v20 = v14++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverAttempts;
        goto LABEL_321;
      case 0xDu:
        v73 = 0;
        v74 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x2000000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpInteractiveAttempt;
          v20 = v74++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpInteractiveAttempt;
        goto LABEL_321;
      case 0xEu:
        v57 = 0;
        v58 = 0;
        v15 = 0;
        *(a1 + 248) |= 2u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpAggregateAttempt;
          v20 = v58++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpAggregateAttempt;
        goto LABEL_321;
      case 0xFu:
        v65 = 0;
        v66 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x80u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpFirstPartyHandoverAttempt;
          v20 = v66++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpFirstPartyHandoverAttempt;
        goto LABEL_321;
      case 0x10u:
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpFirstPartyInteractiveAttempt;
          v20 = v38++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpFirstPartyInteractiveAttempt;
        goto LABEL_321;
      case 0x11u:
        v85 = 0;
        v86 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x40u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpFirstPartyAggregateAttempt;
          v20 = v86++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpFirstPartyAggregateAttempt;
        goto LABEL_321;
      case 0x12u:
        v97 = 0;
        v98 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x400000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHeuristicFallback;
          v20 = v98++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHeuristicFallback;
        goto LABEL_321;
      case 0x13u:
        v69 = 0;
        v70 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x800000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHeuristicFallbackFirstParty;
          v20 = v70++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHeuristicFallbackFirstParty;
        goto LABEL_321;
      case 0x14u:
        v109 = 0;
        v110 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x40000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeHandoverSuccessWiFi;
          v20 = v110++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeHandoverSuccessWiFi;
        goto LABEL_321;
      case 0x15u:
        v45 = 0;
        v46 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x10000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeHandoverSuccessCell;
          v20 = v46++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeHandoverSuccessCell;
        goto LABEL_321;
      case 0x16u:
        v105 = 0;
        v106 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x100000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeInteractiveSuccess;
          v20 = v106++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeInteractiveSuccess;
        goto LABEL_321;
      case 0x17u:
        v33 = 0;
        v34 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x4000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeAggregateSuccess;
          v20 = v34++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeAggregateSuccess;
        goto LABEL_321;
      case 0x18u:
        v41 = 0;
        v42 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x80000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeHandoverSuccessWiFiFirstParty;
          v20 = v42++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeHandoverSuccessWiFiFirstParty;
        goto LABEL_321;
      case 0x19u:
        v93 = 0;
        v94 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x20000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeHandoverSuccessCellFirstParty;
          v20 = v94++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeHandoverSuccessCellFirstParty;
        goto LABEL_321;
      case 0x1Au:
        v29 = 0;
        v30 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x200000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeInteractiveSuccessFirstParty;
          v20 = v30++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeInteractiveSuccessFirstParty;
        goto LABEL_321;
      case 0x1Bu:
        v61 = 0;
        v62 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x8000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeAggregateSuccessFirstParty;
          v20 = v62++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandshakeAggregateSuccessFirstParty;
        goto LABEL_321;
      case 0x1Cu:
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x1000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverCellSubflowFromWiFi;
          v20 = v26++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverCellSubflowFromWiFi;
        goto LABEL_321;
      case 0x1Du:
        v77 = 0;
        v78 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x2000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverWiFiSubflowFromCell;
          v20 = v78++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverWiFiSubflowFromCell;
        goto LABEL_321;
      case 0x1Eu:
        v101 = 0;
        v102 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x8000000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpInteractiveCellUsage;
          v20 = v102++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpInteractiveCellUsage;
        goto LABEL_321;
      case 0x1Fu:
        v117 = 0;
        v118 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x800u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverCellBytes;
          v20 = v118++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverCellBytes;
        goto LABEL_321;
      case 0x20u:
        v81 = 0;
        v82 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x4000000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpInteractiveCellBytes;
          v20 = v82++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpInteractiveCellBytes;
        goto LABEL_321;
      case 0x21u:
        v89 = 0;
        v90 = 0;
        v15 = 0;
        *(a1 + 248) |= 4u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpAggregateCellBytes;
          v20 = v90++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpAggregateCellBytes;
        goto LABEL_321;
      case 0x22u:
        v113 = 0;
        v114 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x200u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverAllBytes;
          v20 = v114++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpHandoverAllBytes;
        goto LABEL_321;
      case 0x23u:
        v121 = 0;
        v122 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x1000000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpInteractiveAllBytes;
          v20 = v122++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpInteractiveAllBytes;
        goto LABEL_321;
      case 0x24u:
        v53 = 0;
        v54 = 0;
        v15 = 0;
        *(a1 + 248) |= 1u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpAggregateAllBytes;
          v20 = v54++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpAggregateAllBytes;
        goto LABEL_321;
      case 0x25u:
        v49 = 0;
        v50 = 0;
        v15 = 0;
        *(a1 + 248) |= 8u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpBackToWiFi;
          v20 = v50++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpBackToWiFi;
        goto LABEL_321;
      case 0x26u:
        v133 = 0;
        v134 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x10u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpCellDenied;
          v20 = v134++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpCellDenied;
        goto LABEL_321;
      case 0x27u:
        v21 = 0;
        v22 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x20u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpCellProxy;
          v20 = v22++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpCellProxy;
        goto LABEL_321;
      case 0x28u:
        v125 = 0;
        v126 = 0;
        v15 = 0;
        *(a1 + 248) |= 0x20000000u;
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
          v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpWiFiProxy;
          v20 = v126++ > 8;
          if (v20)
          {
            goto LABEL_324;
          }
        }

        v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpWiFiProxy;
        goto LABEL_321;
      case 0x29u:
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
      v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpTriggeredCell;
      v20 = v130++ > 8;
      if (v20)
      {
        goto LABEL_324;
      }
    }

    v19 = &OBJC_IVAR___AWDLibnetcoreMPTCPStatsReport__mptcpTriggeredCell;
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

uint64_t AWDLibnetcoreMbufStatsReportReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 72) |= 0x20u;
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
                v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbufMemReleased;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbufMemReleased;
            goto LABEL_110;
          }

          if (v12 == 8)
          {
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x10u;
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
                v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbufDrainCount;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbufDrainCount;
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
            *(a1 + 72) |= 0x80u;
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
                v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__sockMBcnt;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__sockMBcnt;
            goto LABEL_110;
          }

          if (v12 == 6)
          {
            v21 = 0;
            v22 = 0;
            v15 = 0;
            *(a1 + 72) |= 0x40u;
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
                v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__sockAtMBLimit;
                goto LABEL_113;
              }
            }

            v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__sockAtMBLimit;
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
          *(a1 + 72) |= 8u;
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
              v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbuf4KBTotal;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbuf4KBTotal;
          goto LABEL_110;
        }

        if (v12 == 4)
        {
          v25 = 0;
          v26 = 0;
          v15 = 0;
          *(a1 + 72) |= 1u;
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
              v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbuf16KBTotal;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbuf16KBTotal;
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
          *(a1 + 72) |= 2u;
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
              v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbuf256BTotal;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbuf256BTotal;
          goto LABEL_110;
        }

        if (v12 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 72) |= 4u;
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
              v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbuf2KBTotal;
              goto LABEL_113;
            }
          }

          v20 = &OBJC_IVAR___AWDLibnetcoreMbufStatsReport__mbuf2KBTotal;
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

uint64_t AWDLibnetcoreNetworkdStatsReportReadFrom(uint64_t a1, void *a2)
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
            v20 = &OBJC_IVAR___AWDLibnetcoreNetworkdStatsReport__fallbackConnectionCount;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDLibnetcoreNetworkdStatsReport__fallbackConnectionCount;
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
        *(a1 + 32) |= 2u;
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
            v20 = &OBJC_IVAR___AWDLibnetcoreNetworkdStatsReport__totalConnectionCount;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDLibnetcoreNetworkdStatsReport__totalConnectionCount;
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
    *(a1 + 32) |= 4u;
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
        v20 = &OBJC_IVAR___AWDLibnetcoreNetworkdStatsReport__totalSuccessfulConnectionCount;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDLibnetcoreNetworkdStatsReport__totalSuccessfulConnectionCount;
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

uint64_t AWDLibnetcoreRNFActivityNotificationReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDLibnetcoreStatsReportReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35) = 0;
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
            v29 = objc_alloc_init(AWDLibnetcoreTCPTFOStatsReport);

            *(a1 + 80) = v29;
            v35 = 0;
            v36 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDLibnetcoreTCPTFOStatsReportReadFrom(v29, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          }

          if (v12 == 7)
          {
            v22 = objc_alloc_init(AWDLibnetcoreNetworkdStatsReport);

            *(a1 + 32) = v22;
            v35 = 0;
            v36 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDLibnetcoreNetworkdStatsReportReadFrom(v22, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          }
        }

        else
        {
          switch(v12)
          {
            case 8:
              v31 = objc_alloc_init(AWDLibnetcoreTCPECNInterfaceStatsReport);
              [a1 addTcpECNInterfaceReport:v31];

              v35 = 0;
              v36 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDLibnetcoreTCPECNInterfaceStatsReportReadFrom(v31, a2);
              if (!result)
              {
                return result;
              }

              goto LABEL_71;
            case 9:
              v33 = objc_alloc_init(AWDNWAPIUsage);

              *(a1 + 40) = v33;
              v35 = 0;
              v36 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDNWAPIUsageReadFrom(v33, a2);
              if (!result)
              {
                return result;
              }

              goto LABEL_71;
            case 0xA:
              v15 = objc_alloc_init(AWDLibnetcoreMPTCPStatsReport);

              *(a1 + 24) = v15;
              v35 = 0;
              v36 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              result = AWDLibnetcoreMPTCPStatsReportReadFrom(v15, a2);
              if (!result)
              {
                return result;
              }

              goto LABEL_71;
          }
        }
      }

      else if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 88) |= 1u;
          while (1)
          {
            LOBYTE(v35) = 0;
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

            v25 |= (v35 & 0x7F) << v23;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_83;
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

LABEL_83:
          *(a1 + 8) = v28;
          goto LABEL_72;
        }

        if (v12 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 88) |= 2u;
          while (1)
          {
            LOBYTE(v35) = 0;
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

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v10 = v17++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_79;
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

LABEL_79:
          *(a1 + 48) = v21;
          goto LABEL_72;
        }
      }

      else
      {
        switch(v12)
        {
          case 3:
            v30 = objc_alloc_init(AWDLibnetcoreMbufStatsReport);

            *(a1 + 16) = v30;
            v35 = 0;
            v36 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDLibnetcoreMbufStatsReportReadFrom(v30, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          case 4:
            v32 = objc_alloc_init(AWDLibnetcoreTCPStatsReport);

            *(a1 + 72) = v32;
            v35 = 0;
            v36 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDLibnetcoreTCPStatsReportReadFrom(v32, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          case 5:
            v13 = objc_alloc_init(AWDLibnetcoreTCPECNStatsReport);

            *(a1 + 64) = v13;
            v35 = 0;
            v36 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDLibnetcoreTCPECNStatsReportReadFrom(v13, a2);
            if (!result)
            {
              return result;
            }

LABEL_71:
            PBReaderRecallMark();
            goto LABEL_72;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_72:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}