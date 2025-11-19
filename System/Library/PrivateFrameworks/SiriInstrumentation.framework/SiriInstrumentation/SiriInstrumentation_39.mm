uint64_t POMMESSchemaPOMMESResourceDownloadFailedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 setErrorCode:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t POMMESSchemaPOMMESResourceDownloadStartedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 setResourceType:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t POMMESSchemaPOMMESSearchRequestClassifierExecutedReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
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

        v23 |= (v30 & 0x7F) << v21;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_45;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_45:
      [a1 setIsPegasusSearchPerformed:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v31 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v31 & 0x7F) << v14;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
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

LABEL_43:
      [a1 setMitigationResponseDecision:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t POMMESSchemaPOMMESServiceClassifierScoreReportedReadFrom(void *a1, void *a2)
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
      v26 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v26 & 0x7F) << v6;
      if ((v26 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v25 = 0.0;
      v21 = [a2 position] + 8;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
      {
        v24 = [a2 data];
        [v24 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setScore:v25];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v27 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27 & 0x7F) << v14;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_37;
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

LABEL_37:
      [a1 setClassifierLabel:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t POMMESSchemaPOMMESSiriPegasusMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v66[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v66[0] & 0x7F) << v5;
        if ((v66[0] & 0x80) == 0)
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
            v56 = 0;
            v57 = 0;
            v58 = 0;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v66[0] & 0x7F) << v56;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                v62 = 0;
                goto LABEL_105;
              }
            }

            if ([a2 hasError])
            {
              v62 = 0;
            }

            else
            {
              v62 = v58;
            }

LABEL_105:
            [a1 setMovieRestriction:v62];
            goto LABEL_116;
          }

          if (v13 == 4)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v66[0] & 0x7F) << v28;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v34 = 0;
                goto LABEL_113;
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

LABEL_113:
            [a1 setTvRestriction:v34];
            goto LABEL_116;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v66[0] & 0x7F) << v42;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v48 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v48 = 0;
            }

            else
            {
              v48 = v44;
            }

LABEL_99:
            [a1 setInteractionType:v48];
            goto LABEL_116;
          }

          if (v13 == 2)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v66[0] & 0x7F) << v14;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_107;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_107:
            [a1 setIsCarplay:v20];
            goto LABEL_116;
          }
        }

        goto LABEL_94;
      }

      if (v13 <= 6)
      {
        break;
      }

      if (v13 != 8)
      {
        if (v13 == 7)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            LOBYTE(v66[0]) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v66[0] & 0x7F) << v35;
            if ((v66[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v41 = 0;
              goto LABEL_115;
            }
          }

          v41 = (v37 != 0) & ~[a2 hasError];
LABEL_115:
          [a1 setIsWebContentDisabled:v41];
          goto LABEL_116;
        }

LABEL_94:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_116;
      }

      v63 = objc_alloc_init(POMMESSchemaPOMMESDeviceState);
      v66[0] = 0;
      v66[1] = 0;
      if (!PBReaderPlaceMark() || !POMMESSchemaPOMMESDeviceStateReadFrom(v63, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setDeviceState:v63];

LABEL_116:
      v64 = [a2 position];
      if (v64 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 5)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      while (1)
      {
        LOBYTE(v66[0]) = 0;
        v52 = [a2 position] + 1;
        if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v51 |= (v66[0] & 0x7F) << v49;
        if ((v66[0] & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v11 = v50++ >= 9;
        if (v11)
        {
          v55 = 0;
          goto LABEL_101;
        }
      }

      v55 = (v51 != 0) & ~[a2 hasError];
LABEL_101:
      [a1 setIsInRestrictedSharingMode:v55];
      goto LABEL_116;
    }

    if (v13 == 6)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        LOBYTE(v66[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v66[0] & 0x7F) << v21;
        if ((v66[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_109;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_109:
      [a1 setIsExplicitContentAllowed:v27];
      goto LABEL_116;
    }

    goto LABEL_94;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRClientEventReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 10)
      {
        if (v13 == 11)
        {
          v14 = objc_alloc_init(PRSiriSchemaPRResponseGenerationRequestContext);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PRSiriSchemaPRResponseGenerationRequestContextReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setRgRequestContext:v14];
          goto LABEL_36;
        }

        if (v13 == 12)
        {
          v14 = objc_alloc_init(PRSiriSchemaPRJointResolverCallContext);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PRSiriSchemaPRJointResolverCallContextReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setJrCallContext:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(PRSiriSchemaPRClientEventMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PRSiriSchemaPRClientEventMetadataReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setEventMetadata:v14];
          goto LABEL_36;
        }

        if (v13 == 10)
        {
          v14 = objc_alloc_init(PRSiriSchemaPRRequestContext);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PRSiriSchemaPRRequestContextReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setRequestContext:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRClientEventMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

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
          v28 = objc_alloc_init(SISchemaUUID);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
          {
LABEL_64:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setIfRequestId:v28];
          goto LABEL_50;
        }

        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v31) = 0;
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

            v23 |= (v31 & 0x7F) << v21;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_60;
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

LABEL_60:
          [a1 setPostingSpanId:v27];
          goto LABEL_61;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setPgId:v28];
            goto LABEL_50;
          case 5:
            v28 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setPrId:v28];
LABEL_50:

            goto LABEL_61;
          case 4:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v31 & 0x7F) << v14;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
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
              v20 = v16;
            }

LABEL_56:
            [a1 setSpanId:v20];
            goto LABEL_61;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRJointResolverCallContextReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
            v14 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
LABEL_59:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setPlanEventId:v14];
            goto LABEL_50;
          case 6:
            v14 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setTraceId:v14];
            goto LABEL_50;
          case 5:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_56;
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

LABEL_56:
            [a1 setActionStatementId:v21];
            goto LABEL_51;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(PRSiriSchemaPRJointResolverCallStarted);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PRSiriSchemaPRJointResolverCallStartedReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setStartedOrChanged:v14];
            goto LABEL_50;
          case 2:
            v14 = objc_alloc_init(PRSiriSchemaPRJointResolverCallEnded);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PRSiriSchemaPRJointResolverCallEndedReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setEnded:v14];
            goto LABEL_50;
          case 3:
            v14 = objc_alloc_init(PRSiriSchemaPRJointResolverCallFailed);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PRSiriSchemaPRJointResolverCallFailedReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setFailed:v14];
LABEL_50:

            goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRJointResolverCallEndedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRJointResolverCallFailedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRJointResolverCallStartedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 setCallType:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRRequestContextReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
          v21 = objc_alloc_init(PRSiriSchemaPRRequestStarted);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PRSiriSchemaPRRequestStartedReadFrom(v21, a2))
          {
LABEL_54:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v21];
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(PRSiriSchemaPRRequestEnded);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PRSiriSchemaPRRequestEndedReadFrom(v21, a2))
          {
            goto LABEL_54;
          }

          PBReaderRecallMark();
          [a1 setEnded:v21];
          goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(PRSiriSchemaPRRequestFailed);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PRSiriSchemaPRRequestFailedReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            PBReaderRecallMark();
            [a1 setFailed:v21];
            goto LABEL_44;
          case 4:
            v21 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            PBReaderRecallMark();
            [a1 setPlanEventId:v21];
LABEL_44:

            goto LABEL_51;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v24) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v24 & 0x7F) << v14;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_50;
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

LABEL_50:
            [a1 setActionStatementId:v20];
            goto LABEL_51;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRRequestEndedReadFrom(void *a1, void *a2)
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
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

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

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(SISchemaUUID);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setTranscriptEventId:v20];
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        [a1 setEventName:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRRequestFailedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 setReason:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRRequestStartedReadFrom(void *a1, void *a2)
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

      if (v13 != 4)
      {
        if (v13 == 3)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
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
              v27 = 0;
              goto LABEL_61;
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

LABEL_61:
          [a1 setStatementId:v27];
          goto LABEL_66;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_66;
      }

      v35 = objc_alloc_init(SISchemaUUID);
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v35, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setPlanCycleId:v35];

LABEL_66:
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
          goto LABEL_65;
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

LABEL_65:
      [a1 setOriginTaskStatementId:v34];
      goto LABEL_66;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
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
      [a1 setActionStatementId:v20];
      goto LABEL_66;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRResponseGenerationRequestContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(PRSiriSchemaPRResponseGenerationRequestFailed);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !PRSiriSchemaPRResponseGenerationRequestFailedReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setFailed:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(PRSiriSchemaPRResponseGenerationRequestStart);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !PRSiriSchemaPRResponseGenerationRequestStartReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(PRSiriSchemaPRResponseGenerationRequestEnded);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !PRSiriSchemaPRResponseGenerationRequestEndedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setEnded:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRResponseGenerationRequestEndedReadFrom(void *a1, void *a2)
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
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

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

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setTranscriptEventId:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRResponseGenerationRequestFailedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PRSiriSchemaPRResponseGenerationRequestStartReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
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

LABEL_33:
      [a1 addActionStatementId:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEAlarmReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
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

        v23 |= (v30 & 0x7F) << v21;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_45;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_45:
      [a1 setIsSiriResultUseful:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v31 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v31 & 0x7F) << v14;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
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

LABEL_43:
      [a1 setFollowUpType:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEAlarmSignalGeneratedReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(PSESchemaPSECommonSignal);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PSESchemaPSECommonSignalReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setCommonSignal:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PSESchemaPSEAlarm);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PSESchemaPSEAlarmReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setAlarmSignal:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEAppIntentInteractionEngagementReadFrom(void *a1, void *a2)
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
      v45 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v45 & 0x7F) << v6;
      if ((v45 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 2)
    {
      if (v14 == 1)
      {
        v43 = PBReaderReadString();
        [a1 setAppIntentName:v43];

        continue;
      }

      if (v14 == 2)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
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

          v24 |= (v47 & 0x7F) << v22;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_74;
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

LABEL_74:
        [a1 setFollowUpActionType:v28];
        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v46 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

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
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_66;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_66:
          [a1 setFollowUpEntityComparison:v35];
          continue;
        case 4:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v49 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v49 & 0x7F) << v36;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_68;
            }
          }

          v42 = (v38 != 0) & ~[a2 hasError];
LABEL_68:
          [a1 setIsSiriResultUseful:v42];
          continue;
        case 5:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v48 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v48 & 0x7F) << v15;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_70;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_70:
          [a1 setIsFirstPartyApp:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEAppIntentSignalGeneratedReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(PSESchemaPSECommonSignal);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PSESchemaPSECommonSignalReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setCommonSignal:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PSESchemaPSEAppIntentInteractionEngagement);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PSESchemaPSEAppIntentInteractionEngagementReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEngagementSignal:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSECallReadFrom(void *a1, void *a2)
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
      LOBYTE(v59) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v59) & 0x7F) << v6;
      if ((LOBYTE(v59) & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 4)
    {
      if (v14 > 2)
      {
        if (v14 == 3)
        {
          v59 = 0.0;
          v40 = [a2 position] + 8;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 8, v41 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v59 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setTimeToEstablishInSeconds:v59];
          continue;
        }

        if (v14 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (LOBYTE(v59) & 0x7F) << v24;
            if ((LOBYTE(v59) & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v12 = v25++ >= 9;
            if (v12)
            {
              v30 = 0;
              goto LABEL_88;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_88:
          [a1 setRecentCallStatus:v30];
          continue;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v59 = 0.0;
          v38 = [a2 position] + 8;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 8, v39 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v59 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setCallDurationInSeconds:v59];
          continue;
        }

        if (v14 == 2)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (LOBYTE(v59) & 0x7F) << v17;
            if ((LOBYTE(v59) & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v12 = v18++ >= 9;
            if (v12)
            {
              v23 = 0;
              goto LABEL_84;
            }
          }

          v23 = (v19 != 0) & ~[a2 hasError];
LABEL_84:
          [a1 setHasUserInitiatedFollowup:v23];
          continue;
        }
      }
    }

    else if (v14 <= 6)
    {
      if (v14 == 5)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          LOBYTE(v59) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (LOBYTE(v59) & 0x7F) << v44;
          if ((LOBYTE(v59) & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v50 = 0;
        }

        else
        {
          v50 = v46;
        }

LABEL_96:
        [a1 setDisconnectedReason:v50];
        continue;
      }

      if (v14 == 6)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          LOBYTE(v59) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (LOBYTE(v59) & 0x7F) << v31;
          if ((LOBYTE(v59) & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_92;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_92:
        [a1 setContactMatch:v37];
        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 7:
          v59 = 0.0;
          v42 = [a2 position] + 8;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v59 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setContactFullNamePhoneticScore:v59];
          continue;
        case 8:
          v59 = 0.0;
          v51 = [a2 position] + 8;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v59 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setContactFirstNamePhoneticScore:v59];
          continue;
        case 9:
          v59 = 0.0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v59 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setContactLastNamePhoneticScore:v59];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSECallSignalGeneratedReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(PSESchemaPSECommonSignal);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PSESchemaPSECommonSignalReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setCommonSignal:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PSESchemaPSECall);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PSESchemaPSECallReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setCallSignal:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEClientEventReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 103)
      {
        if (v13 > 101)
        {
          if (v13 == 102)
          {
            v14 = objc_alloc_init(PSESchemaPSECallSignalGenerated);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PSESchemaPSECallSignalGeneratedReadFrom(v14, a2))
            {
LABEL_63:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setCallSignalGenerated:v14];
            goto LABEL_56;
          }

          if (v13 == 103)
          {
            v14 = objc_alloc_init(PSESchemaPSEMessageSignalGenerated);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PSESchemaPSEMessageSignalGeneratedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setMessageSignalGenerated:v14];
            goto LABEL_56;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(PSESchemaPSEClientEventMetadata);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PSESchemaPSEClientEventMetadataReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setEventMetadata:v14];
            goto LABEL_56;
          }

          if (v13 == 101)
          {
            v14 = objc_alloc_init(PSESchemaPSEGenericSignalGenerated);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PSESchemaPSEGenericSignalGeneratedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setGenericSignalGenerated:v14];
            goto LABEL_56;
          }
        }
      }

      else if (v13 <= 105)
      {
        if (v13 == 104)
        {
          v14 = objc_alloc_init(PSESchemaPSEMediaSignalGenerated);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PSESchemaPSEMediaSignalGeneratedReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setMediaSignalGenerated:v14];
          goto LABEL_56;
        }

        if (v13 == 105)
        {
          v14 = objc_alloc_init(PSESchemaPSEHomeFollowupSignalGenerated);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PSESchemaPSEHomeFollowupSignalGeneratedReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setHomeFollowupSignalGenerated:v14];
          goto LABEL_56;
        }
      }

      else
      {
        switch(v13)
        {
          case 'j':
            v14 = objc_alloc_init(PSESchemaPSEMapsSignalGenerated);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PSESchemaPSEMapsSignalGeneratedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setMapsSignalGenerated:v14];
            goto LABEL_56;
          case 'k':
            v14 = objc_alloc_init(PSESchemaPSEAlarmSignalGenerated);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PSESchemaPSEAlarmSignalGeneratedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setAlarmSignalGenerated:v14];
            goto LABEL_56;
          case 'l':
            v14 = objc_alloc_init(PSESchemaPSEAppIntentSignalGenerated);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PSESchemaPSEAppIntentSignalGeneratedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setAppIntentSignalGenerated:v14];
LABEL_56:

            goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEClientEventMetadataReadFrom(void *a1, void *a2)
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
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

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
            v28 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
LABEL_68:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTaskId:v28];
            goto LABEL_56;
          case 5:
            v28 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setPseId:v28];
            goto LABEL_56;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
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

              v23 |= (v31 & 0x7F) << v21;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_64;
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

LABEL_64:
            [a1 setTriggerOrigin:v27];
            goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setUiSessionId:v28];
            goto LABEL_56;
          case 2:
            v28 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setOriginalLastRequestId:v28];
LABEL_56:

            goto LABEL_65;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v31 & 0x7F) << v14;
              if ((v31 & 0x80) == 0)
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
            [a1 setSiriEngagementTaskSuccess:v20];
            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSECommonSignalReadFrom(void *a1, void *a2)
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
      LOBYTE(v51) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v51) & 0x7F) << v6;
      if ((LOBYTE(v51) & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) > 4)
    {
      if (v14 > 6)
      {
        if (v14 == 7)
        {
          v51 = 0.0;
          v46 = [a2 position] + 8;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setAppLaunchTimeInSecondsSince2001:v51];
          continue;
        }

        if (v14 == 8)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            LOBYTE(v51) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (LOBYTE(v51) & 0x7F) << v30;
            if ((LOBYTE(v51) & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v12 = v31++ >= 9;
            if (v12)
            {
              v36 = 0;
              goto LABEL_89;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

LABEL_89:
          [a1 setAppLaunchReason:v36];
          continue;
        }
      }

      else
      {
        if (v14 == 5)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          while (1)
          {
            LOBYTE(v51) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (LOBYTE(v51) & 0x7F) << v39;
            if ((LOBYTE(v51) & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v12 = v40++ >= 9;
            if (v12)
            {
              v45 = 0;
              goto LABEL_77;
            }
          }

          v45 = (v41 != 0) & ~[a2 hasError];
LABEL_77:
          [a1 setHasUserInitiatedFollowup:v45];
          continue;
        }

        if (v14 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v51) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (LOBYTE(v51) & 0x7F) << v16;
            if ((LOBYTE(v51) & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v12 = v17++ >= 9;
            if (v12)
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
            v22 = v18;
          }

LABEL_81:
          [a1 setAppFollowup:v22];
          continue;
        }
      }
    }

    else if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = PBReaderReadString();
        [a1 setAction:v15];
        goto LABEL_70;
      }

      if (v14 == 4)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (LOBYTE(v51) & 0x7F) << v23;
          if ((LOBYTE(v51) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_85;
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

LABEL_85:
        [a1 setIsDonatedBySiri:v29];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v51 = 0.0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v49 = [a2 data];
          [v49 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setEventDonationTimeInSecondsSince2001:v51];
        continue;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setDomain:v15];
LABEL_70:

        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEGenericSignalGeneratedReadFrom(void *a1, void *a2)
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
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

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

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PSESchemaPSECommonSignal);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !PSESchemaPSECommonSignalReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCommonSignal:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEHomeFollowUpReadFrom(void *a1, void *a2)
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
      v59 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v59 & 0x7F) << v6;
      if ((v59 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 3)
    {
      switch(v14)
      {
        case 1:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v61 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v61 & 0x7F) << v30;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v12 = v31++ >= 9;
            if (v12)
            {
              v36 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

LABEL_87:
          [a1 setFollowUpType:v36];
          continue;
        case 2:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          while (1)
          {
            v60 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v60 & 0x7F) << v52;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v12 = v53++ >= 9;
            if (v12)
            {
              v58 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v58 = 0;
          }

          else
          {
            v58 = v54;
          }

LABEL_105:
          [a1 setFollowUpSource:v58];
          continue;
        case 3:
          v22 = PBReaderReadString();
          [a1 setFollowUpAccessoryType:v22];

          continue;
      }
    }

    else if (v14 > 5)
    {
      if (v14 == 6)
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (1)
        {
          v64 = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v64 & 0x7F) << v45;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_93;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v47;
        }

LABEL_93:
        [a1 setFollowUpHourOfDay:v51];
        continue;
      }

      if (v14 == 7)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v63 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v63 & 0x7F) << v23;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_101;
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

LABEL_101:
        [a1 setFollowUpDurationSinceSiriRequestInSeconds:v29];
        continue;
      }
    }

    else
    {
      if (v14 == 4)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          v62 = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v62 & 0x7F) << v38;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v44 = 0;
            goto LABEL_89;
          }
        }

        v44 = (v40 != 0) & ~[a2 hasError];
LABEL_89:
        [a1 setIsFollowUpInSameContainerAsSiriRequest:v44];
        continue;
      }

      if (v14 == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v65 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v65 & 0x7F) << v15;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_97;
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

LABEL_97:
        [a1 setFollowUpDayOfWeek:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEHomeFollowupSignalGeneratedReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(PSESchemaPSECommonSignal);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PSESchemaPSECommonSignalReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setCommonSignal:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PSESchemaPSEHomeFollowUp);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PSESchemaPSEHomeFollowUpReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setHomeFollowUpSignal:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEMapsReadFrom(void *a1, void *a2)
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
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

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
        v20 = objc_alloc_init(PSESchemaPSEMapsUserFollowup);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !PSESchemaPSEMapsUserFollowupReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setFollowup:v20];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        [a1 setIsSiriResultUseful:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEMapsSignalGeneratedReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(PSESchemaPSECommonSignal);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PSESchemaPSECommonSignalReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setCommonSignal:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PSESchemaPSEMaps);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PSESchemaPSEMapsReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setMapsSignal:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEMapsUserFollowupReadFrom(void *a1, void *a2)
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
      v31 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v31 & 0x7F) << v6;
      if ((v31 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v33 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v33 & 0x7F) << v23;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v12 = v24++ >= 9;
        if (v12)
        {
          v29 = 0;
          goto LABEL_45;
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

LABEL_45:
      [a1 setFollowupType:v29];
    }

    else if (v14 == 3)
    {
      v22 = PBReaderReadString();
      [a1 setMapsActionType:v22];
    }

    else if (v14 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v32 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v32 & 0x7F) << v15;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_49;
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

LABEL_49:
      [a1 setMapsAction:v21];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEMediaReadFrom(void *a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v27[0]) & 0x7F) << v5;
        if ((LOBYTE(v27[0]) & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v27[0] = 0.0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setPlayDurationInSeconds:v27[0]];
      }

      else if (v13 == 3)
      {
        v21 = objc_alloc_init(PSESchemaPSEMediaUserFollowupAction);
        v27[0] = 0.0;
        v27[1] = 0.0;
        if (!PBReaderPlaceMark() || !PSESchemaPSEMediaUserFollowupActionReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLastMediaUserFollowupAction:v21];
      }

      else if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (LOBYTE(v27[0]) & 0x7F) << v14;
          if ((LOBYTE(v27[0]) & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        [a1 setMediaContentDurationBucket:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEMediaEntitySimilarityReadFrom(void *a1, void *a2)
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
      v44 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v44 & 0x7F) << v6;
      if ((v44 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v46 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v46 & 0x7F) << v37;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v43 = 0;
            goto LABEL_68;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_68:
        [a1 setIsSameMediaAlbum:v43];
        continue;
      }

      if (v14 == 4)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v45 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v45 & 0x7F) << v22;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_64;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_64:
        [a1 setIsSameMediaItem:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v48 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v48 & 0x7F) << v30;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_66;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_66:
        [a1 setIsSameMediaTitle:v36];
        continue;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v47 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v47 & 0x7F) << v15;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_62;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_62:
        [a1 setIsSameMediaArtist:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEMediaSignalGeneratedReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(PSESchemaPSECommonSignal);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PSESchemaPSECommonSignalReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setCommonSignal:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PSESchemaPSEMedia);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PSESchemaPSEMediaReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setMediaSignal:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEMediaUserFollowupActionReadFrom(void *a1, void *a2)
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
        LOBYTE(v66[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v66[0] & 0x7F) << v5;
        if ((v66[0] & 0x80) == 0)
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
            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v66[0] & 0x7F) << v50;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v56 = 0;
                goto LABEL_101;
              }
            }

            v56 = (v52 != 0) & ~[a2 hasError];
LABEL_101:
            [a1 setIsSameAppUsed:v56];
            goto LABEL_116;
          }

          if (v13 == 4)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v66[0] & 0x7F) << v28;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v34 = 0;
                goto LABEL_113;
              }
            }

            v34 = (v30 != 0) & ~[a2 hasError];
LABEL_113:
            [a1 setIsFirstPartyAppUsedForFollowup:v34];
            goto LABEL_116;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v66[0] & 0x7F) << v42;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v48 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v48 = 0;
            }

            else
            {
              v48 = v44;
            }

LABEL_99:
            [a1 setState:v48];
            goto LABEL_116;
          }

          if (v13 == 2)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v66[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v66[0] & 0x7F) << v14;
              if ((v66[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
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
              v20 = v16;
            }

LABEL_109:
            [a1 setMediaContentDurationBucket:v20];
            goto LABEL_116;
          }
        }

        goto LABEL_94;
      }

      if (v13 > 6)
      {
        break;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v66[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v66[0] & 0x7F) << v21;
            if ((v66[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_111;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_111:
          [a1 setIsAirPlay:v27];
          goto LABEL_116;
        }

        goto LABEL_94;
      }

      v49 = objc_alloc_init(PSESchemaPSEMediaEntitySimilarity);
      v66[0] = 0;
      v66[1] = 0;
      if (!PBReaderPlaceMark() || !PSESchemaPSEMediaEntitySimilarityReadFrom(v49, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setMediaEntitySimilarity:v49];

LABEL_116:
      v64 = [a2 position];
      if (v64 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 7)
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      while (1)
      {
        LOBYTE(v66[0]) = 0;
        v60 = [a2 position] + 1;
        if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
        {
          v62 = [a2 data];
          [v62 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v59 |= (v66[0] & 0x7F) << v57;
        if ((v66[0] & 0x80) == 0)
        {
          break;
        }

        v57 += 7;
        v11 = v58++ >= 9;
        if (v11)
        {
          v63 = 0;
          goto LABEL_105;
        }
      }

      if ([a2 hasError])
      {
        v63 = 0;
      }

      else
      {
        v63 = v59;
      }

LABEL_105:
      [a1 setMediaType:v63];
      goto LABEL_116;
    }

    if (v13 == 8)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      while (1)
      {
        LOBYTE(v66[0]) = 0;
        v38 = [a2 position] + 1;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
        {
          v40 = [a2 data];
          [v40 getBytes:v66 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v37 |= (v66[0] & 0x7F) << v35;
        if ((v66[0] & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v11 = v36++ >= 9;
        if (v11)
        {
          v41 = 0;
          goto LABEL_115;
        }
      }

      v41 = (v37 != 0) & ~[a2 hasError];
LABEL_115:
      [a1 setIsSubscriber:v41];
      goto LABEL_116;
    }

LABEL_94:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_116;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEMessageReadFrom(void *a1, void *a2)
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
      LOBYTE(v49) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v49) & 0x7F) << v6;
      if ((LOBYTE(v49) & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 3)
    {
      switch(v14)
      {
        case 1:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            LOBYTE(v49) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (LOBYTE(v49) & 0x7F) << v26;
            if ((LOBYTE(v49) & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v12 = v27++ >= 9;
            if (v12)
            {
              v32 = 0;
              goto LABEL_69;
            }
          }

          v32 = (v28 != 0) & ~[a2 hasError];
LABEL_69:
          [a1 setHasUserInitiatedFollowup:v32];
          continue;
        case 2:
          v49 = 0.0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v49 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setUserFollowupEventDonationTimeInSecondsSince2001:v49];
          continue;
        case 3:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v49) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (LOBYTE(v49) & 0x7F) << v17;
            if ((LOBYTE(v49) & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v12 = v18++ >= 9;
            if (v12)
            {
              v23 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_77:
          [a1 setMessageUserFollowupAction:v23];
          continue;
      }
    }

    else if (v14 > 5)
    {
      if (v14 == 6)
      {
        v49 = 0.0;
        v41 = [a2 position] + 8;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
        {
          v45 = [a2 data];
          [v45 getBytes:&v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setContactFirstNamePhoneticScore:v49];
        continue;
      }

      if (v14 == 7)
      {
        v49 = 0.0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v47 = [a2 data];
          [v47 getBytes:&v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setContactLastNamePhoneticScore:v49];
        continue;
      }
    }

    else
    {
      if (v14 == 4)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          LOBYTE(v49) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (LOBYTE(v49) & 0x7F) << v34;
          if ((LOBYTE(v49) & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v40 = 0;
            goto LABEL_73;
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

LABEL_73:
        [a1 setContactMatch:v40];
        continue;
      }

      if (v14 == 5)
      {
        v49 = 0.0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v46 = [a2 data];
          [v46 getBytes:&v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setContactFullNamePhoneticScore:v49];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSESchemaPSEMessageSignalGeneratedReadFrom(void *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(PSESchemaPSECommonSignal);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PSESchemaPSECommonSignalReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setCommonSignal:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PSESchemaPSEMessage);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PSESchemaPSEMessageReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setMessageSignal:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDAppPreLaunchTriggeredReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
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

        v23 |= (v31 & 0x7F) << v21;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_43;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_43:
      [a1 setIsPredictionCorrect:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v30 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

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
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_41;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_41:
      [a1 setIsPreLaunchExecuted:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDClientEventReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 102)
      {
        if (v13 > 100)
        {
          if (v13 == 101)
          {
            v14 = objc_alloc_init(QDSchemaQDEntitiesCollected);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !QDSchemaQDEntitiesCollectedReadFrom(v14, a2))
            {
LABEL_63:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setEntitiesCollected:v14];
            goto LABEL_56;
          }

          if (v13 == 102)
          {
            v14 = objc_alloc_init(QDSchemaQDTuplesGenerated);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !QDSchemaQDTuplesGeneratedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setTuplesGenerated:v14];
            goto LABEL_56;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(QDSchemaQDClientEventMetadata);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !QDSchemaQDClientEventMetadataReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setEventMetadata:v14];
            goto LABEL_56;
          }

          if (v13 == 100)
          {
            v14 = objc_alloc_init(QDSchemaQDCollectionContext);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !QDSchemaQDCollectionContextReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setCollectionContext:v14];
            goto LABEL_56;
          }
        }
      }

      else if (v13 <= 104)
      {
        if (v13 == 103)
        {
          v14 = objc_alloc_init(QDSchemaQDEntitiesRanked);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !QDSchemaQDEntitiesRankedReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setEntitiesRanked:v14];
          goto LABEL_56;
        }

        if (v13 == 104)
        {
          v14 = objc_alloc_init(QDSchemaQDSubComponentContext);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !QDSchemaQDSubComponentContextReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setSubComponentContext:v14];
          goto LABEL_56;
        }
      }

      else
      {
        switch(v13)
        {
          case 'i':
            v14 = objc_alloc_init(QDSchemaQDContextStatementIdsReported);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !QDSchemaQDContextStatementIdsReportedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setContextStatementIdsReported:v14];
            goto LABEL_56;
          case 'j':
            v14 = objc_alloc_init(QDSchemaQDAppPreLaunchTriggered);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !QDSchemaQDAppPreLaunchTriggeredReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setAppPreLaunchTriggered:v14];
            goto LABEL_56;
          case 'k':
            v14 = objc_alloc_init(QDSchemaQDToolboxSizeReported);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !QDSchemaQDToolboxSizeReportedReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setToolboxSizeReported:v14];
LABEL_56:

            goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDClientEventMetadataReadFrom(void *a1, void *a2)
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
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

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

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SISchemaUUID);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setQdId:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDCollectionCompletedReadFrom(void *a1, void *a2)
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
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDCollectionContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(QDSchemaQDCollectionFailed);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !QDSchemaQDCollectionFailedReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setFailed:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(QDSchemaQDCollectionStarted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !QDSchemaQDCollectionStartedReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(QDSchemaQDCollectionCompleted);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !QDSchemaQDCollectionCompletedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setEnded:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDCollectionFailedReadFrom(void *a1, void *a2)
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
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setErrorDomain:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_35;
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

LABEL_35:
      [a1 setErrorCode:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDCollectionStartedReadFrom(void *a1, void *a2)
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
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
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

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
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

        v23 |= (v30 & 0x7F) << v21;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_45;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_45:
      [a1 setExists:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v31 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v31 & 0x7F) << v14;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_43;
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

LABEL_43:
      [a1 addCallers:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDContextStatementIdsReportedReadFrom(void *a1, void *a2)
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
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

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

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(SISchemaUUID);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addContextStatementIds:v20];
        }
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
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
          v19 = v15;
        }

LABEL_38:
        [a1 addContextualEntityStatementIds:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDEntitiesCollectedReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addRetrievedTools:v14];
          }

          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addSpanMatchedEntities:v14];
          }

          goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addUtteranceContext:v14];
            }

            goto LABEL_43;
          case 4:
            v14 = objc_alloc_init(QDSchemaQDRetrievedContextStatement);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !QDSchemaQDRetrievedContextStatementReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addRequiredContext:v14];
            }

            goto LABEL_43;
          case 5:
            v14 = objc_alloc_init(QDSchemaQDRetrievedContextStatement);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !QDSchemaQDRetrievedContextStatementReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addContext:v14];
            }

LABEL_43:

            goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDEntitiesRankedReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(QDSchemaQDRetrievedContextStatement);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !QDSchemaQDRetrievedContextStatementReadFrom(v14, a2))
        {
LABEL_37:

          return 0;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addUtteranceContext:v14];
        }

        goto LABEL_32;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(QDSchemaQDRetrievedTool);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !QDSchemaQDRetrievedToolReadFrom(v14, a2))
        {
          goto LABEL_37;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addRetrievedTools:v14];
        }

LABEL_32:

        goto LABEL_34;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(QDSchemaQDSpanMatchedEntity);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !QDSchemaQDSpanMatchedEntityReadFrom(v14, a2))
    {
      goto LABEL_37;
    }

    PBReaderRecallMark();
    if (v14)
    {
      [a1 addSpanMatchedEntities:v14];
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDEntityMatchReadFrom(void *a1, void *a2)
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
      v50 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v50 & 0x7F) << v6;
      if ((v50 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) > 3)
    {
      switch(v14)
      {
        case 6:
          v36 = PBReaderReadString();
          [a1 setOriginAppBundleId:v36];

          continue;
        case 5:
          v49 = 0;
          v45 = [a2 position] + 4;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 4, v46 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v49 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v47) = v49;
          [a1 setMatchScore:v47];
          continue;
        case 4:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v53 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v53 & 0x7F) << v22;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_78;
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

LABEL_78:
          [a1 setMatcher:v28];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v52 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v52 & 0x7F) << v29;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_70;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_70:
          [a1 setStartIndex:v35];
          continue;
        case 2:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          while (1)
          {
            v51 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

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
            v12 = v39++ >= 9;
            if (v12)
            {
              v44 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v40;
          }

LABEL_82:
          [a1 setEndIndex:v44];
          continue;
        case 3:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v54 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v54 & 0x7F) << v15;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
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
            v21 = v17;
          }

LABEL_74:
          [a1 addMatchingTransforms:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDEntityTypeReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      [a1 setNameOfTypedValue:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setBundleId:v14];
LABEL_22:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t QDSchemaQDRetrievedContextStatementReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(QDSchemaQDEntityType);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !QDSchemaQDEntityTypeReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setValueType:v21];
LABEL_35:

        goto LABEL_42;
      }

      if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_41;
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

LABEL_41:
        [a1 setContextType:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(SISchemaUUID);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
    {
LABEL_45:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setSessionScopedUniqueId:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDRetrievedToolReadFrom(void *a1, void *a2)
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
            v28 = objc_alloc_init(SISchemaUUID);
            v35 = 0;
            v36 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
LABEL_73:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setSessionScopedUniqueId:v28];
            goto LABEL_59;
          case 2:
            v28 = PBReaderReadString();
            [a1 setToolId:v28];
LABEL_59:

            goto LABEL_70;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v35) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

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
              v11 = v22++ >= 9;
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
              v27 = v23;
            }

LABEL_67:
            [a1 setSubType:v27];
            goto LABEL_70;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v28 = objc_alloc_init(QDSchemaQDToolSource);
          v35 = 0;
          v36 = 0;
          if (!PBReaderPlaceMark() || !QDSchemaQDToolSourceReadFrom(v28, a2))
          {
            goto LABEL_73;
          }

          PBReaderRecallMark();
          [a1 setToolSource:v28];
          goto LABEL_59;
        }

        if (v13 == 7)
        {
          v28 = objc_alloc_init(QDSchemaQDToolDefinition);
          v35 = 0;
          v36 = 0;
          if (!PBReaderPlaceMark() || !QDSchemaQDToolDefinitionReadFrom(v28, a2))
          {
            goto LABEL_73;
          }

          PBReaderRecallMark();
          [a1 setToolDefinition:v28];
          goto LABEL_59;
        }
      }

      else
      {
        if (v13 == 4)
        {
          LODWORD(v35) = 0;
          v29 = [a2 position] + 4;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v35 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v31) = v35;
          [a1 setSimilarityScore:v31];
          goto LABEL_70;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v35) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v35 & 0x7F) << v14;
            if ((v35 & 0x80) == 0)
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
          [a1 setSelectionCriteria:v20];
          goto LABEL_70;
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

uint64_t QDSchemaQDSpanMatchedEntityReadFrom(void *a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
          v14 = objc_alloc_init(QDSchemaQDEntityMatch);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !QDSchemaQDEntityMatchReadFrom(v14, a2))
          {
LABEL_51:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addMatches:v14];
          }

          goto LABEL_43;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_47;
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

LABEL_47:
          [a1 setDataProtectionClass:v21];
          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setSessionScopedUniqueId:v14];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(QDSchemaQDEntityType);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !QDSchemaQDEntityTypeReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setValueType:v14];
LABEL_43:

          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t QDSchemaQDSubComponentContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(QDSchemaQDSubComponentFailed);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !QDSchemaQDSubComponentFailedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setTraceId:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(QDSchemaQDSubComponentStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !QDSchemaQDSubComponentStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(QDSchemaQDSubComponentEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !QDSchemaQDSubComponentEndedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
LABEL_36:

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}