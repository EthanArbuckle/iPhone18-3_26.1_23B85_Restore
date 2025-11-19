uint64_t AWDIDSClientProcessReceivedMessageReadFrom(uint64_t a1, void *a2)
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
        if (v12 > 5)
        {
          if (v12 == 6)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v50 = 0;
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

              v42 |= (v50 & 0x7F) << v40;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v10 = v41++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_94;
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

LABEL_94:
            v46 = 8;
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

              goto LABEL_108;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 64) |= 4u;
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
              v18 = v26;
            }

LABEL_102:
            v46 = 24;
          }
        }

        else if (v12 == 4)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v52 = 0;
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

            v37 |= (v52 & 0x7F) << v35;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v10 = v36++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_90;
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

LABEL_90:
          v46 = 32;
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_62;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v51 = 0;
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

            v15 |= (v51 & 0x7F) << v13;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_98;
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

LABEL_98:
          v46 = 40;
        }

        goto LABEL_107;
      }

      if (v12 == 1)
      {
        break;
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
        *(a1 + 64) |= 2u;
        while (1)
        {
          v53 = 0;
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

          v21 |= (v53 & 0x7F) << v19;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
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
          v18 = v21;
        }

LABEL_106:
        v46 = 16;
        goto LABEL_107;
      }

      String = PBReaderReadString();

      *(a1 + 56) = String;
LABEL_108:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    *(a1 + 64) |= 0x20u;
    while (1)
    {
      v54 = 0;
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

      v31 |= (v54 & 0x7F) << v29;
      if ((v54 & 0x80) == 0)
      {
        break;
      }

      v29 += 7;
      v10 = v30++ >= 9;
      if (v10)
      {
        v18 = 0;
        goto LABEL_86;
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

LABEL_86:
    v46 = 48;
LABEL_107:
    *(a1 + v46) = v18;
    goto LABEL_108;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSCloudLinkReEstablishedReadFrom(uint64_t a1, void *a2)
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
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 32) |= 8u;
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
              v18 = 0;
              goto LABEL_76;
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

LABEL_76:
          v36 = 28;
LABEL_77:
          *(a1 + v36) = v18;
          goto LABEL_78;
        }

        if (v12 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_78;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v40 = 0;
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

          v21 |= (v40 & 0x7F) << v19;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_67;
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

LABEL_67:
        v37 = 8;
      }

      else
      {
        if (v12 != 1)
        {
          if (v12 != 2)
          {
            goto LABEL_40;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v43 = 0;
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

            v15 |= (v43 & 0x7F) << v13;
            if ((v43 & 0x80) == 0)
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
          v36 = 24;
          goto LABEL_77;
        }

        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v41 = 0;
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

          v28 |= (v41 & 0x7F) << v26;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v10 = v27++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v28;
        }

LABEL_71:
        v37 = 16;
      }

      *(a1 + v37) = v24;
LABEL_78:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSConnectedAfterPipeConnectedTimeInMsReadFrom(uint64_t a1, void *a2)
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
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___AWDIDSConnectedAfterPipeConnectedTimeInMs__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDIDSConnectedAfterPipeConnectedTimeInMs__timestamp;
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
      v28 = 0;
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

      v14 |= (v28 & 0x7F) << v20;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___AWDIDSConnectedAfterPipeConnectedTimeInMs__connectionTimeInMs;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDIDSConnectedAfterPipeConnectedTimeInMs__connectionTimeInMs;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSDeviceConnectionDurationEventReadFrom(uint64_t a1, void *a2)
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
        v64 = 0;
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

        v7 |= (v64 & 0x7F) << v5;
        if ((v64 & 0x80) == 0)
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
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 84) |= 0x100u;
            while (1)
            {
              v73 = 0;
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

              v42 |= (v73 & 0x7F) << v40;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v10 = v41++ >= 9;
              if (v10)
              {
                LOBYTE(v45) = 0;
                goto LABEL_127;
              }
            }

            v45 = (v42 != 0) & ~[a2 hasError];
LABEL_127:
            *(a1 + 80) = v45;
            goto LABEL_149;
          case 4:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 84) |= 2u;
            while (1)
            {
              v71 = 0;
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

              v53 |= (v71 & 0x7F) << v51;
              if ((v71 & 0x80) == 0)
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
            v62 = 16;
            break;
          case 5:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 84) |= 1u;
            while (1)
            {
              v70 = 0;
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

              v15 |= (v70 & 0x7F) << v13;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
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
              v18 = v15;
            }

LABEL_135:
            v62 = 8;
            break;
          default:
            goto LABEL_112;
        }

        goto LABEL_148;
      }

      if (v12 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 84) |= 0x80u;
        while (1)
        {
          v72 = 0;
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
          v18 = v32;
        }

LABEL_121:
        v62 = 64;
LABEL_148:
        *(a1 + v62) = v18;
        goto LABEL_149;
      }

      if (v12 != 2)
      {
        goto LABEL_112;
      }

      String = PBReaderReadString();

      *(a1 + 72) = String;
LABEL_149:
      v63 = [a2 position];
      if (v63 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 84) |= 4u;
        while (1)
        {
          v69 = 0;
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

          v37 |= (v69 & 0x7F) << v35;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v10 = v36++ >= 9;
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
          v18 = v37;
        }

LABEL_125:
        v62 = 24;
      }

      else
      {
        if (v12 != 7)
        {
LABEL_112:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_149;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 84) |= 0x40u;
        while (1)
        {
          v68 = 0;
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

          v27 |= (v68 & 0x7F) << v25;
          if ((v68 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
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
          v18 = v27;
        }

LABEL_117:
        v62 = 56;
      }
    }

    else
    {
      switch(v12)
      {
        case 8:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v67 = 0;
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

            v48 |= (v67 & 0x7F) << v46;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v10 = v47++ >= 9;
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
            v18 = v48;
          }

LABEL_131:
          v62 = 40;
          break;
        case 9:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 84) |= 0x20u;
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

            v58 |= (v66 & 0x7F) << v56;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
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
            v18 = v58;
          }

LABEL_147:
          v62 = 48;
          break;
        case 0xA:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            v65 = 0;
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

            v21 |= (v65 & 0x7F) << v19;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
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
            v18 = v21;
          }

LABEL_139:
          v62 = 32;
          break;
        default:
          goto LABEL_112;
      }
    }

    goto LABEL_148;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSDuplicatedMessageReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 1u;
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

uint64_t AWDIDSExternalIPDetectionTimeReadFrom(uint64_t a1, void *a2)
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
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___AWDIDSExternalIPDetectionTime__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDIDSExternalIPDetectionTime__timestamp;
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
      v28 = 0;
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

      v14 |= (v28 & 0x7F) << v20;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___AWDIDSExternalIPDetectionTime__timeToSucceed;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDIDSExternalIPDetectionTime__timeToSucceed;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSGenericConnectionSetupDurationEventReadFrom(uint64_t a1, void *a2)
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

      switch(v12)
      {
        case 1:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v52 = 0;
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

            v27 |= (v52 & 0x7F) << v25;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
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
            v18 = v27;
          }

LABEL_83:
          v47 = 16;
          break;
        case 2:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 40) |= 0x10u;
          while (1)
          {
            v55 = 0;
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

            v39 |= (v55 & 0x7F) << v37;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v10 = v38++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v39;
          }

LABEL_98:
          v48 = 32;
LABEL_103:
          *(a1 + v48) = v24;
          goto LABEL_104;
        case 3:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v51 = 0;
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

            v15 |= (v51 & 0x7F) << v13;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
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
            v18 = v15;
          }

LABEL_89:
          v47 = 8;
          break;
        default:
          goto LABEL_60;
      }

      *(a1 + v47) = v18;
LABEL_104:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 4:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 40) |= 0x20u;
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
            LOBYTE(v35) = 0;
            goto LABEL_85;
          }
        }

        v35 = (v32 != 0) & ~[a2 hasError];
LABEL_85:
        *(a1 + 36) = v35;
        goto LABEL_104;
      case 5:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          v54 = 0;
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

          v44 |= (v54 & 0x7F) << v42;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v10 = v43++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_102;
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

LABEL_102:
        v48 = 28;
        break;
      case 6:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v53 = 0;
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

          v21 |= (v53 & 0x7F) << v19;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_94;
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

LABEL_94:
        v48 = 24;
        break;
      default:
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_104;
    }

    goto LABEL_103;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSLocalDeliveryAppLevelAckReadFrom(uint64_t a1, void *a2)
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

      if (v12 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          v42 = 0;
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

          v32 |= (v42 & 0x7F) << v30;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
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
          v18 = v32;
        }

LABEL_73:
        v36 = 32;
LABEL_78:
        *(a1 + v36) = v18;
        goto LABEL_79;
      }

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

      String = PBReaderReadString();

      *(a1 + 40) = String;
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
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v41 = 0;
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

          v22 |= (v41 & 0x7F) << v20;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v10 = v21++ >= 9;
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
          v18 = v22;
        }

LABEL_65:
        v36 = 8;
        break;
      case 4:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          v40 = 0;
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

          v27 |= (v40 & 0x7F) << v25;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
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
          v18 = v27;
        }

LABEL_69:
        v36 = 16;
        break;
      case 5:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 48) |= 4u;
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
            goto LABEL_77;
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

LABEL_77:
        v36 = 24;
        break;
      default:
        goto LABEL_60;
    }

    goto LABEL_78;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSLocalDeliveryMessageDeliveredReadFrom(uint64_t a1, void *a2)
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
        v53 = 0;
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

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
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
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              v55 = 0;
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

              v47 |= (v55 & 0x7F) << v45;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v10 = v46++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_109;
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

LABEL_109:
            v51 = 24;
          }

          else
          {
            if (v12 != 8)
            {
LABEL_92:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_123;
            }

            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 72) |= 0x10u;
            while (1)
            {
              v54 = 0;
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

              v27 |= (v54 & 0x7F) << v25;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_121;
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

LABEL_121:
            v51 = 40;
          }
        }

        else if (v12 == 5)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v57 = 0;
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

            v37 |= (v57 & 0x7F) << v35;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v10 = v36++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_101;
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

LABEL_101:
          v51 = 8;
        }

        else
        {
          if (v12 != 6)
          {
            goto LABEL_92;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 72) |= 0x20u;
          while (1)
          {
            v56 = 0;
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

            v16 |= (v56 & 0x7F) << v14;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v10 = v15++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_113;
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

LABEL_113:
          v51 = 48;
        }

        goto LABEL_122;
      }

      if (v12 > 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 72) |= 0x40u;
        while (1)
        {
          v60 = 0;
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

          v32 |= (v60 & 0x7F) << v30;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_97;
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

LABEL_97:
        v51 = 56;
LABEL_122:
        *(a1 + v51) = v19;
        goto LABEL_123;
      }

      if (v12 != 2)
      {
        goto LABEL_92;
      }

      String = PBReaderReadString();

      *(a1 + 64) = String;
LABEL_123:
      v52 = [a2 position];
      if (v52 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 3)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      *(a1 + 72) |= 2u;
      while (1)
      {
        v59 = 0;
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

        v42 |= (v59 & 0x7F) << v40;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
        v10 = v41++ >= 9;
        if (v10)
        {
          v19 = 0;
          goto LABEL_105;
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

LABEL_105:
      v51 = 16;
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_92;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      *(a1 + 72) |= 8u;
      while (1)
      {
        v58 = 0;
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

        v22 |= (v58 & 0x7F) << v20;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v10 = v21++ >= 9;
        if (v10)
        {
          v19 = 0;
          goto LABEL_117;
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

LABEL_117:
      v51 = 32;
    }

    goto LABEL_122;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSLocalDeliveryMessageReceivedReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 56) |= 4u;
            while (1)
            {
              v46 = 0;
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

              v31 |= (v46 & 0x7F) << v29;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v10 = v30++ >= 9;
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
              v18 = v31;
            }

LABEL_79:
            v41 = 24;
            break;
          case 5:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v45 = 0;
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

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
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
              v18 = v38;
            }

LABEL_91:
            v41 = 16;
            break;
          case 6:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              v44 = 0;
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

              v21 |= (v44 & 0x7F) << v19;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
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
              v18 = v21;
            }

LABEL_87:
            v41 = 32;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_93;
        }

        goto LABEL_92;
      }

      if (v12 == 1)
      {
        break;
      }

      if (v12 != 2)
      {
        if (v12 != 3)
        {
          goto LABEL_60;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 56) |= 1u;
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
          v18 = v15;
        }

LABEL_83:
        v41 = 8;
        goto LABEL_92;
      }

      String = PBReaderReadString();

      *(a1 + 48) = String;
LABEL_93:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    *(a1 + 56) |= 0x10u;
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

      v26 |= (v48 & 0x7F) << v24;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v24 += 7;
      v10 = v25++ >= 9;
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
      v18 = v26;
    }

LABEL_75:
    v41 = 40;
LABEL_92:
    *(a1 + v41) = v18;
    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSLocalDeliveryMessageSentReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 56) |= 4u;
            while (1)
            {
              v46 = 0;
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

              v31 |= (v46 & 0x7F) << v29;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v10 = v30++ >= 9;
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
              v18 = v31;
            }

LABEL_79:
            v41 = 24;
            break;
          case 5:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v45 = 0;
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

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
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
              v18 = v38;
            }

LABEL_91:
            v41 = 16;
            break;
          case 6:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              v44 = 0;
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

              v21 |= (v44 & 0x7F) << v19;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
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
              v18 = v21;
            }

LABEL_87:
            v41 = 32;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_93;
        }

        goto LABEL_92;
      }

      if (v12 == 1)
      {
        break;
      }

      if (v12 != 2)
      {
        if (v12 != 3)
        {
          goto LABEL_60;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 56) |= 1u;
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
          v18 = v15;
        }

LABEL_83:
        v41 = 8;
        goto LABEL_92;
      }

      String = PBReaderReadString();

      *(a1 + 48) = String;
LABEL_93:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    *(a1 + 56) |= 0x10u;
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

      v26 |= (v48 & 0x7F) << v24;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v24 += 7;
      v10 = v25++ >= 9;
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
      v18 = v26;
    }

LABEL_75:
    v41 = 40;
LABEL_92:
    *(a1 + v41) = v18;
    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSLocalDeliverySocketClosedReadFrom(uint64_t a1, void *a2)
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
        if (v12 <= 9)
        {
          switch(v12)
          {
            case 7:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 104) |= 0x20u;
              while (1)
              {
                v71 = 0;
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

                v39 |= (v71 & 0x7F) << v37;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v10 = v38++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_138;
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

LABEL_138:
              v65 = 48;
              break;
            case 8:
              v53 = 0;
              v54 = 0;
              v55 = 0;
              *(a1 + 104) |= 1u;
              while (1)
              {
                v70 = 0;
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

                v55 |= (v70 & 0x7F) << v53;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v10 = v54++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_150;
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

LABEL_150:
              v65 = 8;
              break;
            case 9:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 104) |= 0x10u;
              while (1)
              {
                v69 = 0;
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

                v21 |= (v69 & 0x7F) << v19;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v10 = v20++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_126;
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

LABEL_126:
              v65 = 40;
              break;
            default:
              goto LABEL_117;
          }

          goto LABEL_155;
        }

        switch(v12)
        {
          case 0xA:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 104) |= 0x40u;
            while (1)
            {
              v68 = 0;
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

              v49 |= (v68 & 0x7F) << v47;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v10 = v48++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_146;
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

LABEL_146:
            v65 = 56;
            goto LABEL_155;
          case 0xB:
            String = PBReaderReadString();

            v30 = String;
            v31 = 96;
            break;
          case 0xC:
            v29 = PBReaderReadString();

            v30 = v29;
            v31 = 80;
            break;
          default:
LABEL_117:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_156;
        }
      }

      else
      {
        if (v12 > 3)
        {
          switch(v12)
          {
            case 4:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 104) |= 4u;
              while (1)
              {
                v74 = 0;
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

                v44 |= (v74 & 0x7F) << v42;
                if ((v74 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v10 = v43++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_142;
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

LABEL_142:
              v65 = 24;
              break;
            case 5:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 104) |= 0x80u;
              while (1)
              {
                v73 = 0;
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

                v60 |= (v73 & 0x7F) << v58;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v10 = v59++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_154;
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

LABEL_154:
              v65 = 64;
              break;
            case 6:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              *(a1 + 104) |= 2u;
              while (1)
              {
                v72 = 0;
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

                v26 |= (v72 & 0x7F) << v24;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v10 = v25++ >= 9;
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
                v18 = v26;
              }

LABEL_130:
              v65 = 16;
              break;
            default:
              goto LABEL_117;
          }

          goto LABEL_155;
        }

        if (v12 == 1)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 104) |= 0x100u;
          while (1)
          {
            v76 = 0;
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

            v34 |= (v76 & 0x7F) << v32;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
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
            v18 = v34;
          }

LABEL_134:
          v65 = 72;
LABEL_155:
          *(a1 + v65) = v18;
          goto LABEL_156;
        }

        if (v12 != 2)
        {
          if (v12 != 3)
          {
            goto LABEL_117;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 104) |= 8u;
          while (1)
          {
            v75 = 0;
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

            v15 |= (v75 & 0x7F) << v13;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_122;
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

LABEL_122:
          v65 = 32;
          goto LABEL_155;
        }

        v52 = PBReaderReadString();

        v30 = v52;
        v31 = 88;
      }

      *(a1 + v31) = v30;
LABEL_156:
      v66 = [a2 position];
    }

    while (v66 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSLocalDeliverySocketOpenedReadFrom(uint64_t a1, void *a2)
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
        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 72) |= 8u;
            while (1)
            {
              v49 = 0;
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

              v35 |= (v49 & 0x7F) << v33;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v10 = v34++ >= 9;
              if (v10)
              {
                v21 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v35;
            }

LABEL_86:
            v45 = 32;
          }

          else
          {
            if (v12 != 6)
            {
              goto LABEL_77;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              v48 = 0;
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

              v18 |= (v48 & 0x7F) << v16;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v10 = v17++ >= 9;
              if (v10)
              {
                v21 = 0;
                goto LABEL_94;
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

LABEL_94:
            v45 = 24;
          }

          goto LABEL_99;
        }

        if (v12 == 7)
        {
          String = PBReaderReadString();

          v14 = String;
          v15 = 64;
        }

        else
        {
          if (v12 != 8)
          {
LABEL_77:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_100;
          }

          v27 = PBReaderReadString();

          v14 = v27;
          v15 = 48;
        }
      }

      else
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v51 = 0;
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

              v40 |= (v51 & 0x7F) << v38;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v10 = v39++ >= 9;
              if (v10)
              {
                v21 = 0;
                goto LABEL_90;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v40;
            }

LABEL_90:
            v45 = 8;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_77;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              v50 = 0;
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

              v24 |= (v50 & 0x7F) << v22;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v10 = v23++ >= 9;
              if (v10)
              {
                v21 = 0;
                goto LABEL_98;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v24;
            }

LABEL_98:
            v45 = 16;
          }

          goto LABEL_99;
        }

        if (v12 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
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

            v30 |= (v52 & 0x7F) << v28;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v30;
          }

LABEL_82:
          v45 = 40;
LABEL_99:
          *(a1 + v45) = v21;
          goto LABEL_100;
        }

        if (v12 != 2)
        {
          goto LABEL_77;
        }

        v13 = PBReaderReadString();

        v14 = v13;
        v15 = 56;
      }

      *(a1 + v15) = v14;
LABEL_100:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSLocalMessageRTTReadFrom(uint64_t a1, void *a2)
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
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___AWDIDSLocalMessageRTT__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDIDSLocalMessageRTT__timestamp;
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
      v28 = 0;
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

      v14 |= (v28 & 0x7F) << v20;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___AWDIDSLocalMessageRTT__rtt;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDIDSLocalMessageRTT__rtt;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSLocalMessageTimedOutReadFrom(uint64_t a1, void *a2)
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
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___AWDIDSLocalMessageTimedOut__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDIDSLocalMessageTimedOut__timestamp;
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
      v28 = 0;
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

      v14 |= (v28 & 0x7F) << v20;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___AWDIDSLocalMessageTimedOut__expirationDate;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDIDSLocalMessageTimedOut__expirationDate;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSMagnetCorruptionReadFrom(uint64_t a1, void *a2)
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
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___AWDIDSMagnetCorruption__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDIDSMagnetCorruption__timestamp;
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
      v28 = 0;
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

      v14 |= (v28 & 0x7F) << v20;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___AWDIDSMagnetCorruption__corrupted;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDIDSMagnetCorruption__corrupted;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSMagnetCorruptionDetailedReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            v29 = 0;
            v30 = 0;
            v15 = 0;
            *(a1 + 56) |= 2u;
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

              v15 |= (v46 & 0x7F) << v29;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v18 = v30++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__correctRawBytesSinceLastCorruption;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__correctRawBytesSinceLastCorruption;
            goto LABEL_86;
          case 5:
            v37 = 0;
            v38 = 0;
            v15 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              v45 = 0;
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

              v15 |= (v45 & 0x7F) << v37;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v18 = v38++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__correctFramesSinceLastCorruption;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__correctFramesSinceLastCorruption;
LABEL_86:
            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v15;
            }

LABEL_89:
            *(a1 + *v20) = v19;
            goto LABEL_90;
          case 6:
            v21 = 0;
            v22 = 0;
            v15 = 0;
            *(a1 + 56) |= 0x10u;
            while (1)
            {
              v44 = 0;
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

              v15 |= (v44 & 0x7F) << v21;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v18 = v22++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__recoveryTimeInMs;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__recoveryTimeInMs;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v15 = 0;
            *(a1 + 56) |= 0x20u;
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

              v15 |= (v49 & 0x7F) << v25;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v18 = v26++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__timestamp;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__timestamp;
            goto LABEL_86;
          case 2:
            v33 = 0;
            v34 = 0;
            v15 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              v48 = 0;
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

              v15 |= (v48 & 0x7F) << v33;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v18 = v34++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__linkType;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__linkType;
            goto LABEL_86;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 56) |= 4u;
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
              v18 = v14++ > 8;
              if (v18)
              {
                v19 = 0;
                v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__discardedRawBytes;
                goto LABEL_89;
              }
            }

            v20 = &OBJC_IVAR___AWDIDSMagnetCorruptionDetailed__discardedRawBytes;
            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v41 = [a2 position];
    }

    while (v41 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSMagnetDataCorruptionRecoveryTimeInMsReadFrom(uint64_t a1, void *a2)
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
          v17 = v13++ > 8;
          if (v17)
          {
            v18 = 0;
            v19 = &OBJC_IVAR___AWDIDSMagnetDataCorruptionRecoveryTimeInMs__timestamp;
            goto LABEL_44;
          }
        }

        v19 = &OBJC_IVAR___AWDIDSMagnetDataCorruptionRecoveryTimeInMs__timestamp;
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
      v28 = 0;
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

      v14 |= (v28 & 0x7F) << v20;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ > 8;
      if (v17)
      {
        v18 = 0;
        v19 = &OBJC_IVAR___AWDIDSMagnetDataCorruptionRecoveryTimeInMs__recoveryTimeInMs;
        goto LABEL_44;
      }
    }

    v19 = &OBJC_IVAR___AWDIDSMagnetDataCorruptionRecoveryTimeInMs__recoveryTimeInMs;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSMessageDeliveryPathReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 32) |= 2u;
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
        *(a1 + 16) = v25;
      }

      else if (v12 == 2)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 1u;
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

uint64_t AWDIDSNoteMessageReceivedReadFrom(uint64_t a1, void *a2)
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
        if (v12 != 4)
        {
          if (v12 == 5)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v47 = 0;
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

              v40 |= (v47 & 0x7F) << v38;
              if ((v47 & 0x80) == 0)
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
            v43 = 16;
          }

          else
          {
            if (v12 != 6)
            {
LABEL_52:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_91;
            }

            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 52) |= 1u;
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
                goto LABEL_81;
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

LABEL_81:
            v43 = 8;
          }

          goto LABEL_90;
        }

        String = PBReaderReadString();

        *(a1 + 40) = String;
      }

      else
      {
        switch(v12)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 52) |= 4u;
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
                v24 = 0;
                goto LABEL_75;
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

LABEL_75:
            v43 = 24;
LABEL_90:
            *(a1 + v43) = v24;
            break;
          case 2:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              v49 = 0;
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

              v34 |= (v49 & 0x7F) << v32;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
              if (v10)
              {
                v37 = 0;
                goto LABEL_85;
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

LABEL_85:
            *(a1 + 32) = v37;
            break;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 52) |= 0x10u;
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
              v10 = v14++ >= 9;
              if (v10)
              {
                LOBYTE(v18) = 0;
                goto LABEL_77;
              }
            }

            v18 = (v15 != 0) & ~[a2 hasError];
LABEL_77:
            *(a1 + 48) = v18;
            break;
          default:
            goto LABEL_52;
        }
      }

LABEL_91:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSOTRSessionNegotiationReadFrom(uint64_t a1, void *a2)
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
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 48) |= 4u;
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
              v25 = 0;
              goto LABEL_73;
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

LABEL_73:
          v37 = 24;
          goto LABEL_74;
        }

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

        String = PBReaderReadString();

        *(a1 + 40) = String;
      }

      else
      {
        if (v12 == 3)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v41 = 0;
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

            v22 |= (v41 & 0x7F) << v20;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_65;
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

LABEL_65:
          v37 = 16;
          goto LABEL_74;
        }

        if (v12 == 4)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 48) |= 1u;
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
              v25 = 0;
              goto LABEL_69;
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

LABEL_69:
          v37 = 8;
LABEL_74:
          *(a1 + v37) = v25;
          goto LABEL_79;
        }

        if (v12 != 5)
        {
          goto LABEL_60;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          v43 = 0;
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

          v15 |= (v43 & 0x7F) << v13;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_78;
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

LABEL_78:
        *(a1 + 32) = v18;
      }

LABEL_79:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSOutgoingMessageDurationTraceReadFrom(uint64_t a1, void *a2)
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
        v119 = 0;
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

        v7 |= (v119 & 0x7F) << v5;
        if ((v119 & 0x80) == 0)
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
          *(a1 + 112) |= 4u;
          while (1)
          {
            v119 = 0;
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

            v14 |= (v119 & 0x7F) << v12;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_244:
              v117 = 24;
              goto LABEL_277;
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

          goto LABEL_244;
        case 2u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 112) |= 0x20000u;
          while (1)
          {
            v119 = 0;
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

            v71 |= (v119 & 0x7F) << v69;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v10 = v70++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_248;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v71;
          }

LABEL_248:
          v116 = 92;
          goto LABEL_282;
        case 3u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 112) |= 0x10000u;
          while (1)
          {
            v119 = 0;
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

            v51 |= (v119 & 0x7F) << v49;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v10 = v50++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_228;
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

LABEL_228:
          v116 = 88;
          goto LABEL_282;
        case 4u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 112) |= 0x80000u;
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
              v23 = 0;
              goto LABEL_236;
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

LABEL_236:
          v116 = 108;
          goto LABEL_282;
        case 5u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 112) |= 0x40000u;
          while (1)
          {
            v119 = 0;
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

            v36 |= (v119 & 0x7F) << v34;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_216;
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

LABEL_216:
          v116 = 104;
          goto LABEL_282;
        case 6u:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 112) |= 0x200u;
          while (1)
          {
            v119 = 0;
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

            v86 |= (v119 & 0x7F) << v84;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v10 = v85++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_260;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v86;
          }

LABEL_260:
          v116 = 60;
          goto LABEL_282;
        case 7u:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 112) |= 0x100u;
          while (1)
          {
            v119 = 0;
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

            v97 |= (v119 & 0x7F) << v95;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v10 = v96++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_268;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v97;
          }

LABEL_268:
          v116 = 56;
          goto LABEL_282;
        case 8u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 112) |= 8u;
          while (1)
          {
            v119 = 0;
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

            v66 |= (v119 & 0x7F) << v64;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v10 = v65++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_240;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v66;
          }

LABEL_240:
          v117 = 32;
          goto LABEL_277;
        case 9u:
          v106 = 0;
          v107 = 0;
          v108 = 0;
          *(a1 + 112) |= 1u;
          while (1)
          {
            v119 = 0;
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

            v108 |= (v119 & 0x7F) << v106;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v106 += 7;
            v10 = v107++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_276;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v108;
          }

LABEL_276:
          v117 = 8;
          goto LABEL_277;
        case 0xAu:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 112) |= 0x1000u;
          while (1)
          {
            v119 = 0;
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

            v46 |= (v119 & 0x7F) << v44;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_224;
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

LABEL_224:
          v116 = 72;
          goto LABEL_282;
        case 0xBu:
          v101 = 0;
          v102 = 0;
          v103 = 0;
          *(a1 + 112) |= 0x800u;
          while (1)
          {
            v119 = 0;
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

            v103 |= (v119 & 0x7F) << v101;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v101 += 7;
            v10 = v102++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_272;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v103;
          }

LABEL_272:
          v116 = 68;
          goto LABEL_282;
        case 0xCu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 112) |= 0x4000u;
          while (1)
          {
            v119 = 0;
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

            v31 |= (v119 & 0x7F) << v29;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_212;
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

LABEL_212:
          v116 = 80;
          goto LABEL_282;
        case 0xDu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 112) |= 0x2000u;
          while (1)
          {
            v119 = 0;
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

            v41 |= (v119 & 0x7F) << v39;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_220;
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

LABEL_220:
          v116 = 76;
          goto LABEL_282;
        case 0xEu:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 112) |= 2u;
          while (1)
          {
            v119 = 0;
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

            v92 |= (v119 & 0x7F) << v90;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v10 = v91++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_264;
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

LABEL_264:
          v117 = 16;
LABEL_277:
          *(a1 + v117) = v17;
          goto LABEL_283;
        case 0xFu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 112) |= 0x400u;
          while (1)
          {
            v119 = 0;
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

            v26 |= (v119 & 0x7F) << v24;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_208;
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

LABEL_208:
          v116 = 64;
          goto LABEL_282;
        case 0x10u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 112) |= 0x40u;
          while (1)
          {
            v119 = 0;
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

            v56 |= (v119 & 0x7F) << v54;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_232;
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

LABEL_232:
          v116 = 48;
          goto LABEL_282;
        case 0x11u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 112) |= 0x10u;
          while (1)
          {
            v119 = 0;
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

            v20 |= (v119 & 0x7F) << v18;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_204;
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

LABEL_204:
          v116 = 40;
          goto LABEL_282;
        case 0x12u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 112) |= 0x20u;
          while (1)
          {
            v119 = 0;
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

            v76 |= (v119 & 0x7F) << v74;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v10 = v75++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_252;
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

LABEL_252:
          v116 = 44;
          goto LABEL_282;
        case 0x13u:
          String = PBReaderReadString();

          *(a1 + 96) = String;
          goto LABEL_283;
        case 0x14u:
          v111 = 0;
          v112 = 0;
          v113 = 0;
          *(a1 + 112) |= 0x80u;
          while (1)
          {
            v119 = 0;
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

            v113 |= (v119 & 0x7F) << v111;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v111 += 7;
            v10 = v112++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_281;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v113;
          }

LABEL_281:
          v116 = 52;
          goto LABEL_282;
        case 0x15u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 112) |= 0x8000u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_283;
      }

      while (1)
      {
        v119 = 0;
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

        v81 |= (v119 & 0x7F) << v79;
        if ((v119 & 0x80) == 0)
        {
          break;
        }

        v79 += 7;
        v10 = v80++ >= 9;
        if (v10)
        {
          v23 = 0;
          goto LABEL_256;
        }
      }

      v23 = [a2 hasError] ? 0 : v81;
LABEL_256:
      v116 = 84;
LABEL_282:
      *(a1 + v116) = v23;
LABEL_283:
      v118 = [a2 position];
    }

    while (v118 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSQRAllocationReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 3)
      {
        break;
      }

      if (v12 <= 5)
      {
        if (v12 == 4)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            v52 = 0;
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

            v36 |= (v52 & 0x7F) << v34;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
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
            v18 = v36;
          }

LABEL_83:
          v46 = 24;
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_54;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 56) |= 8u;
          while (1)
          {
            v51 = 0;
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

            v15 |= (v51 & 0x7F) << v13;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
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
            v18 = v15;
          }

LABEL_87:
          v46 = 28;
        }

LABEL_92:
        *(a1 + v46) = v18;
        goto LABEL_98;
      }

      if (v12 == 6)
      {
        String = PBReaderReadString();

        v25 = String;
        v26 = 48;
      }

      else
      {
        if (v12 != 7)
        {
LABEL_54:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_98;
        }

        v24 = PBReaderReadString();

        v25 = v24;
        v26 = 40;
      }

      *(a1 + v26) = v25;
LABEL_98:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      *(a1 + 56) |= 2u;
      while (1)
      {
        v50 = 0;
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

        v29 |= (v50 & 0x7F) << v27;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v10 = v28++ >= 9;
        if (v10)
        {
          v32 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v32 = 0;
      }

      else
      {
        v32 = v29;
      }

LABEL_79:
      v45 = 16;
      goto LABEL_97;
    }

    if (v12 == 2)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        v49 = 0;
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

        v42 |= (v49 & 0x7F) << v40;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
        v10 = v41++ >= 9;
        if (v10)
        {
          v32 = 0;
          goto LABEL_96;
        }
      }

      if ([a2 hasError])
      {
        v32 = 0;
      }

      else
      {
        v32 = v42;
      }

LABEL_96:
      v45 = 8;
LABEL_97:
      *(a1 + v45) = v32;
      goto LABEL_98;
    }

    if (v12 != 3)
    {
      goto LABEL_54;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(a1 + 56) |= 0x10u;
    while (1)
    {
      v53 = 0;
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

      v21 |= (v53 & 0x7F) << v19;
      if ((v53 & 0x80) == 0)
      {
        break;
      }

      v19 += 7;
      v10 = v20++ >= 9;
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
      v18 = v21;
    }

LABEL_91:
    v46 = 32;
    goto LABEL_92;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSQuickRelayReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 84) |= 2u;
          while (1)
          {
            v84 = 0;
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

            v14 |= (v84 & 0x7F) << v12;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_154:
              v80 = 16;
              goto LABEL_155;
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

          goto LABEL_154;
        case 2u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            v94 = 0;
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

            v50 |= (v94 & 0x7F) << v48;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v10 = v49++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_159;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v50;
          }

LABEL_159:
          v79 = 28;
          goto LABEL_180;
        case 3u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 84) |= 4u;
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
              v26 = 0;
              goto LABEL_142;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v35;
          }

LABEL_142:
          v79 = 24;
          goto LABEL_180;
        case 4u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            v83 = 0;
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

            v40 |= (v83 & 0x7F) << v38;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_146;
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

LABEL_146:
          v80 = 8;
LABEL_155:
          *(a1 + v80) = v17;
          goto LABEL_181;
        case 5u:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 84) |= 0x100u;
          while (1)
          {
            v92 = 0;
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

            v23 |= (v92 & 0x7F) << v21;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v10 = v22++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_134;
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

LABEL_134:
          v79 = 48;
          goto LABEL_180;
        case 6u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 84) |= 0x800u;
          while (1)
          {
            v91 = 0;
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

            v55 |= (v91 & 0x7F) << v53;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v10 = v54++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_163;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v55;
          }

LABEL_163:
          v79 = 80;
          goto LABEL_180;
        case 7u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v90 = 0;
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

            v65 |= (v90 & 0x7F) << v63;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v10 = v64++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_171;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v65;
          }

LABEL_171:
          v79 = 32;
          goto LABEL_180;
        case 8u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 84) |= 0x400u;
          while (1)
          {
            v89 = 0;
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

            v45 |= (v89 & 0x7F) << v43;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_150;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v45;
          }

LABEL_150:
          v79 = 64;
          goto LABEL_180;
        case 9u:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          *(a1 + 84) |= 0x20u;
          while (1)
          {
            v88 = 0;
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

            v75 |= (v88 & 0x7F) << v73;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v10 = v74++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v75;
          }

LABEL_179:
          v79 = 36;
          goto LABEL_180;
        case 0xAu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 84) |= 0x40u;
          while (1)
          {
            v87 = 0;
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

            v30 |= (v87 & 0x7F) << v28;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_138;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v30;
          }

LABEL_138:
          v79 = 40;
          goto LABEL_180;
        case 0xBu:
          v68 = 0;
          v69 = 0;
          v70 = 0;
          *(a1 + 84) |= 0x200u;
          while (1)
          {
            v86 = 0;
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

            v70 |= (v86 & 0x7F) << v68;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v10 = v69++ >= 9;
            if (v10)
            {
              v26 = 0;
              goto LABEL_175;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v70;
          }

LABEL_175:
          v79 = 52;
          goto LABEL_180;
        case 0xCu:
          String = PBReaderReadString();

          v19 = String;
          v20 = 56;
          goto LABEL_38;
        case 0xDu:
          v27 = PBReaderReadString();

          v19 = v27;
          v20 = 72;
LABEL_38:
          *(a1 + v20) = v19;
          goto LABEL_181;
        case 0xEu:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 84) |= 0x80u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_181;
      }

      while (1)
      {
        v85 = 0;
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

        v60 |= (v85 & 0x7F) << v58;
        if ((v85 & 0x80) == 0)
        {
          break;
        }

        v58 += 7;
        v10 = v59++ >= 9;
        if (v10)
        {
          v26 = 0;
          goto LABEL_167;
        }
      }

      v26 = [a2 hasError] ? 0 : v60;
LABEL_167:
      v79 = 44;
LABEL_180:
      *(a1 + v79) = v26;
LABEL_181:
      v81 = [a2 position];
    }

    while (v81 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSRealTimeEncryptionFirstReceivedPacketMKMTimeDeltaReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 40) |= 2u;
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
            v19 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v23;
        }

LABEL_59:
        v32 = 16;
LABEL_60:
        *(a1 + v32) = v19;
        goto LABEL_65;
      }

      if (v12 != 2)
      {
        goto LABEL_32;
      }

      String = PBReaderReadString();

      *(a1 + 32) = String;
LABEL_65:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 3)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        v36 = 0;
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

        v28 |= (v36 & 0x7F) << v26;
        if ((v36 & 0x80) == 0)
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
      *(a1 + 24) = v31;
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

    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(a1 + 40) |= 1u;
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
    v32 = 8;
    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSRealTimeEncryptionMembershipChangeEventFirstMKMTimeDeltaReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 40) |= 2u;
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
            v19 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v23;
        }

LABEL_59:
        v32 = 16;
LABEL_60:
        *(a1 + v32) = v19;
        goto LABEL_65;
      }

      if (v12 != 2)
      {
        goto LABEL_32;
      }

      String = PBReaderReadString();

      *(a1 + 32) = String;
LABEL_65:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 3)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        v36 = 0;
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

        v28 |= (v36 & 0x7F) << v26;
        if ((v36 & 0x80) == 0)
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
      *(a1 + 24) = v31;
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

    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(a1 + 40) |= 1u;
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
    v32 = 8;
    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSRealTimeEncryptionMissingPrekeysReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v36 = 0;
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

          v23 |= (v36 & 0x7F) << v21;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v10 = v22++ >= 9;
          if (v10)
          {
            v19 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v23;
        }

LABEL_59:
        v31 = 24;
LABEL_64:
        *(a1 + v31) = v19;
        goto LABEL_65;
      }

      if (v12 != 2)
      {
        goto LABEL_32;
      }

      String = PBReaderReadString();

      *(a1 + 32) = String;
LABEL_65:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 3)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(a1 + 40) |= 1u;
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
        v19 = v28;
      }

LABEL_63:
      v31 = 8;
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
      *(a1 + 40) |= 2u;
      while (1)
      {
        v34 = 0;
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

        v16 |= (v34 & 0x7F) << v14;
        if ((v34 & 0x80) == 0)
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
      v31 = 16;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSRegistrationAccountStatusReadFrom(uint64_t a1, void *a2)
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

      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            v70 = 0;
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

            v36 |= (v70 & 0x7F) << v34;
            if ((v70 & 0x80) == 0)
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
          goto LABEL_165;
        }

        if (v12 != 2)
        {
LABEL_122:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_165;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 64) |= 2u;
        while (1)
        {
          v74 = 0;
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

          v31 |= (v74 & 0x7F) << v29;
          if ((v74 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v10 = v30++ >= 9;
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
          v18 = v31;
        }

LABEL_131:
        v67 = 16;
        goto LABEL_164;
      }

      if (v12 != 3)
      {
        if (v12 == 4)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v79 = 0;
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

            v42 |= (v79 & 0x7F) << v40;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v10 = v41++ >= 9;
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
            v18 = v42;
          }

LABEL_135:
          v67 = 20;
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_122;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 64) |= 8u;
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

            v21 |= (v78 & 0x7F) << v19;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
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
            v18 = v21;
          }

LABEL_147:
          v67 = 24;
        }

LABEL_164:
        *(a1 + v67) = v18;
        goto LABEL_165;
      }

      String = PBReaderReadString();

      *(a1 + 56) = String;
LABEL_165:
      v68 = [a2 position];
      if (v68 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 8)
    {
      switch(v12)
      {
        case 9:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            v72 = 0;
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

            v63 |= (v72 & 0x7F) << v61;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
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
            v18 = v63;
          }

LABEL_163:
          v67 = 40;
          break;
        case 0xA:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 64) |= 0x100u;
          while (1)
          {
            v71 = 0;
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

            v52 |= (v71 & 0x7F) << v50;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v10 = v51++ >= 9;
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
            v18 = v52;
          }

LABEL_143:
          v67 = 44;
          break;
        case 0xB:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            v75 = 0;
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

            v26 |= (v75 & 0x7F) << v24;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
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
            v18 = v26;
          }

LABEL_155:
          v67 = 36;
          break;
        default:
          goto LABEL_122;
      }
    }

    else
    {
      switch(v12)
      {
        case 6:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v77 = 0;
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
            v10 = v57++ >= 9;
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
            v18 = v58;
          }

LABEL_159:
          v67 = 28;
          break;
        case 7:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v76 = 0;
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

            v47 |= (v76 & 0x7F) << v45;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v10 = v46++ >= 9;
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
            v18 = v47;
          }

LABEL_139:
          v67 = 32;
          break;
        case 8:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x200u;
          while (1)
          {
            v73 = 0;
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

            v15 |= (v73 & 0x7F) << v13;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
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
            v18 = v15;
          }

LABEL_151:
          v67 = 48;
          break;
        default:
          goto LABEL_122;
      }
    }

    goto LABEL_164;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDIDSRegistrationAuthenticateReadFrom(uint64_t a1, void *a2)
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
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 60) |= 0x100u;
            while (1)
            {
              v76 = 0;
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

              v53 |= (v76 & 0x7F) << v51;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v10 = v52++ >= 9;
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
              v18 = v53;
            }

LABEL_147:
            v67 = 52;
            break;
          case 4:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              v75 = 0;
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

              v38 |= (v75 & 0x7F) << v36;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
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
              v18 = v38;
            }

LABEL_131:
            v67 = 16;
            break;
          case 5:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 60) |= 0x80u;
            while (1)
            {
              v74 = 0;
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

              v21 |= (v74 & 0x7F) << v19;
              if ((v74 & 0x80) == 0)
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
            v67 = 48;
            break;
          default:
            goto LABEL_122;
        }

LABEL_164:
        *(a1 + v67) = v18;
        goto LABEL_165;
      }

      if (v12 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 60) |= 1u;
        while (1)
        {
          v70 = 0;
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

          v32 |= (v70 & 0x7F) << v30;
          if ((v70 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            v35 = 0;
            goto LABEL_127;
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

LABEL_127:
        *(a1 + 8) = v35;
      }

      else
      {
        if (v12 != 2)
        {
LABEL_122:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_165;
        }

        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

LABEL_165:
      v68 = [a2 position];
      if (v68 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 8)
    {
      switch(v12)
      {
        case 9:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            v77 = 0;
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
            v10 = v62++ >= 9;
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
            v18 = v63;
          }

LABEL_163:
          v67 = 40;
          break;
        case 0xA:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 60) |= 0x10u;
          while (1)
          {
            v72 = 0;
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

            v48 |= (v72 & 0x7F) << v46;
            if ((v72 & 0x80) == 0)
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
          v67 = 36;
          break;
        case 0xB:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 60) |= 8u;
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
            v18 = v26;
          }

LABEL_155:
          v67 = 32;
          break;
        default:
          goto LABEL_122;
      }
    }

    else
    {
      switch(v12)
      {
        case 6:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 60) |= 0x40u;
          while (1)
          {
            v73 = 0;
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

            v58 |= (v73 & 0x7F) << v56;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
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
            v18 = v58;
          }

LABEL_159:
          v67 = 44;
          break;
        case 7:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            v79 = 0;
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

            v43 |= (v79 & 0x7F) << v41;
            if ((v79 & 0x80) == 0)
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
          v67 = 20;
          break;
        case 8:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 60) |= 0x200u;
          while (1)
          {
            v78 = 0;
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

            v15 |= (v78 & 0x7F) << v13;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
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
            v18 = v15;
          }

LABEL_151:
          v67 = 56;
          break;
        default:
          goto LABEL_122;
      }
    }

    goto LABEL_164;
  }

  return [a2 hasError] ^ 1;
}