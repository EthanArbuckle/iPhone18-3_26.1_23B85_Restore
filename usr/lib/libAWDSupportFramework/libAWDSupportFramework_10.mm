uint64_t AWDNanoPhoneEmergencyCallEndedReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 3)
      {
        break;
      }

      switch(v12)
      {
        case 1:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v51 = 0;
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

            v26 |= (v51 & 0x7F) << v24;
            if ((v51 & 0x80) == 0)
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
          v46 = 16;
          break;
        case 2:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v50 = 0;
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

            v38 |= (v50 & 0x7F) << v36;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              v29 = 0;
              goto LABEL_93;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v38;
          }

LABEL_93:
          v46 = 8;
          break;
        case 3:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v55 = 0;
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

            v15 |= (v55 & 0x7F) << v13;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              LOBYTE(v18) = 0;
              goto LABEL_87;
            }
          }

          v18 = (v15 != 0) & ~[a2 hasError];
LABEL_87:
          v47 = 24;
LABEL_97:
          *(a1 + v47) = v18;
          goto LABEL_98;
        default:
          goto LABEL_60;
      }

      *(a1 + v46) = v29;
LABEL_98:
      v48 = [a2 position];
      if (v48 >= [a2 length])
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
        *(a1 + 28) |= 0x10u;
        while (1)
        {
          v54 = 0;
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

          v32 |= (v54 & 0x7F) << v30;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
          if (v10)
          {
            LOBYTE(v18) = 0;
            goto LABEL_85;
          }
        }

        v18 = (v32 != 0) & ~[a2 hasError];
LABEL_85:
        v47 = 26;
        break;
      case 5:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 28) |= 8u;
        while (1)
        {
          v53 = 0;
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

          v43 |= (v53 & 0x7F) << v41;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v10 = v42++ >= 9;
          if (v10)
          {
            LOBYTE(v18) = 0;
            goto LABEL_96;
          }
        }

        v18 = (v43 != 0) & ~[a2 hasError];
LABEL_96:
        v47 = 25;
        break;
      case 6:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 28) |= 0x20u;
        while (1)
        {
          v52 = 0;
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

          v21 |= (v52 & 0x7F) << v19;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            LOBYTE(v18) = 0;
            goto LABEL_89;
          }
        }

        v18 = (v21 != 0) & ~[a2 hasError];
LABEL_89:
        v47 = 27;
        break;
      default:
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_98;
    }

    goto LABEL_97;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNanoPhoneIncomingCallConnectedReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
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

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
            v24 = v33;
          }

LABEL_67:
          v38 = 16;
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

            goto LABEL_76;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v41 = 0;
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

            v21 |= (v41 & 0x7F) << v19;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_74;
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

LABEL_74:
          v38 = 8;
        }

        *(a1 + v38) = v24;
      }

      else if (v12 == 3)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else
      {
        if (v12 == 4)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            v44 = 0;
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

            v28 |= (v44 & 0x7F) << v26;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v10 = v27++ >= 9;
            if (v10)
            {
              LOBYTE(v18) = 0;
              goto LABEL_63;
            }
          }

          v18 = (v28 != 0) & ~[a2 hasError];
LABEL_63:
          v37 = 33;
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_60;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 36) |= 4u;
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
              LOBYTE(v18) = 0;
              goto LABEL_69;
            }
          }

          v18 = (v15 != 0) & ~[a2 hasError];
LABEL_69:
          v37 = 32;
        }

        *(a1 + v37) = v18;
      }

LABEL_76:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNanoPhoneIncomingCallPresentedReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
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

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
            v24 = v33;
          }

LABEL_67:
          v38 = 16;
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

            goto LABEL_76;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v41 = 0;
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

            v21 |= (v41 & 0x7F) << v19;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_74;
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

LABEL_74:
          v38 = 8;
        }

        *(a1 + v38) = v24;
      }

      else if (v12 == 3)
      {
        String = PBReaderReadString();

        *(a1 + 24) = String;
      }

      else
      {
        if (v12 == 4)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            v44 = 0;
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

            v28 |= (v44 & 0x7F) << v26;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v10 = v27++ >= 9;
            if (v10)
            {
              LOBYTE(v18) = 0;
              goto LABEL_63;
            }
          }

          v18 = (v28 != 0) & ~[a2 hasError];
LABEL_63:
          v37 = 33;
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_60;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 36) |= 4u;
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
              LOBYTE(v18) = 0;
              goto LABEL_69;
            }
          }

          v18 = (v15 != 0) & ~[a2 hasError];
LABEL_69:
          v37 = 32;
        }

        *(a1 + v37) = v18;
      }

LABEL_76:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNetworkServiceProxyConnectionStatisticsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v154[0]) = 0;
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

        v7 |= (v154[0] & 0x7F) << v5;
        if ((v154[0] & 0x80) == 0)
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

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 208) |= 0x40000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v14 |= (v154[0] & 0x7F) << v12;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_296:
              v145 = 176;
              goto LABEL_372;
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

          goto LABEL_296;
        case 2u:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 208) |= 0x400000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v92 |= (v154[0] & 0x7F) << v90;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v10 = v91++ >= 9;
            if (v10)
            {
              v54 = 0;
              goto LABEL_316;
            }
          }

          if ([a2 hasError])
          {
            v54 = 0;
          }

          else
          {
            v54 = v92;
          }

LABEL_316:
          v146 = 196;
          goto LABEL_357;
        case 3u:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 208) |= 2u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v87 |= (v154[0] & 0x7F) << v85;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v10 = v86++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_312;
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

LABEL_312:
          v145 = 40;
          goto LABEL_372;
        case 4u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 208) |= 0x20000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v77 |= (v154[0] & 0x7F) << v75;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v10 = v76++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_304;
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

LABEL_304:
          v145 = 168;
          goto LABEL_372;
        case 5u:
          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 208) |= 4u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v102 |= (v154[0] & 0x7F) << v100;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v10 = v101++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_324;
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

LABEL_324:
          v145 = 48;
          goto LABEL_372;
        case 6u:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 208) |= 8u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v82 |= (v154[0] & 0x7F) << v80;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v10 = v81++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_308;
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

LABEL_308:
          v145 = 56;
          goto LABEL_372;
        case 7u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 208) |= 1u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v62 |= (v154[0] & 0x7F) << v60;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v10 = v61++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_288;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v62;
          }

LABEL_288:
          v145 = 32;
          goto LABEL_372;
        case 8u:
          goto LABEL_37;
        case 9u:
          v115 = 0;
          v116 = 0;
          v117 = 0;
          *(a1 + 208) |= 0x8000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v117 |= (v154[0] & 0x7F) << v115;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v115 += 7;
            v10 = v116++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_336;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v117;
          }

LABEL_336:
          v145 = 152;
          goto LABEL_372;
        case 0xAu:
          v120 = 0;
          v121 = 0;
          v122 = 0;
          *(a1 + 208) |= 0x20u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v122 |= (v154[0] & 0x7F) << v120;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v120 += 7;
            v10 = v121++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_340;
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

LABEL_340:
          v145 = 72;
          goto LABEL_372;
        case 0xBu:
          v105 = 0;
          v106 = 0;
          v107 = 0;
          *(a1 + 208) |= 0x4000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v107 |= (v154[0] & 0x7F) << v105;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v105 += 7;
            v10 = v106++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_328;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v107;
          }

LABEL_328:
          v145 = 144;
          goto LABEL_372;
        case 0xCu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 208) |= 0x80u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v41 |= (v154[0] & 0x7F) << v39;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_272;
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

LABEL_272:
          v145 = 88;
          goto LABEL_372;
        case 0xDu:
          v110 = 0;
          v111 = 0;
          v112 = 0;
          *(a1 + 208) |= 0x40u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v112 |= (v154[0] & 0x7F) << v110;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v110 += 7;
            v10 = v111++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_332;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v112;
          }

LABEL_332:
          v145 = 80;
          goto LABEL_372;
        case 0xEu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 208) |= 0x10u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v36 |= (v154[0] & 0x7F) << v34;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_268;
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

LABEL_268:
          v145 = 64;
          goto LABEL_372;
        case 0xFu:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 208) |= 0x100u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v57 |= (v154[0] & 0x7F) << v55;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v10 = v56++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_284;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v57;
          }

LABEL_284:
          v145 = 96;
          goto LABEL_372;
        case 0x10u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 208) |= 0x800u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v31 |= (v154[0] & 0x7F) << v29;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
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
            v17 = v31;
          }

LABEL_264:
          v145 = 120;
          goto LABEL_372;
        case 0x11u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 208) |= 0x200u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v46 |= (v154[0] & 0x7F) << v44;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
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
            v17 = v46;
          }

LABEL_276:
          v145 = 104;
          goto LABEL_372;
        case 0x12u:
          v125 = 0;
          v126 = 0;
          v127 = 0;
          *(a1 + 208) |= 0x400u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v127 |= (v154[0] & 0x7F) << v125;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v125 += 7;
            v10 = v126++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_344;
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

LABEL_344:
          v145 = 112;
          goto LABEL_372;
        case 0x13u:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 208) |= 0x2000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v97 |= (v154[0] & 0x7F) << v95;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v10 = v96++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_320;
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

LABEL_320:
          v145 = 136;
          goto LABEL_372;
        case 0x14u:
          v130 = 0;
          v131 = 0;
          v132 = 0;
          *(a1 + 208) |= 0x10000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v132 |= (v154[0] & 0x7F) << v130;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v130 += 7;
            v10 = v131++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_348;
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

LABEL_348:
          v145 = 160;
          goto LABEL_372;
        case 0x15u:
          v135 = 0;
          v136 = 0;
          v137 = 0;
          *(a1 + 208) |= 0x1000000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v137 |= (v154[0] & 0x7F) << v135;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v135 += 7;
            v10 = v136++ >= 9;
            if (v10)
            {
              v54 = 0;
              goto LABEL_352;
            }
          }

          if ([a2 hasError])
          {
            v54 = 0;
          }

          else
          {
            v54 = v137;
          }

LABEL_352:
          v146 = 204;
          goto LABEL_357;
        case 0x16u:
          v140 = 0;
          v141 = 0;
          v142 = 0;
          *(a1 + 208) |= 0x100000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v142 |= (v154[0] & 0x7F) << v140;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v140 += 7;
            v10 = v141++ >= 9;
            if (v10)
            {
              v54 = 0;
              goto LABEL_356;
            }
          }

          if ([a2 hasError])
          {
            v54 = 0;
          }

          else
          {
            v54 = v142;
          }

LABEL_356:
          v146 = 188;
          goto LABEL_357;
        case 0x17u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 208) |= 0x80000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v67 |= (v154[0] & 0x7F) << v65;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v10 = v66++ >= 9;
            if (v10)
            {
              v54 = 0;
              goto LABEL_292;
            }
          }

          if ([a2 hasError])
          {
            v54 = 0;
          }

          else
          {
            v54 = v67;
          }

LABEL_292:
          v146 = 184;
          goto LABEL_357;
        case 0x18u:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 208) |= 0x200000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v72 |= (v154[0] & 0x7F) << v70;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v10 = v71++ >= 9;
            if (v10)
            {
              v54 = 0;
              goto LABEL_300;
            }
          }

          if ([a2 hasError])
          {
            v54 = 0;
          }

          else
          {
            v54 = v72;
          }

LABEL_300:
          v146 = 192;
          goto LABEL_357;
        case 0x19u:
          if ((v11 & 7) == 2)
          {
            v154[0] = 0;
            v154[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v23 = [a2 position];
              if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v24 = 0;
              v25 = 0;
              v26 = 0;
              while (1)
              {
                v155 = 0;
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

                v26 |= (v155 & 0x7F) << v24;
                if ((v155 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v10 = v25++ >= 9;
                if (v10)
                {
                  goto LABEL_53;
                }
              }

              [a2 hasError];
LABEL_53:
              PBRepeatedUInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v147 = 0;
            v148 = 0;
            v149 = 0;
            while (1)
            {
              LOBYTE(v154[0]) = 0;
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

              v149 |= (v154[0] & 0x7F) << v147;
              if ((v154[0] & 0x80) == 0)
              {
                break;
              }

              v147 += 7;
              v10 = v148++ >= 9;
              if (v10)
              {
                goto LABEL_376;
              }
            }

            [a2 hasError];
LABEL_376:
            PBRepeatedUInt32Add();
          }

          goto LABEL_373;
        case 0x1Au:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 208) |= 0x800000u;
          while (1)
          {
            LOBYTE(v154[0]) = 0;
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

            v51 |= (v154[0] & 0x7F) << v49;
            if ((v154[0] & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v10 = v50++ >= 9;
            if (v10)
            {
              v54 = 0;
              goto LABEL_280;
            }
          }

          if ([a2 hasError])
          {
            v54 = 0;
          }

          else
          {
            v54 = v51;
          }

LABEL_280:
          v146 = 200;
LABEL_357:
          *(a1 + v146) = v54;
          goto LABEL_373;
        default:
          if ((v11 >> 3) == 99)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 208) |= 0x1000u;
            while (1)
            {
              LOBYTE(v154[0]) = 0;
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

              v20 |= (v154[0] & 0x7F) << v18;
              if ((v154[0] & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v10 = v19++ >= 9;
              if (v10)
              {
                v17 = 0;
                goto LABEL_371;
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

LABEL_371:
            v145 = 128;
LABEL_372:
            *(a1 + v145) = v17;
          }

          else
          {
LABEL_37:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }
          }

LABEL_373:
          v152 = [a2 position];
          if (v152 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          break;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNetworkServiceProxyControlRequestStatisticsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___AWDMMCSGetRequestInfo__allItemsSuccessful;
    v6 = &OBJC_IVAR___AWDMMCSGetRequestInfo__allItemsSuccessful;
    v7 = &OBJC_IVAR___AWDMMCSGetRequestInfo__allItemsSuccessful;
    v8 = &OBJC_IVAR___AWDMMCSGetRequestInfo__allItemsSuccessful;
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        while (1)
        {
          LOBYTE(v101[0]) = 0;
          v12 = [a2 position] + 1;
          if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v11 |= (v101[0] & 0x7F) << v9;
          if ((v101[0] & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          v14 = v10++ >= 9;
          if (v14)
          {
            v15 = 0;
            goto LABEL_16;
          }
        }

        v15 = [a2 hasError] ? 0 : v11;
LABEL_16:
        if (([a2 hasError] & 1) == 0 && (v15 & 7) != 4)
        {
          switch((v15 >> 3))
          {
            case 1u:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + v5[154]) |= 0x200u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v18 |= (v101[0] & 0x7F) << v16;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v14 = v17++ >= 9;
                if (v14)
                {
                  v21 = 0;
LABEL_176:
                  v91 = v6[155];
                  goto LABEL_206;
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

              goto LABEL_176;
            case 2u:
              v65 = 0;
              v66 = 0;
              v67 = 0;
              *(a1 + v5[154]) |= 0x400u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v67 |= (v101[0] & 0x7F) << v65;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v14 = v66++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_188;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v67;
              }

LABEL_188:
              v90 = v7[156];
              goto LABEL_189;
            case 3u:
              v60 = 0;
              v61 = 0;
              v62 = 0;
              *(a1 + v5[154]) |= 0x1000u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v62 |= (v101[0] & 0x7F) << v60;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v60 += 7;
                v14 = v61++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_184;
                }
              }

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v62;
              }

LABEL_184:
              v90 = v8[157];
              goto LABEL_189;
            case 4u:
              v55 = 0;
              v56 = 0;
              v57 = 0;
              *(a1 + v5[154]) |= 1u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v57 |= (v101[0] & 0x7F) << v55;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v55 += 7;
                v14 = v56++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_180;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v57;
              }

LABEL_180:
              v91 = 32;
              goto LABEL_206;
            case 6u:
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *(a1 + v5[154]) |= 0x80u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v35 |= (v101[0] & 0x7F) << v33;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v14 = v34++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_164;
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

LABEL_164:
              v91 = 88;
              goto LABEL_206;
            case 7u:
              v45 = 0;
              v46 = 0;
              v47 = 0;
              *(a1 + v5[154]) |= 8u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v47 |= (v101[0] & 0x7F) << v45;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v14 = v46++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_168;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v47;
              }

LABEL_168:
              v91 = 56;
              goto LABEL_206;
            case 8u:
              v70 = 0;
              v71 = 0;
              v72 = 0;
              *(a1 + v5[154]) |= 0x40u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v72 |= (v101[0] & 0x7F) << v70;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v14 = v71++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_193;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v72;
              }

LABEL_193:
              v91 = 80;
              goto LABEL_206;
            case 9u:
              v75 = 0;
              v76 = 0;
              v77 = 0;
              *(a1 + v5[154]) |= 0x20u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v77 |= (v101[0] & 0x7F) << v75;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v75 += 7;
                v14 = v76++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_197;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v77;
              }

LABEL_197:
              v91 = 72;
              goto LABEL_206;
            case 0xAu:
              v85 = 0;
              v86 = 0;
              v87 = 0;
              *(a1 + v5[154]) |= 0x10u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v87 |= (v101[0] & 0x7F) << v85;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                v14 = v86++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_205;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v87;
              }

LABEL_205:
              v91 = 64;
              goto LABEL_206;
            case 0xBu:
              v80 = 0;
              v81 = 0;
              v82 = 0;
              *(a1 + v5[154]) |= 4u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v82 |= (v101[0] & 0x7F) << v80;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                v14 = v81++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_201;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v82;
              }

LABEL_201:
              v91 = 48;
              goto LABEL_206;
            case 0xCu:
              v28 = 0;
              v29 = 0;
              v30 = 0;
              *(a1 + v5[154]) |= 2u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v30 |= (v101[0] & 0x7F) << v28;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v14 = v29++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_160;
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

LABEL_160:
              v91 = 40;
              goto LABEL_206;
            case 0xDu:
              v50 = 0;
              v51 = 0;
              v52 = 0;
              *(a1 + v5[154]) |= 0x100u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v52 |= (v101[0] & 0x7F) << v50;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v14 = v51++ >= 9;
                if (v14)
                {
                  v21 = 0;
                  goto LABEL_172;
                }
              }

              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v52;
              }

LABEL_172:
              v91 = 96;
LABEL_206:
              *(a1 + v91) = v21;
              goto LABEL_207;
            case 0xEu:
              if ((v15 & 7) == 2)
              {
                v101[0] = 0;
                v101[1] = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v39 = [a2 position];
                  if (v39 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v40 = 0;
                  v41 = 0;
                  v42 = 0;
                  while (1)
                  {
                    v102 = 0;
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

                    v42 |= (v102 & 0x7F) << v40;
                    if ((v102 & 0x80) == 0)
                    {
                      break;
                    }

                    v40 += 7;
                    v14 = v41++ >= 9;
                    if (v14)
                    {
                      goto LABEL_69;
                    }
                  }

                  [a2 hasError];
LABEL_69:
                  PBRepeatedUInt32Add();
                }

                PBReaderRecallMark();
              }

              else
              {
                v93 = v8;
                v94 = v7;
                v95 = v6;
                v96 = 0;
                v97 = 0;
                v98 = 0;
                while (1)
                {
                  LOBYTE(v101[0]) = 0;
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

                  v98 |= (v101[0] & 0x7F) << v96;
                  if ((v101[0] & 0x80) == 0)
                  {
                    break;
                  }

                  v96 += 7;
                  v14 = v97++ >= 9;
                  if (v14)
                  {
                    goto LABEL_220;
                  }
                }

                [a2 hasError];
LABEL_220:
                PBRepeatedUInt32Add();
                v6 = v95;
                v7 = v94;
                v8 = v93;
                v5 = &OBJC_IVAR___AWDMMCSGetRequestInfo__allItemsSuccessful;
              }

LABEL_207:
              v92 = [a2 position];
              if (v92 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              continue;
            case 0xFu:
              v22 = 0;
              v23 = 0;
              v24 = 0;
              *(a1 + v5[154]) |= 0x800u;
              while (1)
              {
                LOBYTE(v101[0]) = 0;
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

                v24 |= (v101[0] & 0x7F) << v22;
                if ((v101[0] & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v14 = v23++ >= 9;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_156;
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

LABEL_156:
              v90 = 116;
LABEL_189:
              *(a1 + v90) = v27;
              goto LABEL_207;
            default:
              if (PBReaderSkipValueWithTag())
              {
                goto LABEL_207;
              }

              return 0;
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNetworkServiceProxyProbeStatisticsReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 60) |= 8u;
        while (1)
        {
          v54 = 0;
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

          v28 |= (v54 & 0x7F) << v26;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v10 = v27++ >= 9;
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
          v18 = v28;
        }

LABEL_86:
        v47 = 32;
LABEL_99:
        *(a1 + v47) = v18;
        goto LABEL_109;
      }

      if (v12 == 2)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 60) |= 0x10u;
        while (1)
        {
          v56 = 0;
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

          v44 |= (v56 & 0x7F) << v42;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v10 = v43++ >= 9;
          if (v10)
          {
            v25 = 0;
            goto LABEL_107;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v44;
        }

LABEL_107:
        v48 = 40;
LABEL_108:
        *(a1 + v48) = v25;
        goto LABEL_109;
      }

      if (v12 != 3)
      {
        goto LABEL_54;
      }

      String = PBReaderReadString();

      *(a1 + 48) = String;
LABEL_109:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 5)
    {
      if (v12 != 6)
      {
        if (v12 != 7)
        {
LABEL_54:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_109;
        }

        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 60) |= 0x20u;
        while (1)
        {
          v55 = 0;
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

          v22 |= (v55 & 0x7F) << v20;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v10 = v21++ >= 9;
          if (v10)
          {
            v25 = 0;
            goto LABEL_103;
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

LABEL_103:
        v48 = 56;
        goto LABEL_108;
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      *(a1 + 60) |= 2u;
      while (1)
      {
        v51 = 0;
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

        v39 |= (v51 & 0x7F) << v37;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v37 += 7;
        v10 = v38++ >= 9;
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
        v18 = v39;
      }

LABEL_94:
      v47 = 16;
    }

    else if (v12 == 4)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      *(a1 + 60) |= 1u;
      while (1)
      {
        v53 = 0;
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

        v34 |= (v53 & 0x7F) << v32;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v32 += 7;
        v10 = v33++ >= 9;
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
        v18 = v34;
      }

LABEL_90:
      v47 = 8;
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
      *(a1 + 60) |= 4u;
      while (1)
      {
        v52 = 0;
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

        v15 |= (v52 & 0x7F) << v13;
        if ((v52 & 0x80) == 0)
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
      v47 = 24;
    }

    goto LABEL_99;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDNetworkServiceProxyRequestStatisticsReadFrom(uint64_t a1, void *a2)
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
          LOBYTE(v109) = 0;
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
                *(a1 + 168) |= 1u;
                while (1)
                {
                  LOBYTE(v109) = 0;
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

                  v15 |= (v109 & 0x7F) << v13;
                  if ((v109 & 0x80) == 0)
                  {
                    break;
                  }

                  v13 += 7;
                  v10 = v14++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
LABEL_175:
                    *(a1 + 128) = v18;
                    goto LABEL_236;
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

                goto LABEL_175;
              case 2u:
                v55 = 0;
                v56 = 0;
                v57 = 0;
                *(a1 + 168) |= 8u;
                while (1)
                {
                  LOBYTE(v109) = 0;
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

                  v57 |= (v109 & 0x7F) << v55;
                  if ((v109 & 0x80) == 0)
                  {
                    break;
                  }

                  v55 += 7;
                  v10 = v56++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_179;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v57;
                }

LABEL_179:
                v82 = 152;
                goto LABEL_188;
              case 3u:
                String = PBReaderReadString();

                *(a1 + 144) = String;
                goto LABEL_236;
              case 4u:
                v44 = 0;
                v45 = 0;
                v46 = 0;
                *(a1 + 168) |= 0x20u;
                while (1)
                {
                  LOBYTE(v109) = 0;
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
                    v31 = 0;
                    goto LABEL_171;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v46;
                }

LABEL_171:
                v82 = 160;
                goto LABEL_188;
              case 5u:
                v26 = 0;
                v27 = 0;
                v28 = 0;
                *(a1 + 168) |= 0x40u;
                while (1)
                {
                  LOBYTE(v109) = 0;
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

                  v28 |= (v109 & 0x7F) << v26;
                  if ((v109 & 0x80) == 0)
                  {
                    break;
                  }

                  v26 += 7;
                  v10 = v27++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_163;
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

LABEL_163:
                v82 = 164;
                goto LABEL_188;
              case 6u:
                v60 = 0;
                v61 = 0;
                v62 = 0;
                *(a1 + 168) |= 2u;
                while (1)
                {
                  LOBYTE(v109) = 0;
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
                    v31 = 0;
                    goto LABEL_183;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v62;
                }

LABEL_183:
                v82 = 136;
                goto LABEL_188;
              case 7u:
                v65 = 0;
                v66 = 0;
                v67 = 0;
                *(a1 + 168) |= 4u;
                while (1)
                {
                  LOBYTE(v109) = 0;
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
                    v31 = 0;
                    goto LABEL_187;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v67;
                }

LABEL_187:
                v82 = 140;
                goto LABEL_188;
              case 8u:
                if (v12 != 2)
                {
                  v93 = 0;
                  v94 = 0;
                  v95 = 0;
                  while (1)
                  {
                    LOBYTE(v109) = 0;
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

                    v95 |= (v109 & 0x7F) << v93;
                    if ((v109 & 0x80) == 0)
                    {
                      goto LABEL_234;
                    }

                    v93 += 7;
                    v10 = v94++ >= 9;
                    if (v10)
                    {
                      goto LABEL_235;
                    }
                  }
                }

                v109 = 0;
                v110 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v49 = [a2 position];
                  if (v49 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_159;
                  }

                  v50 = 0;
                  v51 = 0;
                  v52 = 0;
                  while (1)
                  {
                    v111 = 0;
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

                    v52 |= (v111 & 0x7F) << v50;
                    if ((v111 & 0x80) == 0)
                    {
                      break;
                    }

                    v50 += 7;
                    v10 = v51++ >= 9;
                    if (v10)
                    {
                      goto LABEL_99;
                    }
                  }

                  [a2 hasError];
LABEL_99:
                  PBRepeatedUInt32Add();
                }

              case 9u:
                if (v12 == 2)
                {
                  v109 = 0;
                  v110 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v76 = [a2 position];
                    if (v76 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v77 = 0;
                    v78 = 0;
                    v79 = 0;
                    while (1)
                    {
                      v111 = 0;
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

                      v79 |= (v111 & 0x7F) << v77;
                      if ((v111 & 0x80) == 0)
                      {
                        break;
                      }

                      v77 += 7;
                      v10 = v78++ >= 9;
                      if (v10)
                      {
                        goto LABEL_158;
                      }
                    }

                    [a2 hasError];
LABEL_158:
                    PBRepeatedUInt32Add();
                  }

LABEL_159:
                  PBReaderRecallMark();
                }

                else
                {
                  v103 = 0;
                  v104 = 0;
                  v105 = 0;
                  while (1)
                  {
                    LOBYTE(v109) = 0;
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

                    v105 |= (v109 & 0x7F) << v103;
                    if ((v109 & 0x80) == 0)
                    {
                      break;
                    }

                    v103 += 7;
                    v10 = v104++ >= 9;
                    if (v10)
                    {
                      goto LABEL_235;
                    }
                  }

LABEL_234:
                  [a2 hasError];
LABEL_235:
                  PBRepeatedUInt32Add();
                }

LABEL_236:
                v108 = [a2 position];
                if (v108 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              case 0xAu:
                if (v12 != 2)
                {
                  v88 = 0;
                  v89 = 0;
                  v90 = 0;
                  while (1)
                  {
                    LOBYTE(v109) = 0;
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

                    v90 |= (v109 & 0x7F) << v88;
                    if ((v109 & 0x80) == 0)
                    {
                      goto LABEL_234;
                    }

                    v88 += 7;
                    v10 = v89++ >= 9;
                    if (v10)
                    {
                      goto LABEL_235;
                    }
                  }
                }

                v109 = 0;
                v110 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v37 = [a2 position];
                  if (v37 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_159;
                  }

                  v38 = 0;
                  v39 = 0;
                  v40 = 0;
                  while (1)
                  {
                    v111 = 0;
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

                    v40 |= (v111 & 0x7F) << v38;
                    if ((v111 & 0x80) == 0)
                    {
                      break;
                    }

                    v38 += 7;
                    v10 = v39++ >= 9;
                    if (v10)
                    {
                      goto LABEL_74;
                    }
                  }

                  [a2 hasError];
LABEL_74:
                  PBRepeatedUInt32Add();
                }

              case 0xBu:
                if (v12 != 2)
                {
                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  while (1)
                  {
                    LOBYTE(v109) = 0;
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

                    v100 |= (v109 & 0x7F) << v98;
                    if ((v109 & 0x80) == 0)
                    {
                      goto LABEL_234;
                    }

                    v98 += 7;
                    v10 = v99++ >= 9;
                    if (v10)
                    {
                      goto LABEL_235;
                    }
                  }
                }

                v109 = 0;
                v110 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v70 = [a2 position];
                  if (v70 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_159;
                  }

                  v71 = 0;
                  v72 = 0;
                  v73 = 0;
                  while (1)
                  {
                    v111 = 0;
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

                    v73 |= (v111 & 0x7F) << v71;
                    if ((v111 & 0x80) == 0)
                    {
                      break;
                    }

                    v71 += 7;
                    v10 = v72++ >= 9;
                    if (v10)
                    {
                      goto LABEL_143;
                    }
                  }

                  [a2 hasError];
LABEL_143:
                  PBRepeatedUInt32Add();
                }

              case 0xCu:
                if (v12 != 2)
                {
                  v83 = 0;
                  v84 = 0;
                  v85 = 0;
                  while (1)
                  {
                    LOBYTE(v109) = 0;
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

                    v85 |= (v109 & 0x7F) << v83;
                    if ((v109 & 0x80) == 0)
                    {
                      goto LABEL_234;
                    }

                    v83 += 7;
                    v10 = v84++ >= 9;
                    if (v10)
                    {
                      goto LABEL_235;
                    }
                  }
                }

                v109 = 0;
                v110 = 0;
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
                    goto LABEL_159;
                  }

                  v21 = 0;
                  v22 = 0;
                  v23 = 0;
                  while (1)
                  {
                    v111 = 0;
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

                    v23 |= (v111 & 0x7F) << v21;
                    if ((v111 & 0x80) == 0)
                    {
                      break;
                    }

                    v21 += 7;
                    v10 = v22++ >= 9;
                    if (v10)
                    {
                      goto LABEL_41;
                    }
                  }

                  [a2 hasError];
LABEL_41:
                  PBRepeatedUInt32Add();
                }

              case 0xDu:
                v32 = 0;
                v33 = 0;
                v34 = 0;
                *(a1 + 168) |= 0x10u;
                while (1)
                {
                  LOBYTE(v109) = 0;
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

                  v34 |= (v109 & 0x7F) << v32;
                  if ((v109 & 0x80) == 0)
                  {
                    break;
                  }

                  v32 += 7;
                  v10 = v33++ >= 9;
                  if (v10)
                  {
                    v31 = 0;
                    goto LABEL_167;
                  }
                }

                if ([a2 hasError])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = v34;
                }

LABEL_167:
                v82 = 156;
LABEL_188:
                *(a1 + v82) = v31;
                goto LABEL_236;
              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_236;
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

uint64_t AWDOSAnalyticsSubmissionsReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) <= 3)
      {
        if (v12 == 1)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v51 = 0;
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

            v29 |= (v51 & 0x7F) << v27;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
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
            v18 = v29;
          }

LABEL_79:
          v45 = 32;
LABEL_92:
          *(a1 + v45) = v18;
          goto LABEL_93;
        }

        if (v12 == 2)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v52 = 0;
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

            v41 |= (v52 & 0x7F) << v39;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v10 = v40++ >= 9;
            if (v10)
            {
              v44 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v41;
          }

LABEL_98:
          *(a1 + 48) = v44;
          goto LABEL_93;
        }

        if (v12 != 3)
        {
          goto LABEL_54;
        }

        String = PBReaderReadString();

        v20 = String;
        v21 = 40;
      }

      else
      {
        if (v12 > 5)
        {
          if (v12 == 6)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v49 = 0;
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

              v36 |= (v49 & 0x7F) << v34;
              if ((v49 & 0x80) == 0)
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
            v45 = 8;
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

              goto LABEL_93;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              v48 = 0;
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

              v24 |= (v48 & 0x7F) << v22;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v10 = v23++ >= 9;
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
              v18 = v24;
            }

LABEL_91:
            v45 = 16;
          }

          goto LABEL_92;
        }

        if (v12 != 4)
        {
          if (v12 != 5)
          {
            goto LABEL_54;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 64) |= 4u;
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
          v45 = 24;
          goto LABEL_92;
        }

        v33 = PBReaderReadString();

        v20 = v33;
        v21 = 56;
      }

      *(a1 + v21) = v20;
LABEL_93:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDPairedSyncSyncReportReadFrom(uint64_t a1, void *a2)
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
        v80 = 0;
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
          *(a1 + 84) |= 2u;
          while (1)
          {
            v82 = 0;
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

            v14 |= (v82 & 0x7F) << v12;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_146:
              v77 = 16;
              goto LABEL_147;
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

          goto LABEL_146;
        case 2u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 84) |= 0x200u;
          while (1)
          {
            v84 = 0;
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

            v50 |= (v84 & 0x7F) << v48;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v10 = v49++ >= 9;
            if (v10)
            {
              LOBYTE(v53) = 0;
              goto LABEL_149;
            }
          }

          v53 = (v50 != 0) & ~[a2 hasError];
LABEL_149:
          v78 = 80;
          goto LABEL_152;
        case 3u:
          String = PBReaderReadString();

          v40 = String;
          v41 = 40;
          goto LABEL_84;
        case 4u:
          v42 = PBReaderReadString();

          v40 = v42;
          v41 = 48;
          goto LABEL_84;
        case 5u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 84) |= 1u;
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
              v17 = 0;
              goto LABEL_130;
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

LABEL_130:
          v77 = 8;
LABEL_147:
          *(a1 + v77) = v17;
          goto LABEL_166;
        case 6u:
          v54 = PBReaderReadString();

          v40 = v54;
          v41 = 24;
LABEL_84:
          *(a1 + v41) = v40;
          goto LABEL_166;
        case 7u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 84) |= 0x20u;
          while (1)
          {
            v91 = 0;
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

            v62 |= (v91 & 0x7F) << v60;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v10 = v61++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_156;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v62;
          }

LABEL_156:
          v76 = 64;
          goto LABEL_165;
        case 8u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 84) |= 0x80u;
          while (1)
          {
            v90 = 0;
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

            v45 |= (v90 & 0x7F) << v43;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
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
            v23 = v45;
          }

LABEL_142:
          v76 = 72;
          goto LABEL_165;
        case 9u:
          v70 = 0;
          v71 = 0;
          v72 = 0;
          *(a1 + 84) |= 0x40u;
          while (1)
          {
            v89 = 0;
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

            v72 |= (v89 & 0x7F) << v70;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v10 = v71++ >= 9;
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
            v23 = v72;
          }

LABEL_164:
          v76 = 68;
          goto LABEL_165;
        case 0xAu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 84) |= 8u;
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
            v23 = v36;
          }

LABEL_138:
          v76 = 56;
          goto LABEL_165;
        case 0xBu:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v87 = 0;
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

            v67 |= (v87 & 0x7F) << v65;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v10 = v66++ >= 9;
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
            v23 = v67;
          }

LABEL_160:
          v76 = 60;
          goto LABEL_165;
        case 0xCu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 84) |= 4u;
          while (1)
          {
            v86 = 0;
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

            v20 |= (v86 & 0x7F) << v18;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
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
            v23 = v20;
          }

LABEL_126:
          v76 = 32;
          goto LABEL_165;
        case 0xDu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 84) |= 0x100u;
          while (1)
          {
            v85 = 0;
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

            v31 |= (v85 & 0x7F) << v29;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
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
            v23 = v31;
          }

LABEL_134:
          v76 = 76;
LABEL_165:
          *(a1 + v76) = v23;
          goto LABEL_166;
        case 0xEu:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 84) |= 0x400u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_166;
      }

      while (1)
      {
        v83 = 0;
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

        v57 |= (v83 & 0x7F) << v55;
        if ((v83 & 0x80) == 0)
        {
          break;
        }

        v55 += 7;
        v10 = v56++ >= 9;
        if (v10)
        {
          LOBYTE(v53) = 0;
          goto LABEL_151;
        }
      }

      v53 = (v57 != 0) & ~[a2 hasError];
LABEL_151:
      v78 = 81;
LABEL_152:
      *(a1 + v78) = v53;
LABEL_166:
      v79 = [a2 position];
    }

    while (v79 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDAppBBPowerReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if (v12 != 2)
      {
        if (v12 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 2u;
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

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_48:
        v26 = 20;
        goto LABEL_49;
      }

      String = PBReaderReadString();

      *(a1 + 8) = String;
LABEL_50:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    *(a1 + 24) |= 1u;
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
        v18 = 0;
        goto LABEL_44;
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

LABEL_44:
    v26 = 16;
LABEL_49:
    *(a1 + v26) = v18;
    goto LABEL_50;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDAppRRCConnectionStatsReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 40) |= 8u;
            while (1)
            {
              v51 = 0;
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

              v42 |= (v51 & 0x7F) << v40;
              if ((v51 & 0x80) == 0)
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
            v46 = 28;
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
            *(a1 + 40) |= 0x20u;
            while (1)
            {
              v50 = 0;
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

              v26 |= (v50 & 0x7F) << v24;
              if ((v50 & 0x80) == 0)
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
            v46 = 36;
          }
        }

        else if (v12 == 4)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v53 = 0;
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

            v37 |= (v53 & 0x7F) << v35;
            if ((v53 & 0x80) == 0)
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
          v46 = 8;
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
          *(a1 + 40) |= 4u;
          while (1)
          {
            v52 = 0;
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

            v15 |= (v52 & 0x7F) << v13;
            if ((v52 & 0x80) == 0)
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
          v46 = 24;
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
        *(a1 + 40) |= 2u;
        while (1)
        {
          v54 = 0;
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

          v21 |= (v54 & 0x7F) << v19;
          if ((v54 & 0x80) == 0)
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
        v46 = 12;
        goto LABEL_107;
      }

      String = PBReaderReadString();

      *(a1 + 16) = String;
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
    *(a1 + 40) |= 0x10u;
    while (1)
    {
      v49 = 0;
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

      v31 |= (v49 & 0x7F) << v29;
      if ((v49 & 0x80) == 0)
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
    v46 = 32;
LABEL_107:
    *(a1 + v46) = v18;
    goto LABEL_108;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDBacklightLuxMicroAmpsBucketReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDBasebandPowerToolKPIsReadFrom(uint64_t a1, void *a2)
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
          LOBYTE(v220) = 0;
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

          v7 |= (v220 & 0x7F) << v5;
          if ((v220 & 0x80) == 0)
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
                *(a1 + 432) |= 1u;
                while (1)
                {
                  LOBYTE(v220) = 0;
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

                  v15 |= (v220 & 0x7F) << v13;
                  if ((v220 & 0x80) == 0)
                  {
                    break;
                  }

                  v13 += 7;
                  v10 = v14++ >= 9;
                  if (v10)
                  {
                    v18 = 0;
LABEL_310:
                    *(a1 + 416) = v18;
                    goto LABEL_471;
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

                goto LABEL_310;
              case 2u:
                v80 = 0;
                v81 = 0;
                v82 = 0;
                *(a1 + 432) |= 4u;
                while (1)
                {
                  LOBYTE(v220) = 0;
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

                  v82 |= (v220 & 0x7F) << v80;
                  if ((v220 & 0x80) == 0)
                  {
                    break;
                  }

                  v80 += 7;
                  v10 = v81++ >= 9;
                  if (v10)
                  {
                    v61 = 0;
                    goto LABEL_314;
                  }
                }

                if ([a2 hasError])
                {
                  v61 = 0;
                }

                else
                {
                  v61 = v82;
                }

LABEL_314:
                v133 = 428;
                goto LABEL_315;
              case 3u:
                v56 = 0;
                v57 = 0;
                v58 = 0;
                *(a1 + 432) |= 2u;
                while (1)
                {
                  LOBYTE(v220) = 0;
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

                  v58 |= (v220 & 0x7F) << v56;
                  if ((v220 & 0x80) == 0)
                  {
                    break;
                  }

                  v56 += 7;
                  v10 = v57++ >= 9;
                  if (v10)
                  {
                    v61 = 0;
                    goto LABEL_306;
                  }
                }

                if ([a2 hasError])
                {
                  v61 = 0;
                }

                else
                {
                  v61 = v58;
                }

LABEL_306:
                v133 = 424;
LABEL_315:
                *(a1 + v133) = v61;
                goto LABEL_471;
              case 4u:
                if (v12 != 2)
                {
                  v169 = 0;
                  v170 = 0;
                  v171 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
                    v172 = [a2 position] + 1;
                    if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v171 |= (v220 & 0x7F) << v169;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v169 += 7;
                    v10 = v170++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v68 = [a2 position];
                  if (v68 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v69 = 0;
                  v70 = 0;
                  v71 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v71 |= (v222 & 0x7F) << v69;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v69 += 7;
                    v10 = v70++ >= 9;
                    if (v10)
                    {
                      goto LABEL_155;
                    }
                  }

                  [a2 hasError];
LABEL_155:
                  PBRepeatedInt32Add();
                }

              case 5u:
                if (v12 != 2)
                {
                  v149 = 0;
                  v150 = 0;
                  v151 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
                    v152 = [a2 position] + 1;
                    if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v151 |= (v220 & 0x7F) << v149;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v149 += 7;
                    v10 = v150++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
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
                    goto LABEL_302;
                  }

                  v39 = 0;
                  v40 = 0;
                  v41 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v41 |= (v222 & 0x7F) << v39;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v39 += 7;
                    v10 = v40++ >= 9;
                    if (v10)
                    {
                      goto LABEL_86;
                    }
                  }

                  [a2 hasError];
LABEL_86:
                  PBRepeatedInt32Add();
                }

              case 6u:
                if (v12 != 2)
                {
                  v184 = 0;
                  v185 = 0;
                  v186 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v186 |= (v220 & 0x7F) << v184;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v184 += 7;
                    v10 = v185++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v91 = [a2 position];
                  if (v91 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v92 = 0;
                  v93 = 0;
                  v94 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v94 |= (v222 & 0x7F) << v92;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v92 += 7;
                    v10 = v93++ >= 9;
                    if (v10)
                    {
                      goto LABEL_211;
                    }
                  }

                  [a2 hasError];
LABEL_211:
                  PBRepeatedInt32Add();
                }

              case 7u:
                if (v12 != 2)
                {
                  v194 = 0;
                  v195 = 0;
                  v196 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
                    v197 = [a2 position] + 1;
                    if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v196 |= (v220 & 0x7F) << v194;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v194 += 7;
                    v10 = v195++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v103 = [a2 position];
                  if (v103 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v104 = 0;
                  v105 = 0;
                  v106 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v106 |= (v222 & 0x7F) << v104;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v104 += 7;
                    v10 = v105++ >= 9;
                    if (v10)
                    {
                      goto LABEL_241;
                    }
                  }

                  [a2 hasError];
LABEL_241:
                  PBRepeatedInt32Add();
                }

              case 8u:
                if (v12 != 2)
                {
                  v174 = 0;
                  v175 = 0;
                  v176 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
                    v177 = [a2 position] + 1;
                    if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 1, v178 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v176 |= (v220 & 0x7F) << v174;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v174 += 7;
                    v10 = v175++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v74 = [a2 position];
                  if (v74 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v75 = 0;
                  v76 = 0;
                  v77 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v77 |= (v222 & 0x7F) << v75;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v75 += 7;
                    v10 = v76++ >= 9;
                    if (v10)
                    {
                      goto LABEL_170;
                    }
                  }

                  [a2 hasError];
LABEL_170:
                  PBRepeatedInt32Add();
                }

              case 9u:
                if (v12 != 2)
                {
                  v209 = 0;
                  v210 = 0;
                  v211 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v211 |= (v220 & 0x7F) << v209;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v209 += 7;
                    v10 = v210++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v121 = [a2 position];
                  if (v121 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v122 = 0;
                  v123 = 0;
                  v124 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v124 |= (v222 & 0x7F) << v122;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v122 += 7;
                    v10 = v123++ >= 9;
                    if (v10)
                    {
                      goto LABEL_286;
                    }
                  }

                  [a2 hasError];
LABEL_286:
                  PBRepeatedInt32Add();
                }

              case 0xAu:
                if (v12 != 2)
                {
                  v159 = 0;
                  v160 = 0;
                  v161 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v161 |= (v220 & 0x7F) << v159;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v159 += 7;
                    v10 = v160++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v50 = [a2 position];
                  if (v50 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v51 = 0;
                  v52 = 0;
                  v53 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v53 |= (v222 & 0x7F) << v51;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v51 += 7;
                    v10 = v52++ >= 9;
                    if (v10)
                    {
                      goto LABEL_116;
                    }
                  }

                  [a2 hasError];
LABEL_116:
                  PBRepeatedInt32Add();
                }

              case 0xBu:
                if (v12 != 2)
                {
                  v204 = 0;
                  v205 = 0;
                  v206 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v206 |= (v220 & 0x7F) << v204;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v204 += 7;
                    v10 = v205++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v115 = [a2 position];
                  if (v115 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v116 = 0;
                  v117 = 0;
                  v118 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v118 |= (v222 & 0x7F) << v116;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v116 += 7;
                    v10 = v117++ >= 9;
                    if (v10)
                    {
                      goto LABEL_271;
                    }
                  }

                  [a2 hasError];
LABEL_271:
                  PBRepeatedInt32Add();
                }

              case 0xCu:
                if (v12 != 2)
                {
                  v144 = 0;
                  v145 = 0;
                  v146 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v146 |= (v220 & 0x7F) << v144;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v144 += 7;
                    v10 = v145++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
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
                    goto LABEL_302;
                  }

                  v33 = 0;
                  v34 = 0;
                  v35 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v35 |= (v222 & 0x7F) << v33;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v33 += 7;
                    v10 = v34++ >= 9;
                    if (v10)
                    {
                      goto LABEL_71;
                    }
                  }

                  [a2 hasError];
LABEL_71:
                  PBRepeatedInt32Add();
                }

              case 0xDu:
                if (v12 != 2)
                {
                  v154 = 0;
                  v155 = 0;
                  v156 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
                    v157 = [a2 position] + 1;
                    if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
                    {
                      [objc_msgSend(a2 "data")];
                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v156 |= (v220 & 0x7F) << v154;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v154 += 7;
                    v10 = v155++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v44 = [a2 position];
                  if (v44 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v45 = 0;
                  v46 = 0;
                  v47 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v47 |= (v222 & 0x7F) << v45;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v45 += 7;
                    v10 = v46++ >= 9;
                    if (v10)
                    {
                      goto LABEL_101;
                    }
                  }

                  [a2 hasError];
LABEL_101:
                  PBRepeatedInt32Add();
                }

              case 0xEu:
                if (v12 != 2)
                {
                  v189 = 0;
                  v190 = 0;
                  v191 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v191 |= (v220 & 0x7F) << v189;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v189 += 7;
                    v10 = v190++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v97 = [a2 position];
                  if (v97 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v98 = 0;
                  v99 = 0;
                  v100 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v100 |= (v222 & 0x7F) << v98;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v98 += 7;
                    v10 = v99++ >= 9;
                    if (v10)
                    {
                      goto LABEL_226;
                    }
                  }

                  [a2 hasError];
LABEL_226:
                  PBRepeatedInt32Add();
                }

              case 0xFu:
                if (v12 != 2)
                {
                  v139 = 0;
                  v140 = 0;
                  v141 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v141 |= (v220 & 0x7F) << v139;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v139 += 7;
                    v10 = v140++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
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
                    goto LABEL_302;
                  }

                  v27 = 0;
                  v28 = 0;
                  v29 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v29 |= (v222 & 0x7F) << v27;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v27 += 7;
                    v10 = v28++ >= 9;
                    if (v10)
                    {
                      goto LABEL_56;
                    }
                  }

                  [a2 hasError];
LABEL_56:
                  PBRepeatedInt32Add();
                }

              case 0x10u:
                if (v12 != 2)
                {
                  v164 = 0;
                  v165 = 0;
                  v166 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v166 |= (v220 & 0x7F) << v164;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v164 += 7;
                    v10 = v165++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v62 = [a2 position];
                  if (v62 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v63 = 0;
                  v64 = 0;
                  v65 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v65 |= (v222 & 0x7F) << v63;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v63 += 7;
                    v10 = v64++ >= 9;
                    if (v10)
                    {
                      goto LABEL_140;
                    }
                  }

                  [a2 hasError];
LABEL_140:
                  PBRepeatedInt32Add();
                }

              case 0x11u:
                if (v12 != 2)
                {
                  v134 = 0;
                  v135 = 0;
                  v136 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v136 |= (v220 & 0x7F) << v134;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v134 += 7;
                    v10 = v135++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
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
                    goto LABEL_302;
                  }

                  v21 = 0;
                  v22 = 0;
                  v23 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v23 |= (v222 & 0x7F) << v21;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v21 += 7;
                    v10 = v22++ >= 9;
                    if (v10)
                    {
                      goto LABEL_41;
                    }
                  }

                  [a2 hasError];
LABEL_41:
                  PBRepeatedInt32Add();
                }

              case 0x12u:
                if (v12 != 2)
                {
                  v179 = 0;
                  v180 = 0;
                  v181 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v181 |= (v220 & 0x7F) << v179;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v179 += 7;
                    v10 = v180++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v85 = [a2 position];
                  if (v85 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v86 = 0;
                  v87 = 0;
                  v88 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v88 |= (v222 & 0x7F) << v86;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v86 += 7;
                    v10 = v87++ >= 9;
                    if (v10)
                    {
                      goto LABEL_194;
                    }
                  }

                  [a2 hasError];
LABEL_194:
                  PBRepeatedInt32Add();
                }

              case 0x13u:
                if (v12 != 2)
                {
                  v199 = 0;
                  v200 = 0;
                  v201 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v201 |= (v220 & 0x7F) << v199;
                    if ((v220 & 0x80) == 0)
                    {
                      goto LABEL_469;
                    }

                    v199 += 7;
                    v10 = v200++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }
                }

                v220 = 0;
                v221 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v109 = [a2 position];
                  if (v109 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_302;
                  }

                  v110 = 0;
                  v111 = 0;
                  v112 = 0;
                  while (1)
                  {
                    v222 = 0;
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

                    v112 |= (v222 & 0x7F) << v110;
                    if ((v222 & 0x80) == 0)
                    {
                      break;
                    }

                    v110 += 7;
                    v10 = v111++ >= 9;
                    if (v10)
                    {
                      goto LABEL_256;
                    }
                  }

                  [a2 hasError];
LABEL_256:
                  PBRepeatedInt32Add();
                }

              case 0x14u:
                if (v12 == 2)
                {
                  v220 = 0;
                  v221 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v127 = [a2 position];
                    if (v127 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v128 = 0;
                    v129 = 0;
                    v130 = 0;
                    while (1)
                    {
                      v222 = 0;
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

                      v130 |= (v222 & 0x7F) << v128;
                      if ((v222 & 0x80) == 0)
                      {
                        break;
                      }

                      v128 += 7;
                      v10 = v129++ >= 9;
                      if (v10)
                      {
                        goto LABEL_301;
                      }
                    }

                    [a2 hasError];
LABEL_301:
                    PBRepeatedInt32Add();
                  }

LABEL_302:
                  PBReaderRecallMark();
                }

                else
                {
                  v214 = 0;
                  v215 = 0;
                  v216 = 0;
                  while (1)
                  {
                    LOBYTE(v220) = 0;
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

                    v216 |= (v220 & 0x7F) << v214;
                    if ((v220 & 0x80) == 0)
                    {
                      break;
                    }

                    v214 += 7;
                    v10 = v215++ >= 9;
                    if (v10)
                    {
                      goto LABEL_470;
                    }
                  }

LABEL_469:
                  [a2 hasError];
LABEL_470:
                  PBRepeatedInt32Add();
                }

LABEL_471:
                v219 = [a2 position];
                if (v219 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_471;
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

uint64_t AWDCpuLoadReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDLQMDataTransferReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 32) |= 1u;
        while (1)
        {
          v39 = 0;
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

          v21 |= (v39 & 0x7F) << v19;
          if ((v39 & 0x80) == 0)
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
        v36 = 16;
        goto LABEL_78;
      }

      String = PBReaderReadString();

      *(a1 + 8) = String;
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
        *(a1 + 32) |= 8u;
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

          v26 |= (v42 & 0x7F) << v24;
          if ((v42 & 0x80) == 0)
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
        v36 = 28;
        break;
      case 4:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v41 = 0;
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

          v31 |= (v41 & 0x7F) << v29;
          if ((v41 & 0x80) == 0)
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
        v36 = 20;
        break;
      case 5:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 32) |= 4u;
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
        v36 = 24;
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

uint64_t AWDNetworkUsageReadFrom(uint64_t a1, void *a2)
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
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 3)
      {
        if (v12 == 4)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 52) |= 1u;
          while (1)
          {
            v46 = 0;
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

            v28 |= (v46 & 0x7F) << v26;
            if ((v46 & 0x80) == 0)
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
          v42 = 8;
          goto LABEL_92;
        }

        if (v12 == 5)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            v45 = 0;
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

            v39 |= (v45 & 0x7F) << v37;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v10 = v38++ >= 9;
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
            v18 = v39;
          }

LABEL_91:
          v42 = 16;
LABEL_92:
          *(a1 + v42) = v18;
          goto LABEL_93;
        }

        if (v12 != 6)
        {
LABEL_52:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_93;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 52) |= 0x10u;
        while (1)
        {
          v49 = 0;
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

          v21 |= (v49 & 0x7F) << v19;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            v24 = 0;
            goto LABEL_83;
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

LABEL_83:
        *(a1 + 48) = v24;
      }

      else
      {
        if (v12 != 1)
        {
          if (v12 == 2)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 52) |= 4u;
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

              v34 |= (v48 & 0x7F) << v32;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
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
              v18 = v34;
            }

LABEL_87:
            v42 = 24;
          }

          else
          {
            if (v12 != 3)
            {
              goto LABEL_52;
            }

            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 52) |= 8u;
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
            v42 = 32;
          }

          goto LABEL_92;
        }

        String = PBReaderReadString();

        *(a1 + 40) = String;
      }

LABEL_93:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDPowerApMetricsReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 36) |= 8u;
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
            v46 = 24;
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
            *(a1 + 36) |= 4u;
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
            v46 = 20;
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

uint64_t AWDPowerAppBBMetricsReadFrom(uint64_t a1, void *a2)
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
        v18 = objc_alloc_init(AWDAppBBPower);
        [a1 addAppPower:v18];

        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDAppBBPowerReadFrom(v18, a2);
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

uint64_t AWDPowerAudioMetricsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v66) = 0;
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

        v7 |= (v66 & 0x7F) << v5;
        if ((v66 & 0x80) == 0)
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
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              LOBYTE(v66) = 0;
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

              v34 |= (v66 & 0x7F) << v32;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
              if (v10)
              {
                v37 = 0;
                goto LABEL_107;
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

LABEL_107:
            *(a1 + 56) = v37;
            goto LABEL_125;
          case 2:
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 80) |= 0x10u;
            while (1)
            {
              LOBYTE(v66) = 0;
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

              v51 |= (v66 & 0x7F) << v49;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v10 = v50++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_123;
              }
            }

            if ([a2 hasError])
            {
              v19 = 0;
            }

            else
            {
              v19 = v51;
            }

LABEL_123:
            v54 = 76;
            goto LABEL_124;
          case 3:
            v20 = 0;
            v21 = 0;
            v22 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              LOBYTE(v66) = 0;
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

              v22 |= (v66 & 0x7F) << v20;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v10 = v21++ >= 9;
              if (v10)
              {
                v19 = 0;
                goto LABEL_119;
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

LABEL_119:
            v54 = 68;
            goto LABEL_124;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          if (v12 != 2)
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
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
                goto LABEL_145;
              }

              v56 += 7;
              v10 = v57++ >= 9;
              if (v10)
              {
                goto LABEL_146;
              }
            }
          }

          v66 = 0;
          v67 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v43 = [a2 position];
            if (v43 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_103;
            }

            v44 = 0;
            v45 = 0;
            v46 = 0;
            while (1)
            {
              v68 = 0;
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

              v46 |= (v68 & 0x7F) << v44;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v10 = v45++ >= 9;
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
          if (v12 != 2)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
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

              v63 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v10 = v62++ >= 9;
              if (v10)
              {
                goto LABEL_146;
              }
            }

LABEL_145:
            [a2 hasError];
LABEL_146:
            PBRepeatedUInt32Add();
            goto LABEL_125;
          }

          v66 = 0;
          v67 = 0;
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
              break;
            }

            v27 = 0;
            v28 = 0;
            v29 = 0;
            while (1)
            {
              v68 = 0;
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

              v29 |= (v68 & 0x7F) << v27;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v10 = v28++ >= 9;
              if (v10)
              {
                goto LABEL_58;
              }
            }

            [a2 hasError];
LABEL_58:
            PBRepeatedUInt32Add();
          }

LABEL_103:
          PBReaderRecallMark();
          goto LABEL_125;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 80) |= 8u;
          while (1)
          {
            LOBYTE(v66) = 0;
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

            v40 |= (v66 & 0x7F) << v38;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_111;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v40;
          }

LABEL_111:
          v54 = 72;
          goto LABEL_124;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            LOBYTE(v66) = 0;
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

            v16 |= (v66 & 0x7F) << v14;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v10 = v15++ >= 9;
            if (v10)
            {
              v19 = 0;
              goto LABEL_115;
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

LABEL_115:
          v54 = 64;
LABEL_124:
          *(a1 + v54) = v19;
          goto LABEL_125;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_125:
      v55 = [a2 position];
    }

    while (v55 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDPowerBBAppRRCMetricsReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 28) |= 2u;
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
        *(a1 + 24) = v26;
      }

      else if (v12 == 2)
      {
        v19 = objc_alloc_init(AWDAppRRCConnectionStats);
        [a1 addAppConnStats:v19];

        v28[0] = 0;
        v28[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDAppRRCConnectionStatsReadFrom(v19, a2);
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
        *(a1 + 28) |= 1u;
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