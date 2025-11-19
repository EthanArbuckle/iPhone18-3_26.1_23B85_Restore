uint64_t AWDWiFiMetricsManagerP2pLegacyUsageReportReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v47 = 0;
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

          v37 |= (v47 & 0x7F) << v35;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v10 = v36++ >= 9;
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
          v18 = v37;
        }

LABEL_81:
        v41 = 24;
LABEL_86:
        *(a1 + v41) = v18;
        goto LABEL_87;
      }

      if (v12 != 2)
      {
LABEL_68:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_87;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 44) |= 0x10u;
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
          goto LABEL_92;
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

LABEL_92:
      *(a1 + 40) = v24;
LABEL_87:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v12)
    {
      case 3:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 44) |= 8u;
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
          v18 = v27;
        }

LABEL_73:
        v41 = 32;
        break;
      case 4:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v45 = 0;
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

          v32 |= (v45 & 0x7F) << v30;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v10 = v31++ >= 9;
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
          v18 = v32;
        }

LABEL_77:
        v41 = 8;
        break;
      case 5:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v44 = 0;
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

          v15 |= (v44 & 0x7F) << v13;
          if ((v44 & 0x80) == 0)
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
        v41 = 16;
        break;
      default:
        goto LABEL_68;
    }

    goto LABEL_86;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerPowerStatsUpdateEventReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 36) |= 2u;
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
            v46 = 16;
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
            *(a1 + 36) |= 8u;
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
            v46 = 24;
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
            *(a1 + 36) |= 0x10u;
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
            v46 = 28;
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

uint64_t AWDWiFiMetricsManagerPowerStickinessReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDWiFiMetricsManagerRCU1CoexModeChangeReadFrom(uint64_t a1, void *a2)
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
        v76 = 0;
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

        v7 |= (v76 & 0x7F) << v5;
        if ((v76 & 0x80) == 0)
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
            *(a1 + 68) |= 0x10u;
            while (1)
            {
              v81 = 0;
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

              v38 |= (v81 & 0x7F) << v36;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v10 = v37++ >= 9;
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
              v18 = v38;
            }

LABEL_135:
            v72 = 40;
            goto LABEL_174;
          }

          if (v12 != 2)
          {
LABEL_130:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_175;
          }

          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 68) |= 0x20u;
          while (1)
          {
            v85 = 0;
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

            v33 |= (v85 & 0x7F) << v31;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v30 = 0;
              goto LABEL_139;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v33;
          }

LABEL_139:
          v73 = 48;
        }

        else
        {
          switch(v12)
          {
            case 3:
              v56 = 0;
              v57 = 0;
              v58 = 0;
              *(a1 + 68) |= 0x100u;
              while (1)
              {
                v84 = 0;
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

                v58 |= (v84 & 0x7F) << v56;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                v10 = v57++ >= 9;
                if (v10)
                {
                  v30 = 0;
                  goto LABEL_157;
                }
              }

              if ([a2 hasError])
              {
                v30 = 0;
              }

              else
              {
                v30 = v58;
              }

LABEL_157:
              v73 = 60;
              break;
            case 4:
              v41 = 0;
              v42 = 0;
              v43 = 0;
              *(a1 + 68) |= 0x80u;
              while (1)
              {
                v83 = 0;
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

                v43 |= (v83 & 0x7F) << v41;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                v10 = v42++ >= 9;
                if (v10)
                {
                  v30 = 0;
                  goto LABEL_143;
                }
              }

              if ([a2 hasError])
              {
                v30 = 0;
              }

              else
              {
                v30 = v43;
              }

LABEL_143:
              v73 = 56;
              break;
            case 5:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 68) |= 0x400u;
              while (1)
              {
                v87 = 0;
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

                v21 |= (v87 & 0x7F) << v19;
                if ((v87 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v10 = v20++ >= 9;
                if (v10)
                {
                  LOBYTE(v24) = 0;
                  goto LABEL_153;
                }
              }

              v24 = (v21 != 0) & ~[a2 hasError];
LABEL_153:
              v74 = 65;
LABEL_169:
              *(a1 + v74) = v24;
              goto LABEL_175;
            default:
              goto LABEL_130;
          }
        }
      }

      else
      {
        if (v12 <= 8)
        {
          if (v12 != 6)
          {
            if (v12 == 7)
            {
              v46 = 0;
              v47 = 0;
              v48 = 0;
              *(a1 + 68) |= 4u;
              while (1)
              {
                v80 = 0;
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

                v48 |= (v80 & 0x7F) << v46;
                if ((v80 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v10 = v47++ >= 9;
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
                v18 = v48;
              }

LABEL_147:
              v72 = 24;
            }

            else
            {
              if (v12 != 8)
              {
                goto LABEL_130;
              }

              v13 = 0;
              v14 = 0;
              v15 = 0;
              *(a1 + 68) |= 2u;
              while (1)
              {
                v79 = 0;
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

                v15 |= (v79 & 0x7F) << v13;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v13 += 7;
                v10 = v14++ >= 9;
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
                v18 = v15;
              }

LABEL_161:
              v72 = 16;
            }

            goto LABEL_174;
          }

          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 68) |= 0x200u;
          while (1)
          {
            v86 = 0;
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

            v63 |= (v86 & 0x7F) << v61;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
            if (v10)
            {
              LOBYTE(v24) = 0;
              goto LABEL_168;
            }
          }

          v24 = (v63 != 0) & ~[a2 hasError];
LABEL_168:
          v74 = 64;
          goto LABEL_169;
        }

        if (v12 == 9)
        {
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v78 = 0;
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

            v68 |= (v78 & 0x7F) << v66;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_173;
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

LABEL_173:
          v72 = 8;
          goto LABEL_174;
        }

        if (v12 == 10)
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            v77 = 0;
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
            v10 = v52++ >= 9;
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
            v18 = v53;
          }

LABEL_151:
          v72 = 32;
LABEL_174:
          *(a1 + v72) = v18;
          goto LABEL_175;
        }

        if (v12 != 11)
        {
          goto LABEL_130;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 68) |= 0x40u;
        while (1)
        {
          v82 = 0;
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

          v27 |= (v82 & 0x7F) << v25;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v10 = v26++ >= 9;
          if (v10)
          {
            v30 = 0;
            goto LABEL_165;
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

LABEL_165:
        v73 = 52;
      }

      *(a1 + v73) = v30;
LABEL_175:
      v75 = [a2 position];
    }

    while (v75 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerRangingReportReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v103[0]) = 0;
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

        v7 |= (v103[0] & 0x7F) << v5;
        if ((v103[0] & 0x80) == 0)
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
          *(a1 + 88) |= 1u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v14 |= (v103[0] & 0x7F) << v12;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_215:
              *(a1 + 8) = v17;
              goto LABEL_245;
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

          goto LABEL_215;
        case 2u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 88) |= 0x4000u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v68 |= (v103[0] & 0x7F) << v66;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_219;
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

LABEL_219:
          v101 = 76;
          goto LABEL_244;
        case 3u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 88) |= 0x8000u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v48 |= (v103[0] & 0x7F) << v46;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v10 = v47++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_199;
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

LABEL_199:
          v101 = 80;
          goto LABEL_244;
        case 4u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 88) |= 0x2000u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v58 |= (v103[0] & 0x7F) << v56;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_207;
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

LABEL_207:
          v101 = 72;
          goto LABEL_244;
        case 5u:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 88) |= 0x10u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v33 |= (v103[0] & 0x7F) << v31;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_187;
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

LABEL_187:
          v101 = 28;
          goto LABEL_244;
        case 6u:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 88) |= 0x20u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v78 |= (v103[0] & 0x7F) << v76;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v10 = v77++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_227;
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

LABEL_227:
          v101 = 32;
          goto LABEL_244;
        case 7u:
          v86 = 0;
          v87 = 0;
          v88 = 0;
          *(a1 + 88) |= 8u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v88 |= (v103[0] & 0x7F) << v86;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            v10 = v87++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_235;
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

LABEL_235:
          v101 = 24;
          goto LABEL_244;
        case 8u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 88) |= 0x40u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v63 |= (v103[0] & 0x7F) << v61;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_211;
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

LABEL_211:
          v101 = 36;
          goto LABEL_244;
        case 9u:
          v96 = 0;
          v97 = 0;
          v98 = 0;
          *(a1 + 88) |= 0x100u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v98 |= (v103[0] & 0x7F) << v96;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v96 += 7;
            v10 = v97++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_243;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v98;
          }

LABEL_243:
          v101 = 44;
          goto LABEL_244;
        case 0xAu:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 88) |= 0x80u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v43 |= (v103[0] & 0x7F) << v41;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_195;
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

LABEL_195:
          v101 = 40;
          goto LABEL_244;
        case 0xBu:
          v91 = 0;
          v92 = 0;
          v93 = 0;
          *(a1 + 88) |= 0x800u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v93 |= (v103[0] & 0x7F) << v91;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v91 += 7;
            v10 = v92++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_239;
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

LABEL_239:
          v101 = 56;
          goto LABEL_244;
        case 0xCu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 88) |= 0x1000u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v28 |= (v103[0] & 0x7F) << v26;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v10 = v27++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_183;
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

LABEL_183:
          v101 = 60;
          goto LABEL_244;
        case 0xDu:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 88) |= 0x10000u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v38 |= (v103[0] & 0x7F) << v36;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v10 = v37++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_191;
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

LABEL_191:
          v101 = 84;
          goto LABEL_244;
        case 0xEu:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 88) |= 4u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v83 |= (v103[0] & 0x7F) << v81;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v10 = v82++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_231;
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

LABEL_231:
          v101 = 20;
          goto LABEL_244;
        case 0xFu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 88) |= 2u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v22 |= (v103[0] & 0x7F) << v20;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_179;
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

LABEL_179:
          v101 = 16;
          goto LABEL_244;
        case 0x10u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 88) |= 0x400u;
          while (1)
          {
            LOBYTE(v103[0]) = 0;
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

            v53 |= (v103[0] & 0x7F) << v51;
            if ((v103[0] & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              v25 = 0;
              goto LABEL_203;
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

LABEL_203:
          v101 = 52;
          goto LABEL_244;
        case 0x11u:
          v18 = objc_alloc_init(AWDWiFiRangingRttData);
          [a1 addRttSamples:v18];

          v103[0] = 0;
          v103[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiRangingRttDataReadFrom(v18, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_245;
        case 0x12u:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 88) |= 0x200u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_245;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v103[0]) = 0;
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

        v73 |= (v103[0] & 0x7F) << v71;
        if ((v103[0] & 0x80) == 0)
        {
          break;
        }

        v71 += 7;
        v10 = v72++ >= 9;
        if (v10)
        {
          v25 = 0;
          goto LABEL_223;
        }
      }

      v25 = [a2 hasError] ? 0 : v73;
LABEL_223:
      v101 = 48;
LABEL_244:
      *(a1 + v101) = v25;
LABEL_245:
      v102 = [a2 position];
    }

    while (v102 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerRoamStatusReadFrom(uint64_t a1, void *a2)
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
      v179 = 0;
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

      v8 |= (v179 & 0x7F) << v6;
      if ((v179 & 0x80) == 0)
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
        *(a1 + 164) |= 0x10u;
        while (1)
        {
          v179 = 0;
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

          v15 |= (v179 & 0x7F) << v13;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_352:
            v177 = 40;
            goto LABEL_426;
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

        goto LABEL_352;
      case 2u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 164) |= 0x800u;
        while (1)
        {
          v179 = 0;
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

          v86 |= (v179 & 0x7F) << v84;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v11 = v85++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_356;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v86;
        }

LABEL_356:
        v176 = 72;
        goto LABEL_420;
      case 3u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 164) |= 0x80000u;
        while (1)
        {
          v179 = 0;
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

          v66 |= (v179 & 0x7F) << v64;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_336;
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

LABEL_336:
        v176 = 112;
        goto LABEL_420;
      case 4u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 164) |= 0x400000u;
        while (1)
        {
          v179 = 0;
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

          v76 |= (v179 & 0x7F) << v74;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_344;
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

LABEL_344:
        v176 = 124;
        goto LABEL_420;
      case 5u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 164) |= 0x800000u;
        while (1)
        {
          v179 = 0;
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

          v42 |= (v179 & 0x7F) << v40;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_322;
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

LABEL_322:
        v176 = 128;
        goto LABEL_420;
      case 6u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 164) |= 0x100000u;
        while (1)
        {
          v179 = 0;
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

          v106 |= (v179 & 0x7F) << v104;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v11 = v105++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_372;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v106;
        }

LABEL_372:
        v176 = 116;
        goto LABEL_420;
      case 7u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 164) |= 0x40000u;
        while (1)
        {
          v179 = 0;
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

          v121 |= (v179 & 0x7F) << v119;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v11 = v120++ >= 9;
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
          v24 = v121;
        }

LABEL_384:
        v176 = 108;
        goto LABEL_420;
      case 8u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 164) |= 0x10000000u;
        while (1)
        {
          v179 = 0;
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

          v81 |= (v179 & 0x7F) << v79;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v11 = v80++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_348;
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

LABEL_348:
        v176 = 156;
        goto LABEL_420;
      case 9u:
        Data = PBReaderReadData();

        v51 = Data;
        v52 = 96;
        goto LABEL_228;
      case 0xAu:
        v50 = PBReaderReadData();

        v51 = v50;
        v52 = 144;
LABEL_228:
        *(a1 + v52) = v51;
        continue;
      case 0xBu:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 164) |= 0x200u;
        while (1)
        {
          v179 = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v179 & 0x7F) << v129;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v11 = v130++ >= 9;
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
          v24 = v131;
        }

LABEL_392:
        v176 = 64;
        goto LABEL_420;
      case 0xCu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 164) |= 0x8000u;
        while (1)
        {
          v179 = 0;
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

          v37 |= (v179 & 0x7F) << v35;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_318;
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

LABEL_318:
        v176 = 88;
        goto LABEL_420;
      case 0xDu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 164) |= 0x2000000u;
        while (1)
        {
          v179 = 0;
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

          v47 |= (v179 & 0x7F) << v45;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v47;
        }

LABEL_326:
        v176 = 136;
        goto LABEL_420;
      case 0xEu:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 164) |= 0x100u;
        while (1)
        {
          v179 = 0;
          v117 = [a2 position] + 1;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v116 |= (v179 & 0x7F) << v114;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v11 = v115++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_380;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v116;
        }

LABEL_380:
        v176 = 60;
        goto LABEL_420;
      case 0xFu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 164) |= 0x80u;
        while (1)
        {
          v179 = 0;
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

          v32 |= (v179 & 0x7F) << v30;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_314;
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

LABEL_314:
        v176 = 56;
        goto LABEL_420;
      case 0x10u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 164) |= 0x40u;
        while (1)
        {
          v179 = 0;
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

          v71 |= (v179 & 0x7F) << v69;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_340;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v71;
        }

LABEL_340:
        v176 = 52;
        goto LABEL_420;
      case 0x11u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 164) |= 0x20u;
        while (1)
        {
          v179 = 0;
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

          v27 |= (v179 & 0x7F) << v25;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_310;
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

LABEL_310:
        v176 = 48;
        goto LABEL_420;
      case 0x12u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 164) |= 8u;
        while (1)
        {
          v179 = 0;
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

          v96 |= (v179 & 0x7F) << v94;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v11 = v95++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_364;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v96;
        }

LABEL_364:
        v177 = 32;
        goto LABEL_426;
      case 0x13u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 164) |= 0x2000u;
        while (1)
        {
          v179 = 0;
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

          v126 |= (v179 & 0x7F) << v124;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v11 = v125++ >= 9;
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
          v24 = v126;
        }

LABEL_388:
        v176 = 80;
        goto LABEL_420;
      case 0x14u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        *(a1 + 164) |= 0x200000u;
        while (1)
        {
          v179 = 0;
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

          v152 |= (v179 & 0x7F) << v150;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v11 = v151++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_408;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v152;
        }

LABEL_408:
        v176 = 120;
        goto LABEL_420;
      case 0x15u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 164) |= 1u;
        while (1)
        {
          v179 = 0;
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

          v101 |= (v179 & 0x7F) << v99;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v11 = v100++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_368;
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

LABEL_368:
        v177 = 8;
        goto LABEL_426;
      case 0x16u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 164) |= 0x400u;
        while (1)
        {
          v179 = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v179 & 0x7F) << v109;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v11 = v110++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_376;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v111;
        }

LABEL_376:
        v176 = 68;
        goto LABEL_420;
      case 0x17u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 164) |= 0x1000u;
        while (1)
        {
          v179 = 0;
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

          v147 |= (v179 & 0x7F) << v145;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v11 = v146++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_404;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v147;
        }

LABEL_404:
        v176 = 76;
        goto LABEL_420;
      case 0x18u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 164) |= 0x40000000u;
        while (1)
        {
          v179 = 0;
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

          v157 |= (v179 & 0x7F) << v155;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v11 = v156++ >= 9;
          if (v11)
          {
            LOBYTE(v63) = 0;
            goto LABEL_410;
          }
        }

        v63 = (v157 != 0) & ~[a2 hasError];
LABEL_410:
        v178 = 161;
        goto LABEL_411;
      case 0x19u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 164) |= 0x20000000u;
        while (1)
        {
          v179 = 0;
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

          v60 |= (v179 & 0x7F) << v58;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            LOBYTE(v63) = 0;
            goto LABEL_332;
          }
        }

        v63 = (v60 != 0) & ~[a2 hasError];
LABEL_332:
        v178 = 160;
LABEL_411:
        *(a1 + v178) = v63;
        continue;
      case 0x1Au:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 164) |= 2u;
        while (1)
        {
          v179 = 0;
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

          v55 |= (v179 & 0x7F) << v53;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v11 = v54++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_330;
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

LABEL_330:
        v177 = 16;
        goto LABEL_426;
      case 0x1Bu:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 164) |= 4u;
        while (1)
        {
          v179 = 0;
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

          v172 |= (v179 & 0x7F) << v170;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v11 = v171++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_425;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v172;
        }

LABEL_425:
        v177 = 24;
LABEL_426:
        *(a1 + v177) = v18;
        continue;
      case 0x1Cu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 164) |= 0x10000u;
        while (1)
        {
          v179 = 0;
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

          v21 |= (v179 & 0x7F) << v19;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_306;
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

LABEL_306:
        v176 = 92;
        goto LABEL_420;
      case 0x1Du:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 164) |= 0x4000000u;
        while (1)
        {
          v179 = 0;
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

          v162 |= (v179 & 0x7F) << v160;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v11 = v161++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_415;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v162;
        }

LABEL_415:
        v176 = 140;
        goto LABEL_420;
      case 0x1Eu:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 164) |= 0x4000u;
        while (1)
        {
          v179 = 0;
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

          v167 |= (v179 & 0x7F) << v165;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v11 = v166++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_419;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v167;
        }

LABEL_419:
        v176 = 84;
        goto LABEL_420;
      case 0x1Fu:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        *(a1 + 164) |= 0x1000000u;
        while (1)
        {
          v179 = 0;
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

          v137 |= (v179 & 0x7F) << v135;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v11 = v136++ >= 9;
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
          v24 = v137;
        }

LABEL_396:
        v176 = 132;
        goto LABEL_420;
      case 0x20u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 164) |= 0x20000u;
        while (1)
        {
          v179 = 0;
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

          v91 |= (v179 & 0x7F) << v89;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v11 = v90++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_360;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v91;
        }

LABEL_360:
        v176 = 104;
        goto LABEL_420;
      case 0x21u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 164) |= 0x8000000u;
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
      v179 = 0;
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

      v142 |= (v179 & 0x7F) << v140;
      if ((v179 & 0x80) == 0)
      {
        break;
      }

      v140 += 7;
      v11 = v141++ >= 9;
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
      v24 = v142;
    }

LABEL_400:
    v176 = 152;
LABEL_420:
    *(a1 + v176) = v24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerSoftErrorReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v107) = 0;
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

        v7 |= (v107 & 0x7F) << v5;
        if ((v107 & 0x80) == 0)
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
          *(a1 + 136) |= 4u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v14 |= (v107 & 0x7F) << v12;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_214:
              v105 = 24;
              goto LABEL_215;
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

          goto LABEL_214;
        case 2u:
          v68 = 0;
          v69 = 0;
          v70 = 0;
          *(a1 + 136) |= 0x2000u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v70 |= (v107 & 0x7F) << v68;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v10 = v69++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_219;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v70;
          }

LABEL_219:
          v104 = 128;
          goto LABEL_240;
        case 3u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 136) |= 1u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v50 |= (v107 & 0x7F) << v48;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v10 = v49++ >= 9;
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
            v17 = v50;
          }

LABEL_198:
          v105 = 8;
          goto LABEL_215;
        case 4u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 136) |= 2u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v60 |= (v107 & 0x7F) << v58;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v10 = v59++ >= 9;
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
            v17 = v60;
          }

LABEL_206:
          v105 = 16;
LABEL_215:
          *(a1 + v105) = v17;
          goto LABEL_241;
        case 5u:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 136) |= 0x100u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v34 |= (v107 & 0x7F) << v32;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_186;
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

LABEL_186:
          v104 = 108;
          goto LABEL_240;
        case 6u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 136) |= 0x800u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v81 |= (v107 & 0x7F) << v79;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v10 = v80++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_227;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v81;
          }

LABEL_227:
          v104 = 120;
          goto LABEL_240;
        case 7u:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 136) |= 0x80u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v92 |= (v107 & 0x7F) << v90;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v10 = v91++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_235;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v92;
          }

LABEL_235:
          v104 = 104;
          goto LABEL_240;
        case 8u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 136) |= 0x400u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v65 |= (v107 & 0x7F) << v63;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v10 = v64++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_210;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v65;
          }

LABEL_210:
          v104 = 116;
          goto LABEL_240;
        case 9u:
          v97 = 0;
          v98 = 0;
          v99 = 0;
          *(a1 + 136) |= 0x200u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v99 |= (v107 & 0x7F) << v97;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v97 += 7;
            v10 = v98++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_239;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v99;
          }

LABEL_239:
          v104 = 112;
          goto LABEL_240;
        case 0xAu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 136) |= 0x1000u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v45 |= (v107 & 0x7F) << v43;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_194;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v45;
          }

LABEL_194:
          v104 = 124;
          goto LABEL_240;
        case 0xBu:
          String = PBReaderReadString();

          v25 = String;
          v26 = 40;
          goto LABEL_163;
        case 0xCu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 136) |= 0x4000u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v29 |= (v107 & 0x7F) << v27;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              LOBYTE(v23) = 0;
              goto LABEL_181;
            }
          }

          v23 = (v29 != 0) & ~[a2 hasError];
LABEL_181:
          v103 = 132;
          goto LABEL_182;
        case 0xDu:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 136) |= 0x40u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v40 |= (v107 & 0x7F) << v38;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v40;
          }

LABEL_190:
          v104 = 100;
          goto LABEL_240;
        case 0xEu:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 136) |= 0x10u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v87 |= (v107 & 0x7F) << v85;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v10 = v86++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_231;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v87;
          }

LABEL_231:
          v104 = 72;
          goto LABEL_240;
        case 0xFu:
          Data = PBReaderReadData();

          v25 = Data;
          v26 = 32;
LABEL_163:
          *(a1 + v26) = v25;
          goto LABEL_241;
        case 0x10u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 136) |= 8u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v55 |= (v107 & 0x7F) << v53;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v10 = v54++ >= 9;
            if (v10)
            {
              v37 = 0;
              goto LABEL_202;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v55;
          }

LABEL_202:
          v104 = 48;
          goto LABEL_240;
        case 0x11u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 136) |= 0x8000u;
          while (1)
          {
            LOBYTE(v107) = 0;
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

            v20 |= (v107 & 0x7F) << v18;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              LOBYTE(v23) = 0;
              goto LABEL_179;
            }
          }

          v23 = (v20 != 0) & ~[a2 hasError];
LABEL_179:
          v103 = 133;
LABEL_182:
          *(a1 + v103) = v23;
          goto LABEL_241;
        case 0x12u:
          v73 = objc_alloc_init(AWDWiFiMetricsManagerChipCounters);

          *(a1 + 80) = v73;
          goto LABEL_138;
        case 0x13u:
          v95 = objc_alloc_init(AWDWiFiMetricsManagerBTCoexStats);

          *(a1 + 64) = v95;
          v107 = 0;
          v108 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiMetricsManagerBTCoexStatsReadFrom(v95, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_177;
        case 0x14u:
          v102 = objc_alloc_init(AWDWiFiMetricsManagerBTCoexModeChange);

          *(a1 + 56) = v102;
          v107 = 0;
          v108 = 0;
          result = PBReaderPlaceMark();
          if (result)
          {
            result = AWDWiFiMetricsManagerBTCoexModeChangeReadFrom(v102, a2);
            if (result)
            {
              goto LABEL_177;
            }
          }

          return result;
        case 0x15u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 136) |= 0x20u;
          break;
        case 0x16u:
          v73 = objc_alloc_init(AWDWiFiMetricsManagerChipCounters);
          [a1 addChipCountersPerSlice:v73];

LABEL_138:
          v107 = 0;
          v108 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiMetricsManagerChipCountersReadFrom(v73, a2);
          if (!result)
          {
            return result;
          }

LABEL_177:
          PBReaderRecallMark();
          goto LABEL_241;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_241;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v107) = 0;
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

        v76 |= (v107 & 0x7F) << v74;
        if ((v107 & 0x80) == 0)
        {
          break;
        }

        v74 += 7;
        v10 = v75++ >= 9;
        if (v10)
        {
          v37 = 0;
          goto LABEL_223;
        }
      }

      v37 = [a2 hasError] ? 0 : v76;
LABEL_223:
      v104 = 96;
LABEL_240:
      *(a1 + v104) = v37;
LABEL_241:
      v106 = [a2 position];
    }

    while (v106 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerSoftErrorUserFeedbackReadFrom(uint64_t a1, void *a2)
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
          PBRepeatedInt32Add();
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
          PBRepeatedInt32Add();
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
      PBRepeatedInt32Add();
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerStateMachineReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 20) |= 1u;
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
        *(a1 + 8) = v23;
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(a1 + 20) |= 2u;
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
        *(a1 + 16) = v17;
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

uint64_t AWDWiFiMetricsManagerUserBlacklistEventReadFrom(uint64_t a1, void *a2)
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
      if ((v11 >> 3) > 5)
      {
        if (v12 > 7)
        {
          if (v12 != 8)
          {
            if (v12 == 9)
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              *(a1 + 72) |= 0x40u;
              while (1)
              {
                v69 = 0;
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

                v56 |= (v69 & 0x7F) << v54;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v10 = v55++ >= 9;
                if (v10)
                {
                  v24 = 0;
                  goto LABEL_139;
                }
              }

              if ([a2 hasError])
              {
                v24 = 0;
              }

              else
              {
                v24 = v56;
              }

LABEL_139:
              v60 = 56;
            }

            else
            {
              if (v12 != 10)
              {
                goto LABEL_105;
              }

              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 72) |= 0x20u;
              while (1)
              {
                v68 = 0;
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

                v21 |= (v68 & 0x7F) << v19;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v10 = v20++ >= 9;
                if (v10)
                {
                  v24 = 0;
                  goto LABEL_131;
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

LABEL_131:
              v60 = 52;
            }

            goto LABEL_140;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            v64 = 0;
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

            v46 |= (v64 & 0x7F) << v44;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v10 = v45++ >= 9;
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
            v18 = v46;
          }

LABEL_122:
          v61 = 16;
          goto LABEL_127;
        }

        if (v12 == 6)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v65 = 0;
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

            v40 |= (v65 & 0x7F) << v38;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_118;
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

LABEL_118:
          v61 = 8;
LABEL_127:
          *(a1 + v61) = v18;
          goto LABEL_141;
        }

        if (v12 != 7)
        {
LABEL_105:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_141;
        }

        String = PBReaderReadString();

        v31 = String;
        v32 = 40;
      }

      else
      {
        if (v12 <= 2)
        {
          if (v12 != 1)
          {
            if (v12 != 2)
            {
              goto LABEL_105;
            }

            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 72) |= 0x10u;
            while (1)
            {
              v71 = 0;
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

              v27 |= (v71 & 0x7F) << v25;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v10 = v26++ >= 9;
              if (v10)
              {
                v24 = 0;
                goto LABEL_110;
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

LABEL_110:
            v60 = 48;
            goto LABEL_140;
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            v67 = 0;
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

            v35 |= (v67 & 0x7F) << v33;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_114;
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

LABEL_114:
          v61 = 24;
          goto LABEL_127;
        }

        if (v12 != 3)
        {
          if (v12 == 4)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 72) |= 0x80u;
            while (1)
            {
              v70 = 0;
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
                break;
              }

              v49 += 7;
              v10 = v50++ >= 9;
              if (v10)
              {
                v24 = 0;
                goto LABEL_135;
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

LABEL_135:
            v60 = 60;
LABEL_140:
            *(a1 + v60) = v24;
            goto LABEL_141;
          }

          if (v12 != 5)
          {
            goto LABEL_105;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 72) |= 8u;
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
              goto LABEL_126;
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

LABEL_126:
          v61 = 32;
          goto LABEL_127;
        }

        v43 = PBReaderReadString();

        v31 = v43;
        v32 = 64;
      }

      *(a1 + v32) = v31;
LABEL_141:
      v62 = [a2 position];
    }

    while (v62 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerWatchdogEventReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (1)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v111) = 0;
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

      v8 |= (v111 & 0x7F) << v6;
      if ((v111 & 0x80) == 0)
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
        *(a1 + 232) |= 4u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v15 |= (v111 & 0x7F) << v13;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v18 = 0;
LABEL_204:
            v105 = 48;
            goto LABEL_221;
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

        goto LABEL_204;
      case 2u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 232) |= 0x1000u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v71 |= (v111 & 0x7F) << v69;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_208;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v71;
        }

LABEL_208:
        v104 = 152;
        goto LABEL_226;
      case 3u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 232) |= 0x40u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v51 |= (v111 & 0x7F) << v49;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
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
        v104 = 80;
        goto LABEL_226;
      case 4u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 232) |= 8u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v61 |= (v111 & 0x7F) << v59;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v11 = v60++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_196;
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

LABEL_196:
        v104 = 56;
        goto LABEL_226;
      case 5u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 232) |= 0x200u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v37 |= (v111 & 0x7F) << v35;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_184;
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

LABEL_184:
        v104 = 120;
        goto LABEL_226;
      case 6u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 232) |= 0x800u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v78 |= (v111 & 0x7F) << v76;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_212;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v78;
        }

LABEL_212:
        v104 = 140;
        goto LABEL_226;
      case 7u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 232) |= 0x10u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v85 |= (v111 & 0x7F) << v83;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v11 = v84++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_216;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v85;
        }

LABEL_216:
        v104 = 60;
        goto LABEL_226;
      case 8u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 232) |= 0x20u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v66 |= (v111 & 0x7F) << v64;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_200;
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

LABEL_200:
        v104 = 64;
        goto LABEL_226;
      case 9u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 232) |= 0x100u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v96 |= (v111 & 0x7F) << v94;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v11 = v95++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_225;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v96;
        }

LABEL_225:
        v104 = 108;
        goto LABEL_226;
      case 0xAu:
        String = PBReaderReadString();

        v28 = String;
        v29 = 128;
        goto LABEL_172;
      case 0xBu:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 232) |= 2u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v91 |= (v111 & 0x7F) << v89;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v11 = v90++ >= 9;
          if (v11)
          {
            v18 = 0;
            goto LABEL_220;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v91;
        }

LABEL_220:
        v105 = 40;
        goto LABEL_221;
      case 0xCu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 232) |= 1u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v32 |= (v111 & 0x7F) << v30;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
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
          v18 = v32;
        }

LABEL_180:
        v105 = 32;
LABEL_221:
        *(a1 + v105) = v18;
        goto LABEL_227;
      case 0xDu:
        if ((v12 & 7) == 2)
        {
          v111 = 0;
          v112 = 0;
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
              break;
            }

            v41 = 0;
            v42 = 0;
            v43 = 0;
            while (1)
            {
              v113 = 0;
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

              v43 |= (v113 & 0x7F) << v41;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                goto LABEL_73;
              }
            }

            [a2 hasError];
LABEL_73:
            PBRepeatedUInt64Add();
          }

LABEL_124:
          PBReaderRecallMark();
        }

        else
        {
          v106 = 0;
          v107 = 0;
          v108 = 0;
          while (1)
          {
            LOBYTE(v111) = 0;
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

            v108 |= (v111 & 0x7F) << v106;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v106 += 7;
            v11 = v107++ >= 9;
            if (v11)
            {
              goto LABEL_238;
            }
          }

          [a2 hasError];
LABEL_238:
          PBRepeatedUInt64Add();
        }

LABEL_227:
        v4 = a2;
        break;
      case 0xEu:
        v82 = PBReaderReadString();

        v28 = v82;
        v29 = 72;
        goto LABEL_172;
      case 0xFu:
        v27 = PBReaderReadString();

        v28 = v27;
        v29 = 88;
        goto LABEL_172;
      case 0x10u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 232) |= 0x80u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v56 |= (v111 & 0x7F) << v54;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_192;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v56;
        }

LABEL_192:
        v104 = 104;
        goto LABEL_226;
      case 0x11u:
        v25 = objc_alloc_init(AWDWiFiMetricExtendedTrapInfo);

        *(a1 + 144) = v25;
        v111 = 0;
        v112 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = AWDWiFiMetricExtendedTrapInfoReadFrom(v25, a2);
        if (!result)
        {
          return result;
        }

        goto LABEL_124;
      case 0x12u:
        v74 = objc_alloc_init(AWDWiFiMetricJoinTimeout);

        *(a1 + 96) = v74;
        v111 = 0;
        v112 = 0;
        result = PBReaderPlaceMark();
        if (result)
        {
          result = AWDWiFiMetricJoinTimeoutReadFrom(v74, a2);
          if (result)
          {
            goto LABEL_124;
          }
        }

        return result;
      case 0x13u:
        v88 = PBReaderReadString();

        v28 = v88;
        v29 = 224;
        goto LABEL_172;
      case 0x14u:
        v100 = PBReaderReadString();

        v28 = v100;
        v29 = 184;
        goto LABEL_172;
      case 0x15u:
        v75 = PBReaderReadString();

        v28 = v75;
        v29 = 192;
        goto LABEL_172;
      case 0x16u:
        v81 = PBReaderReadString();

        v28 = v81;
        v29 = 200;
        goto LABEL_172;
      case 0x17u:
        v99 = PBReaderReadString();

        v28 = v99;
        v29 = 208;
        goto LABEL_172;
      case 0x18u:
        v101 = PBReaderReadString();

        v28 = v101;
        v29 = 216;
        goto LABEL_172;
      case 0x19u:
        v48 = PBReaderReadString();

        v28 = v48;
        v29 = 176;
        goto LABEL_172;
      case 0x1Au:
        v47 = PBReaderReadString();

        v28 = v47;
        v29 = 168;
        goto LABEL_172;
      case 0x1Bu:
        v103 = PBReaderReadString();

        v28 = v103;
        v29 = 160;
        goto LABEL_172;
      case 0x1Cu:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 232) |= 0x400u;
        while (1)
        {
          LOBYTE(v111) = 0;
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

          v21 |= (v111 & 0x7F) << v19;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
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
          v24 = v21;
        }

LABEL_176:
        v104 = 136;
LABEL_226:
        *(a1 + v104) = v24;
        goto LABEL_227;
      case 0x1Du:
        Data = PBReaderReadData();

        v28 = Data;
        v29 = 112;
LABEL_172:
        *(a1 + v29) = v28;
        goto LABEL_227;
      default:
        if (PBReaderSkipValueWithTag())
        {
          goto LABEL_227;
        }

        return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsManagerWifidAvailabilityReadFrom(uint64_t a1, void *a2)
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
        v30 = 0;
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

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
        *(a1 + 28) |= 4u;
        while (1)
        {
          v32 = 0;
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

          v23 |= (v32 & 0x7F) << v21;
          if ((v32 & 0x80) == 0)
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

        v26 = [a2 hasError] ? 0 : v23;
LABEL_46:
        *(a1 + 24) = v26;
      }

      else if (v12 == 2)
      {
        *(a1 + 28) |= 2u;
        v29 = 0;
        v19 = [a2 position] + 8;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v29;
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v31 = 0;
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

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
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

        v18 = [a2 hasError] ? 0 : v15;
LABEL_50:
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

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiMetricsScanObjReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 20) |= 1u;
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
            v20 = &OBJC_IVAR___AWDWiFiMetricsScanObj__durScans;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDWiFiMetricsScanObj__durScans;
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
        *(a1 + 20) |= 4u;
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
            v20 = &OBJC_IVAR___AWDWiFiMetricsScanObj__scanType;
            goto LABEL_55;
          }
        }

        v20 = &OBJC_IVAR___AWDWiFiMetricsScanObj__scanType;
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
        v20 = &OBJC_IVAR___AWDWiFiMetricsScanObj__numScans;
        goto LABEL_55;
      }
    }

    v20 = &OBJC_IVAR___AWDWiFiMetricsScanObj__numScans;
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

uint64_t AWDWiFiNWActivityReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v29) = 0;
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

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
            v24 = objc_alloc_init(AWDWiFiNWActivityInterfaceStats);
            [a1 addInterfaceStats:v24];

            v29 = 0;
            v30 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiNWActivityInterfaceStatsReadFrom(v24, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_58;
          }

          if (v12 == 4)
          {
            v15 = objc_alloc_init(AWDWiFiNWActivityPeerStats);
            [a1 addPeerStats:v15];

            v29 = 0;
            v30 = 0;
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

            goto LABEL_58;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              LOBYTE(v29) = 0;
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

              v20 |= (v29 & 0x7F) << v18;
              if ((v29 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v10 = v19++ >= 9;
              if (v10)
              {
                v23 = 0;
                goto LABEL_66;
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

LABEL_66:
            *(a1 + 8) = v23;
            goto LABEL_59;
          }

          if (v12 == 2)
          {
            String = PBReaderReadString();
            if (String)
            {
              [a1 addActivities:String];
            }

            goto LABEL_59;
          }
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v26 = objc_alloc_init(AWDWiFiNWActivityControllerStats);

          *(a1 + 40) = v26;
          v29 = 0;
          v30 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDWiFiNWActivityControllerStatsReadFrom(v26, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_58;
        }

        if (v12 == 6)
        {
          v17 = objc_alloc_init(AWDLinkQualityMeasurements);

          *(a1 + 56) = v17;
          v29 = 0;
          v30 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = AWDLinkQualityMeasurementsReadFrom(v17, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_58;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v25 = objc_alloc_init(AWDWiFiQualityScore);
            [a1 addScore:v25];

            v29 = 0;
            v30 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDWiFiQualityScoreReadFrom(v25, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_58;
          case 8:
            v27 = objc_alloc_init(AWDBTLEConnectionStats);
            [a1 addBtleConnection:v27];

            v29 = 0;
            v30 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = AWDBTLEConnectionStatsReadFrom(v27, a2);
            if (!result)
            {
              return result;
            }

LABEL_58:
            PBReaderRecallMark();
            goto LABEL_59;
          case 9:
            v13 = PBReaderReadString();

            *(a1 + 24) = v13;
            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityAggregateMetricsReadFrom(uint64_t a1, void *a2)
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
        v133 = 0;
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

        v7 |= (v133 & 0x7F) << v5;
        if ((v133 & 0x80) == 0)
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
          *(a1 + 184) |= 0x800u;
          while (1)
          {
            v133 = 0;
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

            v14 |= (v133 & 0x7F) << v12;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_274:
              v130 = 96;
              goto LABEL_320;
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

          goto LABEL_274;
        case 2u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *(a1 + 184) |= 0x1000u;
          while (1)
          {
            v133 = 0;
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

            v81 |= (v133 & 0x7F) << v79;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v10 = v80++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_282;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v81;
          }

LABEL_282:
          v130 = 104;
          goto LABEL_320;
        case 3u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 184) |= 0x4000u;
          while (1)
          {
            v133 = 0;
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

            v40 |= (v133 & 0x7F) << v38;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_246;
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

LABEL_246:
          v130 = 120;
          goto LABEL_320;
        case 5u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 184) |= 4u;
          while (1)
          {
            v133 = 0;
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

            v76 |= (v133 & 0x7F) << v74;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v10 = v75++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_278;
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

LABEL_278:
          v130 = 24;
          goto LABEL_320;
        case 6u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 184) |= 8u;
          while (1)
          {
            v133 = 0;
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

            v45 |= (v133 & 0x7F) << v43;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v10 = v44++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_250;
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

LABEL_250:
          v130 = 32;
          goto LABEL_320;
        case 7u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 184) |= 0x200000u;
          while (1)
          {
            v133 = 0;
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

            v65 |= (v133 & 0x7F) << v63;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v10 = v64++ >= 9;
            if (v10)
            {
              v68 = 0;
              goto LABEL_266;
            }
          }

          if ([a2 hasError])
          {
            v68 = 0;
          }

          else
          {
            v68 = v65;
          }

LABEL_266:
          v131 = 176;
          goto LABEL_287;
        case 8u:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 184) |= 0x400000u;
          while (1)
          {
            v133 = 0;
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

            v86 |= (v133 & 0x7F) << v84;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v10 = v85++ >= 9;
            if (v10)
            {
              v68 = 0;
              goto LABEL_286;
            }
          }

          if ([a2 hasError])
          {
            v68 = 0;
          }

          else
          {
            v68 = v86;
          }

LABEL_286:
          v131 = 180;
LABEL_287:
          *(a1 + v131) = v68;
          goto LABEL_321;
        case 9u:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          *(a1 + 184) |= 0x2000u;
          while (1)
          {
            v133 = 0;
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

            v91 |= (v133 & 0x7F) << v89;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v10 = v90++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_291;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v91;
          }

LABEL_291:
          v130 = 112;
          goto LABEL_320;
        case 0xAu:
          v109 = 0;
          v110 = 0;
          v111 = 0;
          *(a1 + 184) |= 0x200u;
          while (1)
          {
            v133 = 0;
            v112 = [a2 position] + 1;
            if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v111 |= (v133 & 0x7F) << v109;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v109 += 7;
            v10 = v110++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_307;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v111;
          }

LABEL_307:
          v130 = 80;
          goto LABEL_320;
        case 0xCu:
          v104 = 0;
          v105 = 0;
          v106 = 0;
          *(a1 + 184) |= 0x100u;
          while (1)
          {
            v133 = 0;
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

            v106 |= (v133 & 0x7F) << v104;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v104 += 7;
            v10 = v105++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_303;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v106;
          }

LABEL_303:
          v130 = 72;
          goto LABEL_320;
        case 0xDu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 184) |= 0x8000u;
          while (1)
          {
            v133 = 0;
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

            v35 |= (v133 & 0x7F) << v33;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_242;
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

LABEL_242:
          v130 = 128;
          goto LABEL_320;
        case 0xEu:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 184) |= 0x10000u;
          while (1)
          {
            v133 = 0;
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

            v71 |= (v133 & 0x7F) << v69;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v10 = v70++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_270;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v71;
          }

LABEL_270:
          v130 = 136;
          goto LABEL_320;
        case 0x10u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 184) |= 0x100000u;
          while (1)
          {
            v133 = 0;
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

            v55 |= (v133 & 0x7F) << v53;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v10 = v54++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_258;
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

LABEL_258:
          v130 = 168;
          goto LABEL_320;
        case 0x12u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 184) |= 0x20000u;
          while (1)
          {
            v133 = 0;
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

            v30 |= (v133 & 0x7F) << v28;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v10 = v29++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_238;
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

LABEL_238:
          v130 = 144;
          goto LABEL_320;
        case 0x13u:
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 184) |= 0x80000u;
          while (1)
          {
            v133 = 0;
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

            v96 |= (v133 & 0x7F) << v94;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v10 = v95++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_295;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v96;
          }

LABEL_295:
          v130 = 160;
          goto LABEL_320;
        case 0x14u:
          v99 = 0;
          v100 = 0;
          v101 = 0;
          *(a1 + 184) |= 0x40000u;
          while (1)
          {
            v133 = 0;
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

            v101 |= (v133 & 0x7F) << v99;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v99 += 7;
            v10 = v100++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_299;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v101;
          }

LABEL_299:
          v130 = 152;
          goto LABEL_320;
        case 0x15u:
          v120 = 0;
          v121 = 0;
          v122 = 0;
          *(a1 + 184) |= 2u;
          while (1)
          {
            v133 = 0;
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

            v122 |= (v133 & 0x7F) << v120;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v120 += 7;
            v10 = v121++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_315;
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

LABEL_315:
          v130 = 16;
          goto LABEL_320;
        case 0x16u:
          v115 = 0;
          v116 = 0;
          v117 = 0;
          *(a1 + 184) |= 0x400u;
          while (1)
          {
            v133 = 0;
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

            v117 |= (v133 & 0x7F) << v115;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v115 += 7;
            v10 = v116++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_311;
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

LABEL_311:
          v130 = 88;
          goto LABEL_320;
        case 0x17u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 184) |= 0x10u;
          while (1)
          {
            v133 = 0;
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

            v20 |= (v133 & 0x7F) << v18;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_230;
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

LABEL_230:
          v130 = 40;
          goto LABEL_320;
        case 0x18u:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 184) |= 0x20u;
          while (1)
          {
            v133 = 0;
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

            v60 |= (v133 & 0x7F) << v58;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v10 = v59++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_262;
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

LABEL_262:
          v130 = 48;
          goto LABEL_320;
        case 0x19u:
          v125 = 0;
          v126 = 0;
          v127 = 0;
          *(a1 + 184) |= 0x40u;
          while (1)
          {
            v133 = 0;
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

            v127 |= (v133 & 0x7F) << v125;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v125 += 7;
            v10 = v126++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_319;
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

LABEL_319:
          v130 = 56;
          goto LABEL_320;
        case 0x1Au:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 184) |= 0x80u;
          while (1)
          {
            v133 = 0;
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

            v25 |= (v133 & 0x7F) << v23;
            if ((v133 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_234;
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

LABEL_234:
          v130 = 64;
          goto LABEL_320;
        case 0x1Bu:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 184) |= 1u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_321;
      }

      while (1)
      {
        v133 = 0;
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

        v50 |= (v133 & 0x7F) << v48;
        if ((v133 & 0x80) == 0)
        {
          break;
        }

        v48 += 7;
        v10 = v49++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_254;
        }
      }

      v17 = [a2 hasError] ? 0 : v50;
LABEL_254:
      v130 = 8;
LABEL_320:
      *(a1 + v130) = v17;
LABEL_321:
      v132 = [a2 position];
    }

    while (v132 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDWiFiNWActivityAssocReadFrom(uint64_t a1, void *a2)
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
      v166 = 0;
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

      v8 |= (v166 & 0x7F) << v6;
      if ((v166 & 0x80) == 0)
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
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x40uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v13;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v13 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__authSuccess;
          v20 = v14++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__authSuccess;
        goto LABEL_391;
      case 2u:
        v89 = 0;
        v90 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x20uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v89;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v89 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__authFailed;
          v20 = v90++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__authFailed;
        goto LABEL_391;
      case 3u:
        v73 = 0;
        v74 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x10uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v73;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v73 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocSuccess;
          v20 = v74++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocSuccess;
        goto LABEL_391;
      case 4u:
        v81 = 0;
        v82 = 0;
        v15 = 0;
        *(a1 + 156) |= 4uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v81;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v81 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocFailed;
          v20 = v82++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocFailed;
        goto LABEL_391;
      case 5u:
        v53 = 0;
        v54 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x800000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v53;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v53 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__reassocSuccess;
          v20 = v54++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__reassocSuccess;
        goto LABEL_391;
      case 6u:
        v105 = 0;
        v106 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x400000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v105;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v105 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__reassocFailed;
          v20 = v106++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__reassocFailed;
        goto LABEL_391;
      case 7u:
        v117 = 0;
        v118 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x20000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v117;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v117 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__linkChanged;
          v20 = v118++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__linkChanged;
        goto LABEL_391;
      case 8u:
        v85 = 0;
        v86 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x10000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v85;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v85 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamSuccess;
          v20 = v86++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamSuccess;
        goto LABEL_391;
      case 9u:
        v129 = 0;
        v130 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x1000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v129;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v129 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamFailed;
          v20 = v130++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamFailed;
        goto LABEL_391;
      case 0xAu:
        v61 = 0;
        v62 = 0;
        v15 = 0;
        *(a1 + 156) |= 2uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v61;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v61 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocDoneSuccess;
          v20 = v62++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocDoneSuccess;
        goto LABEL_391;
      case 0xBu:
        v125 = 0;
        v126 = 0;
        v15 = 0;
        *(a1 + 156) |= 1uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v125;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v125 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocDoneFailed;
          v20 = v126++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocDoneFailed;
        goto LABEL_391;
      case 0xCu:
        v49 = 0;
        v50 = 0;
        v15 = 0;
        *(a1 + 156) |= 8uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v49;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v49 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocReady;
          v20 = v50++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__assocReady;
        goto LABEL_391;
      case 0xDu:
        v57 = 0;
        v58 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x800000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v57;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v57 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__ssidChanged;
          v20 = v58++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__ssidChanged;
        goto LABEL_391;
      case 0xEu:
        v113 = 0;
        v114 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x100uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v113;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v113 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__bssidChanged;
          v20 = v114++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__bssidChanged;
        goto LABEL_391;
      case 0xFu:
        v41 = 0;
        v42 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x800uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v41;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v41 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__deauthReceived;
          v20 = v42++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__deauthReceived;
        goto LABEL_391;
      case 0x10u:
        v77 = 0;
        v78 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x2000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v77;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v77 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__disassocReceived;
          v20 = v78++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__disassocReceived;
        goto LABEL_391;
      case 0x11u:
        v37 = 0;
        v38 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x1000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v37;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v37 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__decryptError;
          v20 = v38++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__decryptError;
        goto LABEL_391;
      case 0x12u:
        v97 = 0;
        v98 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x80000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v97;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v97 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__pruned;
          v20 = v98++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__pruned;
        goto LABEL_391;
      case 0x13u:
        v121 = 0;
        v122 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x1000000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v121;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v121 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__supplicant;
          v20 = v122++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__supplicant;
        goto LABEL_391;
      case 0x14u:
        v145 = 0;
        v146 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x40000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v145;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v145 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__macAddrChanged;
          v20 = v146++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__macAddrChanged;
        goto LABEL_391;
      case 0x15u:
        v101 = 0;
        v102 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x20000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v101;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v101 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__rssiChanged;
          v20 = v102++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__rssiChanged;
        goto LABEL_391;
      case 0x16u:
        v109 = 0;
        v110 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x10000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v109;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v109 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__homeChanQualChanged;
          v20 = v110++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__homeChanQualChanged;
        goto LABEL_391;
      case 0x17u:
        v141 = 0;
        v142 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x200uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v141;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v141 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__chanSwitchEvent;
          v20 = v142++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__chanSwitchEvent;
        goto LABEL_391;
      case 0x18u:
        v149 = 0;
        v150 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x2000000uLL;
        while (1)
        {
          v166 = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v166 & 0x7F) << v149;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v149 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamPrep;
          v20 = v150++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamPrep;
        goto LABEL_391;
      case 0x19u:
        v69 = 0;
        v70 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x8000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v69;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v69 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamScanStart;
          v20 = v70++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamScanStart;
        goto LABEL_391;
      case 0x1Au:
        v65 = 0;
        v66 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x4000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v65;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v65 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamScanEnd;
          v20 = v66++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__roamScanEnd;
        goto LABEL_391;
      case 0x1Bu:
        v161 = 0;
        v162 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x100000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v161;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v161 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__scanResults;
          v20 = v162++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__scanResults;
        goto LABEL_391;
      case 0x1Cu:
        v29 = 0;
        v30 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x200000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v29;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v29 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__scanSummary;
          v20 = v30++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__scanSummary;
        goto LABEL_391;
      case 0x1Du:
        v153 = 0;
        v154 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x40000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v153;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v153 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__scanDone;
          v20 = v154++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__scanDone;
        goto LABEL_391;
      case 0x1Eu:
        v157 = 0;
        v158 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x80000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v157;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v157 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__scanInternalDone;
          v20 = v158++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__scanInternalDone;
        goto LABEL_391;
      case 0x1Fu:
        v133 = 0;
        v134 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x80uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v133;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v133 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__bssDisallowEvent;
          v20 = v134++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__bssDisallowEvent;
        goto LABEL_391;
      case 0x20u:
        v93 = 0;
        v94 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x400000000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v93;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v93 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__slowWiFiSymptom;
          v20 = v94++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__slowWiFiSymptom;
        goto LABEL_391;
      case 0x21u:
        v137 = 0;
        v138 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x4000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v137;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v137 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__dpsSymptom;
          v20 = v138++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__dpsSymptom;
        goto LABEL_391;
      case 0x22u:
        v45 = 0;
        v46 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x400uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v45;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v45 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__crashTracerTrig;
          v20 = v46++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__crashTracerTrig;
        goto LABEL_391;
      case 0x23u:
        v33 = 0;
        v34 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x100000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v33;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v33 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__rc1Stats;
          v20 = v34++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__rc1Stats;
        goto LABEL_391;
      case 0x24u:
        v21 = 0;
        v22 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x200000uLL;
        while (1)
        {
          v166 = 0;
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

          v15 |= (v166 & 0x7F) << v21;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v18 = 0;
          v21 += 7;
          v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__rc2Stats;
          v20 = v22++ > 8;
          if (v20)
          {
            goto LABEL_394;
          }
        }

        v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__rc2Stats;
        goto LABEL_391;
      case 0x25u:
        v25 = 0;
        v26 = 0;
        v15 = 0;
        *(a1 + 156) |= 0x8000uLL;
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
      v166 = 0;
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

      v15 |= (v166 & 0x7F) << v25;
      if ((v166 & 0x80) == 0)
      {
        break;
      }

      v18 = 0;
      v25 += 7;
      v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__escoTrafficInd;
      v20 = v26++ > 8;
      if (v20)
      {
        goto LABEL_394;
      }
    }

    v19 = &OBJC_IVAR___AWDWiFiNWActivityAssoc__escoTrafficInd;
LABEL_391:
    if ([a2 hasError])
    {
      v18 = 0;
    }

    else
    {
      v18 = v15;
    }

LABEL_394:
    *(a1 + *v19) = v18;
  }

  return [a2 hasError] ^ 1;
}