uint64_t _SFPBIndexedUserActivityCommandReadFrom(void *a1, void *a2)
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
      [a1 setApplicationBundleIdentifier:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setUserActivityRequiredString:v14];
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

uint64_t _SFPBRunVoiceShortcutCommandReadFrom(void *a1, void *a2)
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
      [a1 setApplicationBundleIdentifier:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setVoiceShortcutIdentifier:v14];
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

uint64_t _SFPBLaunchAppCommandReadFrom(void *a1, void *a2)
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
      [a1 setApplicationBundleIdentifier:v21];
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
          goto LABEL_33;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_33:
      [a1 setIsOnenessApplication:v20];
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

uint64_t _SFPBUserReportRequestReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = PBReaderReadString();
            [a1 setDismissText:v14];
            goto LABEL_51;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(_SFPBPunchout);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
LABEL_62:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addUserReportOptions:v14];
            }

            goto LABEL_51;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            [a1 setAffordanceText:v14];
            goto LABEL_51;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            [a1 setTitle:v14];
            goto LABEL_51;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
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
              goto LABEL_59;
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

LABEL_59:
          [a1 setReportType:v21];
          goto LABEL_52;
        }

        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          [a1 setReportOptionsSectionTitle:v14];
          goto LABEL_51;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            [a1 setDisclaimerText:v14];
            goto LABEL_51;
          case 8:
            v14 = objc_alloc_init(_SFPBPunchout);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
              goto LABEL_62;
            }

            PBReaderRecallMark();
            [a1 setDisclaimerLearnMorePunchout:v14];
            goto LABEL_51;
          case 9:
            v14 = PBReaderReadString();
            [a1 setAttachmentSectionTitle:v14];
LABEL_51:

            goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRequestUserReportCommandReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBUserReportRequest);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBUserReportRequestReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setUserReportRequest:v13];
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

uint64_t _SFPBRequestAppClipInstallCommandReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_SFPBURL);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setUrl:v13];
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    [a1 setApplicationBundleIdentifier:v13];
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBOpenWebClipCommandReadFrom(void *a1, void *a2)
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
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setClipIdentifier:v14];
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

uint64_t _SFPBOpenAppClipCommandReadFrom(void *a1, void *a2)
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
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setClipIdentifier:v14];
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

uint64_t _SFPBOpenFileProviderItemCommandReadFrom(void *a1, void *a2)
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
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
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
      v22 = PBReaderReadString();
      [a1 setCoreSpotlightIdentifier:v22];
      goto LABEL_32;
    }

    if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setFileProviderIdentifier:v22];
LABEL_32:

      continue;
    }

    if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v25 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v25 & 0x7F) << v15;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_36;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_36:
      [a1 setShouldRevealFile:v21];
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

uint64_t _SFPBOpenPunchoutCommandReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBPunchout);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPunchout:v13];
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

uint64_t _SFPBShowAppStoreSheetCommandReadFrom(void *a1, void *a2)
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
      [a1 setApplicationBundleIdentifier:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setStoreIdentifier:v14];
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

uint64_t _SFPBNamedProtobufMessageReadFrom(void *a1, void *a2)
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
      [a1 setProtobufMessageName:v14];
      goto LABEL_22;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      [a1 setProtobufMessageData:v14];
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

uint64_t _SFPBButtonItemAppearanceReadFrom(void *a1, void *a2)
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
              v35 = 0;
              goto LABEL_67;
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

LABEL_67:
          [a1 setRenderingMode:v35];
          goto LABEL_78;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
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
              goto LABEL_73;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_73:
          [a1 setPreferNoFallbackImage:v20];
          goto LABEL_78;
        }

        goto LABEL_62;
      }

      v28 = objc_alloc_init(_SFPBColor);
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setTintColor:v28];

LABEL_78:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v39 = [a2 position] + 1;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v38 |= (v45[0] & 0x7F) << v36;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v11 = v37++ >= 9;
        if (v11)
        {
          v42 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v38;
      }

LABEL_71:
      [a1 setStyle:v42];
      goto LABEL_78;
    }

    if (v13 == 2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
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
      [a1 setRole:v27];
      goto LABEL_78;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_78;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBStoreButtonItemReadFrom(void *a1, void *a2)
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
      v38 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v38 & 0x7F) << v6;
      if ((v38 & 0x80) == 0)
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
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          v39 = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

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
          v12 = v32++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_62;
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

LABEL_62:
        [a1 setIdentifierType:v37];
        continue;
      }

      if (v14 == 100)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v41 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v41 & 0x7F) << v22;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_58;
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

LABEL_58:
        [a1 setUniqueId:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v30 = PBReaderReadString();
        [a1 setIdentifier:v30];

        continue;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v40 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v40 & 0x7F) << v15;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_54;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_54:
        [a1 setShouldOpenAppAfterInstallCompletes:v21];
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

uint64_t _SFPBToggleButtonConfigurationReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBImage);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
          {
LABEL_36:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setUntoggledImage:v14];
          goto LABEL_32;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_SFPBImage);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
          {
            goto LABEL_36;
          }

          PBReaderRecallMark();
          [a1 setToggledImage:v14];
          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setUntoggledTitle:v14];
          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setToggledTitle:v14];
LABEL_32:

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBPlayAudioButtonItemReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBAudioData);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBAudioDataReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setAudioData:v14];
          goto LABEL_42;
        }

        if (v13 == 100)
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
              goto LABEL_46;
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

LABEL_46:
          [a1 setUniqueId:v21];
          goto LABEL_47;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBMediaMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBMediaMetadataReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setMediaMetadata:v14];
          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBToggleButtonConfiguration);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBToggleButtonConfigurationReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setToggleButtonConfiguration:v14];
LABEL_42:

          goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBPlayWatchListItemButtonItemReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBImage);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setImage:v14];
          goto LABEL_40;
        }

        if (v13 == 100)
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
              goto LABEL_44;
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

LABEL_44:
          [a1 setUniqueId:v21];
          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBWatchListItem);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBWatchListItemReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setWatchListItem:v14];
          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setTitle:v14];
LABEL_40:

          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBSportsFollowButtonItemReadFrom(void *a1, void *a2)
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
          v14 = PBReaderReadString();
          [a1 setFallbackTitle:v14];
LABEL_40:

          goto LABEL_45;
        }

        if (v13 == 100)
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
              goto LABEL_44;
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

LABEL_44:
          [a1 setUniqueId:v21];
          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBSportsItem);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBSportsItemReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setSportsItem:v14];
          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBToggleButtonConfiguration);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBToggleButtonConfigurationReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setToggleButtonConfiguration:v14];
          goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBWatchListButtonItemReadFrom(void *a1, void *a2)
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

      if (v13 == 2)
      {
        v21 = objc_alloc_init(_SFPBToggleButtonConfiguration);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_SFPBToggleButtonConfigurationReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setToggleButtonConfiguration:v21];
LABEL_35:

        goto LABEL_42;
      }

      if (v13 == 100)
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
        [a1 setUniqueId:v20];
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

    v21 = objc_alloc_init(_SFPBWatchListItem);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_SFPBWatchListItemReadFrom(v21, a2))
    {
LABEL_45:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setWatchListItem:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBCoreSpotlightButtonItemReadFrom(void *a1, void *a2)
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
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
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
        v15 = PBReaderReadString();
        [a1 setCoreSpotlightIdentifier:v15];
        goto LABEL_38;
      }

      if (v14 == 100)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v25 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v25 & 0x7F) << v16;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_42;
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

LABEL_42:
        [a1 setUniqueId:v22];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addActionItemTypes:v15];
        }

        goto LABEL_38;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setApplicationBundleIdentifier:v15];
LABEL_38:

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

uint64_t _SFPBContactButtonItemReadFrom(void *a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31[0] & 0x7F) << v22;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_54;
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

LABEL_54:
          [a1 addActionTypesToShow:v28];
          goto LABEL_55;
        }

        if (v13 == 100)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31[0] & 0x7F) << v15;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_50;
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

LABEL_50:
          [a1 setUniqueId:v21];
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setContactIdentifier:v14];
LABEL_37:

          goto LABEL_55;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBPerson);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !_SFPBPersonReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setPerson:v14];
          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBCommandButtonItemReadFrom(void *a1, void *a2)
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
            v14 = objc_alloc_init(_SFPBButtonItem);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
            {
LABEL_65:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPreviewButtonItems:v14];
            }

            goto LABEL_46;
          case 7:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v31 & 0x7F) << v22;
              if ((v31 & 0x80) == 0)
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

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_61:
            [a1 setIsDestructive:v28];
            goto LABEL_62;
          case 0x64:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v31 & 0x7F) << v15;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_59;
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

LABEL_59:
            [a1 setUniqueId:v21];
            goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBImage);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setImage:v14];
            goto LABEL_46;
          case 2:
            v14 = PBReaderReadString();
            [a1 setTitle:v14];
LABEL_46:

            goto LABEL_62;
          case 3:
            v14 = objc_alloc_init(_SFPBCommand);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_SFPBCommandReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setCommand:v14];
            goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBCommandReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v16) = 0;
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

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(_SFPBShowContactCardCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBShowContactCardCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setShowContactCardCommand:v14];
        goto LABEL_200;
      case 2u:
        v14 = objc_alloc_init(_SFPBShowSFCardCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBShowSFCardCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setShowSFCardCommand:v14];
        goto LABEL_200;
      case 3u:
        v14 = objc_alloc_init(_SFPBShowAppStoreSheetCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBShowAppStoreSheetCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setShowAppStoreSheetCommand:v14];
        goto LABEL_200;
      case 4u:
        v14 = objc_alloc_init(_SFPBOpenPunchoutCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBOpenPunchoutCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setOpenPunchoutCommand:v14];
        goto LABEL_200;
      case 5u:
        v14 = objc_alloc_init(_SFPBOpenFileProviderItemCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBOpenFileProviderItemCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setOpenFileProviderItemCommand:v14];
        goto LABEL_200;
      case 6u:
        v14 = objc_alloc_init(_SFPBOpenAppClipCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBOpenAppClipCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setOpenAppClipCommand:v14];
        goto LABEL_200;
      case 7u:
        v14 = objc_alloc_init(_SFPBOpenWebClipCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBOpenWebClipCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setOpenWebClipCommand:v14];
        goto LABEL_200;
      case 8u:
        v14 = objc_alloc_init(_SFPBRequestAppClipInstallCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRequestAppClipInstallCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setRequestAppClipInstallCommand:v14];
        goto LABEL_200;
      case 9u:
        v14 = objc_alloc_init(_SFPBRequestUserReportCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRequestUserReportCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setRequestUserReportCommand:v14];
        goto LABEL_200;
      case 0xAu:
        v14 = objc_alloc_init(_SFPBLaunchAppCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBLaunchAppCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setLaunchAppCommand:v14];
        goto LABEL_200;
      case 0xBu:
        v14 = objc_alloc_init(_SFPBRunVoiceShortcutCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRunVoiceShortcutCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setRunVoiceShortcutCommand:v14];
        goto LABEL_200;
      case 0xCu:
        v14 = objc_alloc_init(_SFPBIndexedUserActivityCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBIndexedUserActivityCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setIndexedUserActivityCommand:v14];
        goto LABEL_200;
      case 0xDu:
        v14 = objc_alloc_init(_SFPBOpenCoreSpotlightItemCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBOpenCoreSpotlightItemCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setOpenCoreSpotlightItemCommand:v14];
        goto LABEL_200;
      case 0xEu:
        v14 = objc_alloc_init(_SFPBPerformIntentCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPerformIntentCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setPerformIntentCommand:v14];
        goto LABEL_200;
      case 0xFu:
        v14 = objc_alloc_init(_SFPBSearchInAppCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBSearchInAppCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setSearchInAppCommand:v14];
        goto LABEL_200;
      case 0x10u:
        v14 = objc_alloc_init(_SFPBUpdateSearchQueryCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBUpdateSearchQueryCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setUpdateSearchQueryCommand:v14];
        goto LABEL_200;
      case 0x11u:
        v14 = objc_alloc_init(_SFPBSearchWebCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBSearchWebCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setSearchWebCommand:v14];
        goto LABEL_200;
      case 0x12u:
        v14 = objc_alloc_init(_SFPBInvokeSiriCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBInvokeSiriCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setInvokeSiriCommand:v14];
        goto LABEL_200;
      case 0x13u:
        v14 = objc_alloc_init(_SFPBPerformContactQueryCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPerformContactQueryCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setPerformContactQueryCommand:v14];
        goto LABEL_200;
      case 0x14u:
        v14 = objc_alloc_init(_SFPBOpenCalculationCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBOpenCalculationCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setOpenCalculationCommand:v14];
        goto LABEL_200;
      case 0x15u:
        v14 = objc_alloc_init(_SFPBPlayVideoCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPlayVideoCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setPlayVideoCommand:v14];
        goto LABEL_200;
      case 0x16u:
        v14 = objc_alloc_init(_SFPBCallCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCallCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setCallCommand:v14];
        goto LABEL_200;
      case 0x17u:
        v14 = objc_alloc_init(_SFPBEmailCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBEmailCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setEmailCommand:v14];
        goto LABEL_200;
      case 0x18u:
        v14 = objc_alloc_init(_SFPBBeginMapsRoutingCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBBeginMapsRoutingCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setBeginMapsRoutingCommand:v14];
        goto LABEL_200;
      case 0x19u:
        v14 = objc_alloc_init(_SFPBToggleAudioCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBToggleAudioCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setToggleAudioCommand:v14];
        goto LABEL_200;
      case 0x1Au:
        v14 = objc_alloc_init(_SFPBPerformPersonEntityQueryCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPerformPersonEntityQueryCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setPerformPersonEntityQueryCommand:v14];
        goto LABEL_200;
      case 0x1Bu:
        v14 = objc_alloc_init(_SFPBShowPurchaseRequestSheetCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBShowPurchaseRequestSheetCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setShowPurchaseRequestSheetCommand:v14];
        goto LABEL_200;
      case 0x1Cu:
        v14 = objc_alloc_init(_SFPBShowScreenTimeRequestSheetCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBShowScreenTimeRequestSheetCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setShowScreenTimeRequestSheetCommand:v14];
        goto LABEL_200;
      case 0x1Du:
        v14 = objc_alloc_init(_SFPBPerformEntityQueryCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPerformEntityQueryCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setPerformEntityQueryCommand:v14];
        goto LABEL_200;
      case 0x1Eu:
        v14 = objc_alloc_init(_SFPBShareCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBShareCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setShareCommand:v14];
        goto LABEL_200;
      case 0x1Fu:
        v14 = objc_alloc_init(_SFPBCopyCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCopyCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setCopyCommand:v14];
        goto LABEL_200;
      case 0x20u:
        v14 = objc_alloc_init(_SFPBToggleWatchListStatusCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBToggleWatchListStatusCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setToggleWatchListStatusCommand:v14];
        goto LABEL_200;
      case 0x21u:
        v14 = objc_alloc_init(_SFPBShowPhotosOneUpViewCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBShowPhotosOneUpViewCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setShowPhotosOneUpViewCommand:v14];
        goto LABEL_200;
      case 0x22u:
        v14 = objc_alloc_init(_SFPBPlayMediaCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPlayMediaCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setPlayMediaCommand:v14];
        goto LABEL_200;
      case 0x23u:
        v14 = objc_alloc_init(_SFPBOpenMediaCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBOpenMediaCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setOpenMediaCommand:v14];
        goto LABEL_200;
      case 0x24u:
        v14 = objc_alloc_init(_SFPBAddToPhotosLibraryCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBAddToPhotosLibraryCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setAddToPhotosLibraryCommand:v14];
        goto LABEL_200;
      case 0x25u:
        v14 = objc_alloc_init(_SFPBPerformContactActionCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPerformContactActionCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setPerformContactActionCommand:v14];
        goto LABEL_200;
      case 0x26u:
        v14 = objc_alloc_init(_SFPBExpandInlineCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBExpandInlineCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setExpandInlineCommand:v14];
        goto LABEL_200;
      case 0x27u:
        v14 = objc_alloc_init(_SFPBSubscribeForUpdatesCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBSubscribeForUpdatesCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setSubscribeForUpdatesCommand:v14];
        goto LABEL_200;
      case 0x28u:
        v14 = objc_alloc_init(_SFPBViewEmailCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBViewEmailCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setViewEmailCommand:v14];
        goto LABEL_200;
      case 0x29u:
        v14 = objc_alloc_init(_SFPBRejectPeopleInPhotoCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRejectPeopleInPhotoCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setRejectPeopleInPhotoCommand:v14];
        goto LABEL_200;
      case 0x2Au:
        v14 = objc_alloc_init(_SFPBShowWrapperResponseViewCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBShowWrapperResponseViewCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setShowWrapperResponseViewCommand:v14];
        goto LABEL_200;
      case 0x2Bu:
        v14 = objc_alloc_init(_SFPBClearProactiveCategoryCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBClearProactiveCategoryCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setClearProactiveCategoryCommand:v14];
        goto LABEL_200;
      case 0x2Cu:
        v14 = objc_alloc_init(_SFPBCreateContactCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCreateContactCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setCreateContactCommand:v14];
        goto LABEL_200;
      case 0x2Du:
        v14 = objc_alloc_init(_SFPBCreateCalendarEventCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCreateCalendarEventCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setCreateCalendarEventCommand:v14];
        goto LABEL_200;
      case 0x2Eu:
        v14 = objc_alloc_init(_SFPBCreateReminderCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCreateReminderCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setCreateReminderCommand:v14];
        goto LABEL_200;
      case 0x2Fu:
        v14 = objc_alloc_init(_SFPBManageReservationCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBManageReservationCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setManageReservationCommand:v14];
        goto LABEL_200;
      case 0x30u:
        v14 = objc_alloc_init(_SFPBUpdateSportsFollowingStatusCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBUpdateSportsFollowingStatusCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setUpdateSportsFollowingStatusCommand:v14];
        goto LABEL_200;
      case 0x31u:
        v14 = objc_alloc_init(_SFPBRequestProductPageCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRequestProductPageCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setRequestProductPageCommand:v14];
        goto LABEL_200;
      case 0x32u:
        v14 = objc_alloc_init(_SFPBFlightCheckinCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFlightCheckinCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setFlightCheckinCommand:v14];
        goto LABEL_200;
      case 0x33u:
        v14 = objc_alloc_init(_SFPBExecuteToolCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBExecuteToolCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setExecuteToolCommand:v14];
        goto LABEL_200;
      case 0x34u:
        v14 = objc_alloc_init(_SFPBExecuteMenuItemCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBExecuteMenuItemCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setExecuteMenuItemCommand:v14];
        goto LABEL_200;
      case 0x35u:
        v14 = objc_alloc_init(_SFPBFillToolParameterCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFillToolParameterCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setFillToolParameterCommand:v14];
        goto LABEL_200;
      case 0x36u:
        v14 = objc_alloc_init(_SFPBFillToolAppParameterCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFillToolAppParameterCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setFillToolAppParameterCommand:v14];
        goto LABEL_200;
      case 0x37u:
        v14 = objc_alloc_init(_SFPBFillToolFileParameterCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFillToolFileParameterCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setFillToolFileParameterCommand:v14];
        goto LABEL_200;
      case 0x38u:
        v14 = objc_alloc_init(_SFPBFillToolAppEntityParameterCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFillToolAppEntityParameterCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setFillToolAppEntityParameterCommand:v14];
        goto LABEL_200;
      case 0x39u:
        v14 = objc_alloc_init(_SFPBFillToolPersonParameterCommand);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFillToolPersonParameterCommandReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setFillToolPersonParameterCommand:v14];
        goto LABEL_200;
      case 0x64u:
        v14 = PBReaderReadString();
        [a1 setCommandDetail:v14];
        goto LABEL_200;
      case 0x65u:
        v14 = objc_alloc_init(_SFPBTopic);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBTopicReadFrom(v14, a2))
        {
          goto LABEL_204;
        }

        PBReaderRecallMark();
        [a1 setNormalizedTopic:v14];
        goto LABEL_200;
      case 0x66u:
        v14 = PBReaderReadData();
        [a1 setBackendData:v14];
        goto LABEL_200;
      case 0x67u:
        v14 = objc_alloc_init(_SFPBCommandReference);
        v16 = 0;
        v17 = 0;
        if (PBReaderPlaceMark() && _SFPBCommandReferenceReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setCommandReference:v14];
LABEL_200:

LABEL_201:
          v4 = a2;
          continue;
        }

LABEL_204:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_201;
    }
  }
}

uint64_t _SFPBButtonItemReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(_SFPBCommandButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBCommandButtonItemReadFrom(v14, a2))
            {
LABEL_81:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setCommandButtonItem:v14];
            goto LABEL_70;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(_SFPBContactButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBContactButtonItemReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setContactButtonItem:v14];
            goto LABEL_70;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(_SFPBCoreSpotlightButtonItem);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_SFPBCoreSpotlightButtonItemReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setCoreSpotlightButtonItem:v14];
              goto LABEL_70;
            case 4:
              v14 = objc_alloc_init(_SFPBWatchListButtonItem);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_SFPBWatchListButtonItemReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setWatchListButtonItem:v14];
              goto LABEL_70;
            case 5:
              v14 = objc_alloc_init(_SFPBAppAutoShortcutsButtonItem);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_SFPBAppAutoShortcutsButtonItemReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setAppActionsButtonItem:v14];
              goto LABEL_70;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = objc_alloc_init(_SFPBStoreButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBStoreButtonItemReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setStoreButtonItem:v14];
            goto LABEL_70;
          case 0xA:
            v14 = objc_alloc_init(_SFPBButtonItemAppearance);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBButtonItemAppearanceReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setButtonAppearance:v14];
            goto LABEL_70;
          case 0x64:
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
                goto LABEL_78;
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

LABEL_78:
            [a1 setUniqueId:v21];
            goto LABEL_71;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(_SFPBSportsFollowButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBSportsFollowButtonItemReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setSportsFollowButtonItem:v14];
            goto LABEL_70;
          case 7:
            v14 = objc_alloc_init(_SFPBPlayWatchListItemButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPlayWatchListItemButtonItemReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setPlayWatchListItemButtonItem:v14];
            goto LABEL_70;
          case 8:
            v14 = objc_alloc_init(_SFPBPlayAudioButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPlayAudioButtonItemReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setPlayAudioButtonItem:v14];
LABEL_70:

            goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_71:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBShowContactCardCommandReadFrom(void *a1, void *a2)
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
      [a1 setContactIdentifier:v21];
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
          goto LABEL_33;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_33:
      [a1 setIsSuggestedContact:v20];
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

uint64_t _SFPBShowSFCardCommandReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBCard);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBCardReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCard:v13];
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

uint64_t _SFPBCardReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        [a1 setTitle:v13];
        goto LABEL_94;
      case 2u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v44 & 0x7F) << v35;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_112;
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

LABEL_112:
        [a1 setType:v41];
        goto LABEL_95;
      case 3u:
        v13 = objc_alloc_init(_SFPBCardSection);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCardSectionReadFrom(v13, a2))
        {
          goto LABEL_115;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addCardSections:v13];
        }

        goto LABEL_94;
      case 4u:
        v13 = PBReaderReadData();
        [a1 setIntentMessageData:v13];
        goto LABEL_94;
      case 5u:
        v13 = PBReaderReadString();
        [a1 setIntentMessageName:v13];
        goto LABEL_94;
      case 6u:
        v13 = PBReaderReadData();
        [a1 setIntentResponseMessageData:v13];
        goto LABEL_94;
      case 7u:
        v13 = PBReaderReadString();
        [a1 setIntentResponseMessageName:v13];
        goto LABEL_94;
      case 8u:
        v13 = objc_alloc_init(_SFPBAbstractCommand);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_SFPBAbstractCommandReadFrom(v13, a2))
        {
          goto LABEL_115;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addDismissalCommands:v13];
        }

        goto LABEL_94;
      case 9u:
        v13 = PBReaderReadString();
        [a1 setCardId:v13];
        goto LABEL_94;
      case 0xAu:
        v13 = PBReaderReadString();
        [a1 setContextReferenceIdentifier:v13];
        goto LABEL_94;
      case 0xBu:
        v13 = objc_alloc_init(_SFPBURL);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v13, a2))
        {
          goto LABEL_115;
        }

        PBReaderRecallMark();
        [a1 setUrlValue:v13];
        goto LABEL_94;
      case 0xCu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
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
            goto LABEL_108;
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

LABEL_108:
        [a1 setSource:v34];
        goto LABEL_95;
      case 0xDu:
        v13 = PBReaderReadData();
        [a1 setEntityIdentifier:v13];
        goto LABEL_94;
      case 0xEu:
        v13 = PBReaderReadString();
        [a1 setResultIdentifier:v13];
        goto LABEL_94;
      case 0xFu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v44 & 0x7F) << v21;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_104;
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

LABEL_104:
        [a1 setQueryId:v27];
        goto LABEL_95;
      case 0x10u:
        v13 = PBReaderReadString();
        [a1 setFbr:v13];
        goto LABEL_94;
      case 0x11u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

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
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_100;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_100:
        [a1 setFlexibleSectionOrder:v20];
        goto LABEL_95;
      case 0x12u:
        v13 = objc_alloc_init(_SFPBNamedProtobufMessage);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_SFPBNamedProtobufMessageReadFrom(v13, a2))
        {
          goto LABEL_115;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addEntityProtobufMessages:v13];
        }

        goto LABEL_94;
      case 0x13u:
        v13 = objc_alloc_init(_SFPBImage);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v13, a2))
        {
          goto LABEL_115;
        }

        PBReaderRecallMark();
        [a1 setTitleImage:v13];
        goto LABEL_94;
      case 0x14u:
        v13 = objc_alloc_init(_SFPBColor);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v13, a2))
        {
          goto LABEL_115;
        }

        PBReaderRecallMark();
        [a1 setBackgroundColor:v13];
        goto LABEL_94;
      case 0x15u:
        v13 = objc_alloc_init(_SFPBDrillDownMetadata);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDrillDownMetadataReadFrom(v13, a2))
        {
          goto LABEL_115;
        }

        PBReaderRecallMark();
        [a1 setMetadata:v13];
        goto LABEL_94;
      case 0x16u:
        v13 = objc_alloc_init(_SFPBDrillDownMetadata);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_SFPBDrillDownMetadataReadFrom(v13, a2))
        {
          goto LABEL_115;
        }

        PBReaderRecallMark();
        [a1 setDrilldownMetadata:v13];
        goto LABEL_94;
      case 0x17u:
        v13 = objc_alloc_init(_SFPBImage);
        v44 = 0;
        v45 = 0;
        if (PBReaderPlaceMark() && _SFPBImageReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setBackgroundImage:v13];
LABEL_94:

LABEL_95:
          v42 = [a2 position];
          if (v42 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_115:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_95;
    }
  }
}

uint64_t _SFPBCardSectionReadFrom(void *a1, void *a2)
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
      LOBYTE(v96) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v96 & 0x7F) << v6;
      if ((v96 & 0x80) == 0)
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
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v96 & 0x7F) << v14;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_219:
            [a1 setType:v20];
            goto LABEL_205;
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

        goto LABEL_219;
      case 2u:
        v21 = objc_alloc_init(_SFPBCardSectionValue);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCardSectionValueReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        [a1 setValue:v21];
        goto LABEL_204;
      case 3u:
        v21 = objc_alloc_init(_SFPBCard);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCardReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        [a1 setNextCard:v21];
        goto LABEL_204;
      case 4u:
        v21 = objc_alloc_init(_SFPBAbstractCommand);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBAbstractCommandReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addCommands:v21];
        }

        goto LABEL_204;
      case 5u:
        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addParameterKeyPaths:v21];
        }

        goto LABEL_204;
      case 6u:
        v21 = PBReaderReadString();
        [a1 setCardSectionId:v21];
        goto LABEL_204;
      case 7u:
        v21 = PBReaderReadString();
        [a1 setResultIdentifier:v21];
        goto LABEL_204;
      case 8u:
        v21 = objc_alloc_init(_SFPBUserReportRequest);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBUserReportRequestReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        [a1 setUserReportRequest:v21];
        goto LABEL_204;
      case 9u:
        v21 = objc_alloc_init(_SFPBCommand);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCommandReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        [a1 setCommand:v21];
        goto LABEL_204;
      case 0xAu:
        v21 = objc_alloc_init(_SFPBCommand);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCommandReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        [a1 setPreviewCommand:v21];
        goto LABEL_204;
      case 0xBu:
        v21 = objc_alloc_init(_SFPBButtonItem);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addPreviewButtonItems:v21];
        }

        goto LABEL_204;
      case 0xDu:
        v21 = PBReaderReadString();
        [a1 setCardSectionDetail:v21];
        goto LABEL_204;
      case 0xEu:
        v21 = PBReaderReadString();
        [a1 setPreviewButtonItemsTitle:v21];
        goto LABEL_204;
      case 0xFu:
        v21 = objc_alloc_init(_SFPBColor);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        [a1 setBackgroundColor:v21];
        goto LABEL_204;
      case 0x10u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v96 & 0x7F) << v69;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v75 = 0;
            goto LABEL_221;
          }
        }

        v75 = (v71 != 0) & ~[a2 hasError];
LABEL_221:
        [a1 setShouldHideInAmbientMode:v75];
        continue;
      case 0x11u:
        v21 = objc_alloc_init(_SFPBButtonItem);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addLeadingSwipeButtonItems:v21];
        }

        goto LABEL_204;
      case 0x12u:
        v21 = objc_alloc_init(_SFPBButtonItem);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addTrailingSwipeButtonItems:v21];
        }

        goto LABEL_204;
      case 0x13u:
        v21 = objc_alloc_init(_SFPBPunchout);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addPunchoutOptions:v21];
        }

        goto LABEL_204;
      case 0x14u:
        v21 = PBReaderReadString();
        [a1 setPunchoutPickerTitle:v21];
        goto LABEL_204;
      case 0x15u:
        v21 = PBReaderReadString();
        [a1 setPunchoutPickerDismissText:v21];
        goto LABEL_204;
      case 0x16u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v96 & 0x7F) << v76;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v82 = 0;
            goto LABEL_223;
          }
        }

        v82 = (v78 != 0) & ~[a2 hasError];
LABEL_223:
        [a1 setCanBeHidden:v82];
        continue;
      case 0x17u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v96 & 0x7F) << v22;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_184;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_184:
        [a1 setHasTopPadding:v28];
        continue;
      case 0x18u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v96 & 0x7F) << v48;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v54 = 0;
            goto LABEL_207;
          }
        }

        v54 = (v50 != 0) & ~[a2 hasError];
LABEL_207:
        [a1 setHasBottomPadding:v54];
        continue;
      case 0x19u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v96 & 0x7F) << v36;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_190;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v38;
        }

LABEL_190:
        [a1 setSeparatorStyle:v42];
        continue;
      case 0x1Au:
        v21 = objc_alloc_init(_SFPBCommand);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCommandReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addReferencedCommands:v21];
        }

        goto LABEL_204;
      case 0x1Bu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v96 & 0x7F) << v29;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_186;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_186:
        [a1 setForceEnable3DTouch:v35];
        continue;
      case 0x1Cu:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v96 & 0x7F) << v83;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v89 = 0;
            goto LABEL_225;
          }
        }

        v89 = (v85 != 0) & ~[a2 hasError];
LABEL_225:
        [a1 setShouldShowInSmartDialog:v89];
        continue;
      case 0x1Du:
        v21 = objc_alloc_init(_SFPBAppEntityAnnotation);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBAppEntityAnnotationReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        [a1 setAppEntityAnnotation:v21];
        goto LABEL_204;
      case 0x1Eu:
        v21 = PBReaderReadString();
        [a1 setEmphasisSubjectId:v21];
        goto LABEL_204;
      case 0x1Fu:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v96 & 0x7F) << v55;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            v61 = 0;
            goto LABEL_211;
          }
        }

        if ([a2 hasError])
        {
          v61 = 0;
        }

        else
        {
          v61 = v57;
        }

LABEL_211:
        [a1 setIncreasedContrastMode:v61];
        continue;
      case 0x20u:
        v21 = objc_alloc_init(_SFPBCommand);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCommandReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        [a1 setSecondaryCommand:v21];
        goto LABEL_204;
      case 0x21u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        while (1)
        {
          LOBYTE(v96) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v96 & 0x7F) << v62;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            v68 = 0;
            goto LABEL_215;
          }
        }

        if ([a2 hasError])
        {
          v68 = 0;
        }

        else
        {
          v68 = v64;
        }

LABEL_215:
        [a1 setRequiredLevelOfDetail:v68];
        continue;
      case 0x22u:
        v21 = PBReaderReadString();
        [a1 setRacFeedbackSubfeatureId:v21];
        goto LABEL_204;
      case 0x23u:
        v96 = 0;
        v97 = 0;
        PBReaderPlaceMark();
        v43 = 0;
        break;
      case 0x24u:
        v21 = objc_alloc_init(_SFPBCopyItem);
        v96 = 0;
        v97 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCopyItemReadFrom(v21, a2))
        {
          goto LABEL_229;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addCopyableItems:v21];
        }

        goto LABEL_204;
      case 0x25u:
        v21 = PBReaderReadString();
        [a1 setApplicationBundleIdentifier:v21];
        goto LABEL_204;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    while (1)
    {
      v98 = 0;
      v44 = [a2 position] + 1;
      if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
      {
        v46 = [a2 data];
        [v46 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      if ((v98 & 0x80000000) == 0)
      {
        break;
      }

      v47 = v43++ > 8;
      if (v47)
      {
        goto LABEL_192;
      }
    }

    [a2 hasError];
LABEL_192:
    v21 = PBReaderReadString();
    v90 = 0;
    while (1)
    {
      v98 = 0;
      v91 = [a2 position] + 1;
      if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
      {
        v93 = [a2 data];
        [v93 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      if ((v98 & 0x80000000) == 0)
      {
        break;
      }

      v47 = v90++ > 8;
      if (v47)
      {
        goto LABEL_202;
      }
    }

    [a2 hasError];
LABEL_202:
    v94 = PBReaderReadString();
    PBReaderRecallMark();
    if ([a2 hasError])
    {
      break;
    }

    [a1 setRacFeedbackLoggingContent:v94 forKey:v21];

LABEL_204:
LABEL_205:
    ;
  }

LABEL_229:
  return 0;
}

uint64_t _SFPBCardSectionValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
    switch((v12 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(_SFPBAppLinkCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBAppLinkCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setAppLinkCardSection:v14];
        goto LABEL_355;
      case 2u:
        v14 = objc_alloc_init(_SFPBDescriptionCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBDescriptionCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setDescriptionCardSection:v14];
        goto LABEL_355;
      case 3u:
        v14 = objc_alloc_init(_SFPBKeyValueDataCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBKeyValueDataCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setKeyValueDataCardSection:v14];
        goto LABEL_355;
      case 4u:
        v14 = objc_alloc_init(_SFPBMapCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBMapCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setMapCardSection:v14];
        goto LABEL_355;
      case 5u:
        v14 = objc_alloc_init(_SFPBMediaInfoCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBMediaInfoCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setMediaInfoCardSection:v14];
        goto LABEL_355;
      case 6u:
        v14 = objc_alloc_init(_SFPBMediaPlayerCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBMediaPlayerCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setMediaPlayerCardSection:v14];
        goto LABEL_355;
      case 7u:
        v14 = objc_alloc_init(_SFPBNowPlayingCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBNowPlayingCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setNowPlayingCardSection:v14];
        goto LABEL_355;
      case 8u:
        v14 = objc_alloc_init(_SFPBRichTitleCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRichTitleCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRichTitleCardSection:v14];
        goto LABEL_355;
      case 9u:
        v14 = objc_alloc_init(_SFPBRowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRowCardSection:v14];
        goto LABEL_355;
      case 0xAu:
        v14 = objc_alloc_init(_SFPBScoreboardCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBScoreboardCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setScoreboardCardSection:v14];
        goto LABEL_355;
      case 0xBu:
        v14 = objc_alloc_init(_SFPBSocialMediaPostCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBSocialMediaPostCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setSocialMediaPostCardSection:v14];
        goto LABEL_355;
      case 0xCu:
        v14 = objc_alloc_init(_SFPBStockChartCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBStockChartCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setStockChartCardSection:v14];
        goto LABEL_355;
      case 0xDu:
        v14 = objc_alloc_init(_SFPBTableHeaderRowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBTableHeaderRowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setTableHeaderRowCardSection:v14];
        goto LABEL_355;
      case 0xEu:
        v14 = objc_alloc_init(_SFPBTableRowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBTableRowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setTableRowCardSection:v14];
        goto LABEL_355;
      case 0xFu:
        v14 = objc_alloc_init(_SFPBTextColumnsCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBTextColumnsCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setTextColumnsCardSection:v14];
        goto LABEL_355;
      case 0x10u:
        v14 = objc_alloc_init(_SFPBTitleCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBTitleCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setTitleCardSection:v14];
        goto LABEL_355;
      case 0x11u:
        v14 = objc_alloc_init(_SFPBTrackListCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBTrackListCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setTrackListCardSection:v14];
        goto LABEL_355;
      case 0x12u:
        v14 = objc_alloc_init(_SFPBAudioPlaybackCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBAudioPlaybackCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setAudioPlaybackCardSection:v14];
        goto LABEL_355;
      case 0x13u:
        v14 = objc_alloc_init(_SFPBFlightCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBFlightCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setFlightCardSection:v14];
        goto LABEL_355;
      case 0x14u:
        v14 = objc_alloc_init(_SFPBActivityIndicatorCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBActivityIndicatorCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setActivityIndicatorCardSection:v14];
        goto LABEL_355;
      case 0x15u:
        v14 = objc_alloc_init(_SFPBWebCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBWebCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setWebCardSection:v14];
        goto LABEL_355;
      case 0x16u:
        v14 = objc_alloc_init(_SFPBMessageCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBMessageCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setMessageCardSection:v14];
        goto LABEL_355;
      case 0x17u:
        v14 = objc_alloc_init(_SFPBDetailedRowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBDetailedRowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setDetailedRowCardSection:v14];
        goto LABEL_355;
      case 0x18u:
        v14 = objc_alloc_init(_SFPBImagesCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBImagesCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setImagesCardSection:v14];
        goto LABEL_355;
      case 0x19u:
        v14 = objc_alloc_init(_SFPBSuggestionCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBSuggestionCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setSuggestionCardSection:v14];
        goto LABEL_355;
      case 0x1Au:
        v14 = objc_alloc_init(_SFPBSelectableGridCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBSelectableGridCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setSelectableGridCardSection:v14];
        goto LABEL_355;
      case 0x1Bu:
        v14 = objc_alloc_init(_SFPBSectionHeaderCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBSectionHeaderCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setSectionHeaderCardSection:v14];
        goto LABEL_355;
      case 0x1Cu:
        v14 = objc_alloc_init(_SFPBMetaInfoCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBMetaInfoCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setMetaInfoCardSection:v14];
        goto LABEL_355;
      case 0x1Du:
        v14 = objc_alloc_init(_SFPBWatchListCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBWatchListCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setWatchListCardSection:v14];
        goto LABEL_355;
      case 0x1Eu:
        v14 = objc_alloc_init(_SFPBMapsDetailedRowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBMapsDetailedRowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setMapsDetailedRowCardSection:v14];
        goto LABEL_355;
      case 0x1Fu:
        v14 = objc_alloc_init(_SFPBButtonCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBButtonCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setButtonCardSection:v14];
        goto LABEL_355;
      case 0x20u:
        v14 = objc_alloc_init(_SFPBHorizontalButtonCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBHorizontalButtonCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setHorizontalButtonCardSection:v14];
        goto LABEL_355;
      case 0x21u:
        v14 = objc_alloc_init(_SFPBVerticalLayoutCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBVerticalLayoutCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setVerticalLayoutCardSection:v14];
        goto LABEL_355;
      case 0x22u:
        v14 = objc_alloc_init(_SFPBProductCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBProductCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setProductCardSection:v14];
        goto LABEL_355;
      case 0x23u:
        v14 = objc_alloc_init(_SFPBHorizontalScrollCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBHorizontalScrollCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setHorizontalScrollCardSection:v14];
        goto LABEL_355;
      case 0x24u:
        v14 = objc_alloc_init(_SFPBMediaRemoteControlCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBMediaRemoteControlCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setMediaRemoteControlCardSection:v14];
        goto LABEL_355;
      case 0x25u:
        v14 = objc_alloc_init(_SFPBMapPlaceCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBMapPlaceCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setMapPlaceCardSection:v14];
        goto LABEL_355;
      case 0x26u:
        v14 = objc_alloc_init(_SFPBCompactRowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBCompactRowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setCompactRowCardSection:v14];
        goto LABEL_355;
      case 0x27u:
        v14 = objc_alloc_init(_SFPBWorldMapCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBWorldMapCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setWorldMapCardSection:v14];
        goto LABEL_355;
      case 0x28u:
        v14 = objc_alloc_init(_SFPBAttributionFooterCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBAttributionFooterCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setAttributionFooterCardSection:v14];
        goto LABEL_355;
      case 0x29u:
        v14 = objc_alloc_init(_SFPBGridCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBGridCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setGridCardSection:v14];
        goto LABEL_355;
      case 0x2Au:
        v14 = objc_alloc_init(_SFPBPersonHeaderCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBPersonHeaderCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setPersonHeaderCardSection:v14];
        goto LABEL_355;
      case 0x2Bu:
        v14 = objc_alloc_init(_SFPBColorBarCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBColorBarCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setColorBarCardSection:v14];
        goto LABEL_355;
      case 0x2Cu:
        v14 = objc_alloc_init(_SFPBSplitCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBSplitCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setSplitCardSection:v14];
        goto LABEL_355;
      case 0x2Du:
        v14 = objc_alloc_init(_SFPBLinkPresentationCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBLinkPresentationCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setLinkPresentationCardSection:v14];
        goto LABEL_355;
      case 0x2Eu:
        v14 = objc_alloc_init(_SFPBFindMyCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBFindMyCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setFindMyCardSection:v14];
        goto LABEL_355;
      case 0x2Fu:
        v14 = objc_alloc_init(_SFPBHeroCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBHeroCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setHeroCardSection:v14];
        goto LABEL_355;
      case 0x30u:
        v14 = objc_alloc_init(_SFPBNewsCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBNewsCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setNewsCardSection:v14];
        goto LABEL_355;
      case 0x31u:
        v14 = objc_alloc_init(_SFPBMiniCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBMiniCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setMiniCardSection:v14];
        goto LABEL_355;
      case 0x32u:
        v14 = objc_alloc_init(_SFPBInfoCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBInfoCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setInfoCardSection:v14];
        goto LABEL_355;
      case 0x33u:
        v14 = objc_alloc_init(_SFPBCollectionCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBCollectionCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setCollectionCardSection:v14];
        goto LABEL_355;
      case 0x34u:
        v14 = objc_alloc_init(_SFPBCombinedCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBCombinedCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setCombinedCardSection:v14];
        goto LABEL_355;
      case 0x35u:
        v14 = objc_alloc_init(_SFPBResponseWrapperCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBResponseWrapperCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setResponseWrapperCardSection:v14];
        goto LABEL_355;
      case 0x36u:
        v14 = objc_alloc_init(_SFPBListenToCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBListenToCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setListenToCardSection:v14];
        goto LABEL_355;
      case 0x37u:
        v14 = objc_alloc_init(_SFPBWatchNowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBWatchNowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setWatchNowCardSection:v14];
        goto LABEL_355;
      case 0x38u:
        v14 = objc_alloc_init(_SFPBStrokeAnimationCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBStrokeAnimationCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setStrokeAnimationCardSection:v14];
        goto LABEL_355;
      case 0x39u:
        v14 = objc_alloc_init(_SFPBButtonListCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBButtonListCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setButtonListCardSection:v14];
        goto LABEL_355;
      case 0x3Au:
        v14 = objc_alloc_init(_SFPBCommandRowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBCommandRowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setCommandRowCardSection:v14];
        goto LABEL_355;
      case 0x3Bu:
        v14 = objc_alloc_init(_SFPBLeadingTrailingCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBLeadingTrailingCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setLeadingTrailingCardSection:v14];
        goto LABEL_355;
      case 0x3Cu:
        v14 = objc_alloc_init(_SFPBHeroTitleCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBHeroTitleCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setHeroTitleCardSection:v14];
        goto LABEL_355;
      case 0x3Du:
        v14 = objc_alloc_init(_SFPBArchiveViewCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBArchiveViewCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setArchiveViewCardSection:v14];
        goto LABEL_355;
      case 0x3Eu:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Bu:
      case 0x5Cu:
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x64u:
      case 0x65u:
      case 0x66u:
      case 0x67u:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
      case 0x6Bu:
      case 0x6Cu:
      case 0x6Du:
      case 0x6Eu:
      case 0x6Fu:
      case 0x70u:
      case 0x71u:
      case 0x72u:
      case 0x73u:
      case 0x74u:
      case 0x75u:
      case 0x76u:
      case 0x77u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA0u:
      case 0xA1u:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
      case 0xA7u:
      case 0xA8u:
      case 0xA9u:
      case 0xAAu:
      case 0xABu:
      case 0xACu:
      case 0xADu:
      case 0xAEu:
      case 0xAFu:
      case 0xB0u:
      case 0xB1u:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB5u:
      case 0xB6u:
      case 0xB7u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBBu:
      case 0xBCu:
      case 0xBDu:
      case 0xBEu:
      case 0xBFu:
      case 0xC0u:
      case 0xC1u:
      case 0xC2u:
      case 0xC3u:
      case 0xC4u:
      case 0xC5u:
      case 0xC6u:
      case 0xC7u:
      case 0xF4u:
      case 0xF5u:
        goto LABEL_26;
      case 0x3Fu:
        v14 = objc_alloc_init(_SFPBAppIconCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBAppIconCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setAppIconCardSection:v14];
        goto LABEL_355;
      case 0x40u:
        v14 = objc_alloc_init(_SFPBLargeTitleDetailedRowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBLargeTitleDetailedRowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setLargeTitleDetailedRowCardSection:v14];
        goto LABEL_355;
      case 0x5Au:
        v14 = objc_alloc_init(_SFPBSafariTableOfContentsCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBSafariTableOfContentsCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setSafariTableOfContentsCardSection:v14];
        goto LABEL_355;
      case 0xC8u:
        v14 = objc_alloc_init(_SFPBRFSummaryItemShortNumberCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemShortNumberCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemShortNumberCardSection:v14];
        goto LABEL_355;
      case 0xC9u:
        v14 = objc_alloc_init(_SFPBRFSummaryItemTextCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemTextCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemTextCardSection:v14];
        goto LABEL_355;
      case 0xCAu:
        v14 = objc_alloc_init(_SFPBRFSummaryItemStandardCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemStandardCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemStandardCardSection:v14];
        goto LABEL_355;
      case 0xCBu:
        v14 = objc_alloc_init(_SFPBRFFactItemShortNumberCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFFactItemShortNumberCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfFactItemShortNumberCardSection:v14];
        goto LABEL_355;
      case 0xCCu:
        v14 = objc_alloc_init(_SFPBRFFactItemStandardCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFFactItemStandardCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfFactItemStandardCardSection:v14];
        goto LABEL_355;
      case 0xCDu:
        v14 = objc_alloc_init(_SFPBRFLongItemStandardCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFLongItemStandardCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfLongItemStandardCardSection:v14];
        goto LABEL_355;
      case 0xCEu:
        v14 = objc_alloc_init(_SFPBRFPrimaryHeaderRichCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFPrimaryHeaderRichCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfPrimaryHeaderRichCardSection:v14];
        goto LABEL_355;
      case 0xCFu:
        v14 = objc_alloc_init(_SFPBRFPrimaryHeaderStandardCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFPrimaryHeaderStandardCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfPrimaryHeaderStandardCardSection:v14];
        goto LABEL_355;
      case 0xD0u:
        v14 = objc_alloc_init(_SFPBRFReferenceFootnoteCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFReferenceFootnoteCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfReferenceFootnoteCardSection:v14];
        goto LABEL_355;
      case 0xD1u:
        v14 = objc_alloc_init(_SFPBRFReferenceRichCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFReferenceRichCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfReferenceRichCardSection:v14];
        goto LABEL_355;
      case 0xD2u:
        v14 = objc_alloc_init(_SFPBRFSimpleItemRichCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSimpleItemRichCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSimpleItemRichCardSection:v14];
        goto LABEL_355;
      case 0xD3u:
        v14 = objc_alloc_init(_SFPBRFSimpleItemStandardCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSimpleItemStandardCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSimpleItemStandardCardSection:v14];
        goto LABEL_355;
      case 0xD4u:
        v14 = objc_alloc_init(_SFPBRFSummaryItemAlignedTextCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemAlignedTextCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemAlignedTextCardSection:v14];
        goto LABEL_355;
      case 0xD5u:
        v14 = objc_alloc_init(_SFPBRFExpandableStandardCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFExpandableStandardCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfExpandableStandardCardSection:v14];
        goto LABEL_355;
      case 0xD6u:
        v14 = objc_alloc_init(_SFPBRFFactItemButtonCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFFactItemButtonCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfFactItemButtonCardSection:v14];
        goto LABEL_355;
      case 0xD7u:
        v14 = objc_alloc_init(_SFPBRFFactItemHeroNumberCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFFactItemHeroNumberCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfFactItemHeroNumberCardSection:v14];
        goto LABEL_355;
      case 0xD8u:
        v14 = objc_alloc_init(_SFPBRFPrimaryHeaderMarqueeCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFPrimaryHeaderMarqueeCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfPrimaryHeaderMarqueeCardSection:v14];
        goto LABEL_355;
      case 0xD9u:
        v14 = objc_alloc_init(_SFPBRFSummaryItemDetailedTextCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemDetailedTextCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemDetailedTextCardSection:v14];
        goto LABEL_355;
      case 0xDAu:
        v14 = objc_alloc_init(_SFPBRFSimpleItemPlayerCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSimpleItemPlayerCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSimpleItemPlayerCardSection:v14];
        goto LABEL_355;
      case 0xDBu:
        v14 = objc_alloc_init(_SFPBRFSummaryItemPairCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemPairCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemPairCardSection:v14];
        goto LABEL_355;
      case 0xDCu:
        v14 = objc_alloc_init(_SFPBRFSummaryItemPairNumberCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemPairNumberCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemPairNumberCardSection:v14];
        goto LABEL_355;
      case 0xDDu:
        v14 = objc_alloc_init(_SFPBRFFactItemShortHeroNumberCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFFactItemShortHeroNumberCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfFactItemShortHeroNumberCardSection:v14];
        goto LABEL_355;
      case 0xDEu:
        v14 = objc_alloc_init(_SFPBRFFactItemDetailedNumberCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFFactItemDetailedNumberCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfFactItemDetailedNumberCardSection:v14];
        goto LABEL_355;
      case 0xDFu:
        v14 = objc_alloc_init(_SFPBRFFactItemHeroButtonCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFFactItemHeroButtonCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfFactItemHeroButtonCardSection:v14];
        goto LABEL_355;
      case 0xE0u:
        v14 = objc_alloc_init(_SFPBRFFactItemImageRightCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFFactItemImageRightCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfFactItemImageRightCardSection:v14];
        goto LABEL_355;
      case 0xE1u:
        v14 = objc_alloc_init(_SFPBRFSummaryItemSwitchV2CardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemSwitchV2CardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemSwitchV2CardSection:v14];
        goto LABEL_355;
      case 0xE2u:
        v14 = objc_alloc_init(_SFPBRFTableHeaderCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFTableHeaderCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfTableHeaderCardSection:v14];
        goto LABEL_355;
      case 0xE3u:
        v14 = objc_alloc_init(_SFPBRFTableRowCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFTableRowCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfTableRowCardSection:v14];
        goto LABEL_355;
      case 0xE4u:
        v14 = objc_alloc_init(_SFPBRFSimpleItemVisualElementCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSimpleItemVisualElementCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSimpleItemVisualElementCardSection:v14];
        goto LABEL_355;
      case 0xE5u:
        v14 = objc_alloc_init(_SFPBRFSummaryItemPlayerCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemPlayerCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemPlayerCardSection:v14];
        goto LABEL_355;
      case 0xE6u:
        v14 = objc_alloc_init(_SFPBRFSummaryItemImageRightCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemImageRightCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemImageRightCardSection:v14];
        goto LABEL_355;
      case 0xE7u:
        v14 = objc_alloc_init(_SFPBRFSummaryItemButtonCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemButtonCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemButtonCardSection:v14];
        goto LABEL_355;
      case 0xE8u:
        v14 = objc_alloc_init(_SFPBRFSimpleItemReverseRichCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSimpleItemReverseRichCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSimpleItemReverseRichCardSection:v14];
        goto LABEL_355;
      case 0xE9u:
        v14 = objc_alloc_init(_SFPBRFSimpleItemRichSearchResultCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSimpleItemRichSearchResultCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSimpleItemRichSearchResultCardSection:v14];
        goto LABEL_355;
      case 0xEAu:
        v14 = objc_alloc_init(_SFPBRFPrimaryHeaderStackedImageCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFPrimaryHeaderStackedImageCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfPrimaryHeaderStackedImageCardSection:v14];
        goto LABEL_355;
      case 0xEBu:
        v14 = objc_alloc_init(_SFPBRFReferenceItemLogoCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFReferenceItemLogoCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfReferenceItemLogoCardSection:v14];
        goto LABEL_355;
      case 0xECu:
        v14 = objc_alloc_init(_SFPBRFReferenceItemButtonCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFReferenceItemButtonCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfReferenceItemButtonCardSection:v14];
        goto LABEL_355;
      case 0xEDu:
        v14 = objc_alloc_init(_SFPBRFButtonCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFButtonCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfButtonCardSection:v14];
        goto LABEL_355;
      case 0xEEu:
        v14 = objc_alloc_init(_SFPBRFBinaryButtonCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFBinaryButtonCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfBinaryButtonCardSection:v14];
        goto LABEL_355;
      case 0xEFu:
        v14 = objc_alloc_init(_SFPBRFReferenceCenteredCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFReferenceCenteredCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfReferenceCenteredCardSection:v14];
        goto LABEL_355;
      case 0xF0u:
        v14 = objc_alloc_init(_SFPBRFSecondaryHeaderStandardCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSecondaryHeaderStandardCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSecondaryHeaderStandardCardSection:v14];
        goto LABEL_355;
      case 0xF1u:
        v14 = objc_alloc_init(_SFPBRFSecondaryHeaderEmphasizedCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSecondaryHeaderEmphasizedCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSecondaryHeaderEmphasizedCardSection:v14];
        goto LABEL_355;
      case 0xF2u:
        v14 = objc_alloc_init(_SFPBRFMapCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFMapCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfMapCardSection:v14];
        goto LABEL_355;
      case 0xF3u:
        v14 = objc_alloc_init(_SFPBRFReferenceStandardCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFReferenceStandardCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfReferenceStandardCardSection:v14];
        goto LABEL_355;
      case 0xF6u:
        v14 = objc_alloc_init(_SFPBRFSummaryItemExpandableCardSection);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || (_SFPBRFSummaryItemExpandableCardSectionReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_359;
        }

        PBReaderRecallMark();
        [a1 setRfSummaryItemExpandableCardSection:v14];
        goto LABEL_355;
      default:
        if (v13 != 744)
        {
          if (v13 != 745)
          {
LABEL_26:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_356;
          }

          v14 = objc_alloc_init(_SFPBRFDisambiguationTitleCardSection);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || (_SFPBRFDisambiguationTitleCardSectionReadFrom(v14, a2) & 1) == 0)
          {
            goto LABEL_359;
          }

          PBReaderRecallMark();
          [a1 setRfDisambiguationTitleCardSection:v14];
LABEL_355:

LABEL_356:
          v15 = [a2 position];
          if (v15 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        v14 = objc_alloc_init(_SFPBRFMultiButtonCardSection);
        v17 = 0;
        v18 = 0;
        if (PBReaderPlaceMark() && (_SFPBRFMultiButtonCardSectionReadFrom(v14, a2) & 1) != 0)
        {
          PBReaderRecallMark();
          [a1 setRfMultiButtonCardSection:v14];
          goto LABEL_355;
        }

LABEL_359:

        return 0;
    }
  }
}

uint64_t _SFPBDescriptionCardSectionReadFrom(void *a1, void *a2)
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
        LOBYTE(v94) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v94 & 0x7F) << v5;
        if ((v94 & 0x80) == 0)
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
      if ((v12 >> 3) <= 50)
      {
        if (v13 <= 4)
        {
          if (v13 > 2)
          {
            if (v13 != 3)
            {
              v15 = 0;
              v16 = 0;
              v17 = 0;
              while (1)
              {
                LOBYTE(v94) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v94 & 0x7F) << v15;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_166;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_166:
              [a1 setCanBeHidden:v21];
              goto LABEL_154;
            }

            v14 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v14];
          }

          else if (v13 == 1)
          {
            v14 = objc_alloc_init(_SFPBPunchout);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
LABEL_200:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPunchoutOptions:v14];
            }
          }

          else
          {
            if (v13 != 2)
            {
LABEL_81:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                return 0;
              }

              goto LABEL_154;
            }

            v14 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v14];
          }
        }

        else
        {
          if (v13 <= 6)
          {
            if (v13 == 5)
            {
              v36 = 0;
              v37 = 0;
              v38 = 0;
              while (1)
              {
                LOBYTE(v94) = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v94 & 0x7F) << v36;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v42 = 0;
                  goto LABEL_172;
                }
              }

              v42 = (v38 != 0) & ~[a2 hasError];
LABEL_172:
              [a1 setHasTopPadding:v42];
            }

            else
            {
              v22 = 0;
              v23 = 0;
              v24 = 0;
              while (1)
              {
                LOBYTE(v94) = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v94 & 0x7F) << v22;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v11 = v23++ >= 9;
                if (v11)
                {
                  v28 = 0;
                  goto LABEL_174;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_174:
              [a1 setHasBottomPadding:v28];
            }

            goto LABEL_154;
          }

          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setType:v14];
              break;
            case 8:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v94) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v94 & 0x7F) << v29;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_170;
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

LABEL_170:
              [a1 setSeparatorStyle:v35];
              goto LABEL_154;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
                goto LABEL_200;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              break;
            default:
              goto LABEL_81;
          }
        }
      }

      else
      {
        switch(v13)
        {
          case 'e':
            v14 = objc_alloc_init(_SFPBText);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !_SFPBTextReadFrom(v14, a2))
            {
              goto LABEL_200;
            }

            PBReaderRecallMark();
            [a1 setDescriptionText:v14];
            break;
          case 'f':
            v14 = PBReaderReadString();
            [a1 setExpandText:v14];
            break;
          case 'g':
            v14 = objc_alloc_init(_SFPBImage);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_200;
            }

            PBReaderRecallMark();
            [a1 setImage:v14];
            break;
          case 'h':
            v57 = 0;
            v58 = 0;
            v59 = 0;
            while (1)
            {
              LOBYTE(v94) = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v94 & 0x7F) << v57;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                v63 = 0;
                goto LABEL_184;
              }
            }

            v63 = (v59 != 0) & ~[a2 hasError];
LABEL_184:
            [a1 setTitleNoWrap:v63];
            goto LABEL_154;
          case 'i':
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v94) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v94 & 0x7F) << v43;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_178;
              }
            }

            if ([a2 hasError])
            {
              v49 = 0;
            }

            else
            {
              v49 = v45;
            }

LABEL_178:
            [a1 setTitleWeight:v49];
            goto LABEL_154;
          case 'j':
            v71 = 0;
            v72 = 0;
            v73 = 0;
            while (1)
            {
              LOBYTE(v94) = 0;
              v74 = [a2 position] + 1;
              if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v73 |= (v94 & 0x7F) << v71;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v11 = v72++ >= 9;
              if (v11)
              {
                v77 = 0;
                goto LABEL_190;
              }
            }

            if ([a2 hasError])
            {
              v77 = 0;
            }

            else
            {
              v77 = v73;
            }

LABEL_190:
            [a1 setDescriptionSize:v77];
            goto LABEL_154;
          case 'k':
            v78 = 0;
            v79 = 0;
            v80 = 0;
            while (1)
            {
              LOBYTE(v94) = 0;
              v81 = [a2 position] + 1;
              if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
              {
                v83 = [a2 data];
                [v83 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v80 |= (v94 & 0x7F) << v78;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              v11 = v79++ >= 9;
              if (v11)
              {
                v84 = 0;
                goto LABEL_194;
              }
            }

            if ([a2 hasError])
            {
              v84 = 0;
            }

            else
            {
              v84 = v80;
            }

LABEL_194:
            [a1 setDescriptionWeight:v84];
            goto LABEL_154;
          case 'l':
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              LOBYTE(v94) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v94 & 0x7F) << v64;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v70 = 0;
                goto LABEL_186;
              }
            }

            v70 = (v66 != 0) & ~[a2 hasError];
LABEL_186:
            [a1 setDescriptionExpand:v70];
            goto LABEL_154;
          case 'm':
            v86 = 0;
            v87 = 0;
            v88 = 0;
            while (1)
            {
              LOBYTE(v94) = 0;
              v89 = [a2 position] + 1;
              if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
              {
                v91 = [a2 data];
                [v91 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v88 |= (v94 & 0x7F) << v86;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              v11 = v87++ >= 9;
              if (v11)
              {
                v92 = 0;
                goto LABEL_198;
              }
            }

            if ([a2 hasError])
            {
              v92 = 0;
            }

            else
            {
              v92 = v88;
            }

LABEL_198:
            [a1 setImageAlign:v92];
            goto LABEL_154;
          case 'n':
            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              LOBYTE(v94) = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v94 & 0x7F) << v50;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v56 = 0;
                goto LABEL_182;
              }
            }

            if ([a2 hasError])
            {
              v56 = 0;
            }

            else
            {
              v56 = v52;
            }

LABEL_182:
            [a1 setTextAlign:v56];
            goto LABEL_154;
          case 'o':
            v14 = PBReaderReadString();
            [a1 setAttributionText:v14];
            break;
          case 'p':
            v14 = objc_alloc_init(_SFPBURL);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v14, a2))
            {
              goto LABEL_200;
            }

            PBReaderRecallMark();
            [a1 setAttributionURL:v14];
            break;
          case 'q':
            v14 = objc_alloc_init(_SFPBImage);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_200;
            }

            PBReaderRecallMark();
            [a1 setAttributionGlyph:v14];
            break;
          case 'r':
            v14 = objc_alloc_init(_SFPBRichText);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_200;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addRichDescriptions:v14];
            }

            break;
          default:
            if (v13 == 51)
            {
              v14 = PBReaderReadString();
              [a1 setTitle:v14];
            }

            else
            {
              if (v13 != 52)
              {
                goto LABEL_81;
              }

              v14 = PBReaderReadString();
              [a1 setSubtitle:v14];
            }

            break;
        }
      }

LABEL_154:
      v85 = [a2 position];
    }

    while (v85 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBKeyValueDataCardSectionReadFrom(void *a1, void *a2)
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
        LOBYTE(v45) = 0;
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v28 = objc_alloc_init(_SFPBPunchout);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
            {
LABEL_101:

              return 0;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addPunchoutOptions:v28];
            }

            goto LABEL_84;
          }

          if (v13 == 2)
          {
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v28];
LABEL_84:

            goto LABEL_85;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v28 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v28];
              goto LABEL_84;
            case 4:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v45 & 0x7F) << v29;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_90;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_90:
              [a1 setCanBeHidden:v35];
              goto LABEL_85;
            case 5:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
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
                  v27 = 0;
                  goto LABEL_92;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_92:
              [a1 setHasTopPadding:v27];
              goto LABEL_85;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v28 = objc_alloc_init(_SFPBColor);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
            {
              goto LABEL_101;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v28];
            goto LABEL_84;
          case 0x33:
            v28 = objc_alloc_init(_SFPBKeyValueTuple);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBKeyValueTupleReadFrom(v28, a2))
            {
              goto LABEL_101;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addData:v28];
            }

            goto LABEL_84;
          case 0x34:
            v28 = objc_alloc_init(_SFPBImage);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v28, a2))
            {
              goto LABEL_101;
            }

            PBReaderRecallMark();
            [a1 setAccessoryImage:v28];
            goto LABEL_84;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

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
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_98;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_98:
            [a1 setHasBottomPadding:v42];
            goto LABEL_85;
          case 7:
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_84;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v45 & 0x7F) << v14;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
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
              v20 = v16;
            }

LABEL_96:
            [a1 setSeparatorStyle:v20];
            goto LABEL_85;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMapCardSectionReadFrom(void *a1, void *a2)
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
          v10 = [a2 data];
          [v10 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

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
      if ((v12 >> 3) > 50)
      {
        if (v13 <= 54)
        {
          if (v13 > 52)
          {
            if (v13 == 53)
            {
              v14 = PBReaderReadString();
              [a1 setFootnoteLabel:v14];
            }

            else
            {
              v14 = PBReaderReadString();
              [a1 setFootnote:v14];
            }

            goto LABEL_108;
          }

          if (v13 == 51)
          {
            v14 = objc_alloc_init(_SFPBLatLng);
            v66 = 0;
            v67 = 0;
            if (!PBReaderPlaceMark() || !_SFPBLatLngReadFrom(v14, a2))
            {
LABEL_152:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setLocation:v14];
            goto LABEL_108;
          }

          if (v13 == 52)
          {
            v14 = objc_alloc_init(_SFPBColor);
            v66 = 0;
            v67 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
            {
              goto LABEL_152;
            }

            PBReaderRecallMark();
            [a1 setPinColor:v14];
            goto LABEL_108;
          }
        }

        else
        {
          if (v13 <= 56)
          {
            if (v13 == 55)
            {
              v58 = 0;
              v59 = 0;
              v60 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v66 & 0x7F) << v58;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
                if (v11)
                {
                  v64 = 0;
                  goto LABEL_144;
                }
              }

              v64 = (v60 != 0) & ~[a2 hasError];
LABEL_144:
              [a1 setInteractive:v64];
            }

            else
            {
              v36 = 0;
              v37 = 0;
              v38 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v66 & 0x7F) << v36;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v42 = 0;
                  goto LABEL_150;
                }
              }

              if ([a2 hasError])
              {
                v42 = 0;
              }

              else
              {
                v42 = v38;
              }

LABEL_150:
              [a1 setSizeFormat:v42];
            }

            goto LABEL_109;
          }

          switch(v13)
          {
            case '9':
              v14 = objc_alloc_init(_SFPBMapRegion);
              v66 = 0;
              v67 = 0;
              if (!PBReaderPlaceMark() || !_SFPBMapRegionReadFrom(v14, a2))
              {
                goto LABEL_152;
              }

              PBReaderRecallMark();
              [a1 setBoundingMapRegion:v14];
              goto LABEL_108;
            case ';':
              v14 = objc_alloc_init(_SFPBPin);
              v66 = 0;
              v67 = 0;
              if (!PBReaderPlaceMark() || !_SFPBPinReadFrom(v14, a2))
              {
                goto LABEL_152;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPins:v14];
              }

              goto LABEL_108;
            case ':':
              v15 = 0;
              v16 = 0;
              v17 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v66 & 0x7F) << v15;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_140;
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

LABEL_140:
              [a1 setPinBehavior:v21];
              goto LABEL_109;
          }
        }
      }

      else if (v13 <= 4)
      {
        if (v13 > 2)
        {
          if (v13 != 3)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v66 & 0x7F) << v22;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_132;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_132:
            [a1 setCanBeHidden:v28];
            goto LABEL_109;
          }

          v14 = PBReaderReadString();
          [a1 setPunchoutPickerDismissText:v14];
          goto LABEL_108;
        }

        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBPunchout);
          v66 = 0;
          v67 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
          {
            goto LABEL_152;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addPunchoutOptions:v14];
          }

          goto LABEL_108;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v14];
LABEL_108:

          goto LABEL_109;
        }
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v66 & 0x7F) << v51;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v57 = 0;
                goto LABEL_142;
              }
            }

            v57 = (v53 != 0) & ~[a2 hasError];
LABEL_142:
            [a1 setHasTopPadding:v57];
          }

          else
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v66 & 0x7F) << v29;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_146;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_146:
            [a1 setHasBottomPadding:v35];
          }

          goto LABEL_109;
        }

        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            [a1 setType:v14];
            goto LABEL_108;
          case 8:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v66 & 0x7F) << v43;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_136;
              }
            }

            if ([a2 hasError])
            {
              v49 = 0;
            }

            else
            {
              v49 = v45;
            }

LABEL_136:
            [a1 setSeparatorStyle:v49];
            goto LABEL_109;
          case 9:
            v14 = objc_alloc_init(_SFPBColor);
            v66 = 0;
            v67 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
            {
              goto LABEL_152;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v14];
            goto LABEL_108;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_109:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMediaInfoCardSectionReadFrom(void *a1, void *a2)
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
        LOBYTE(v59) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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
      if ((v12 >> 3) > 51)
      {
        if (v13 > 56)
        {
          if (v13 <= 58)
          {
            if (v13 == 57)
            {
              v21 = PBReaderReadString();
              [a1 setWatchListContinuationText:v21];
            }

            else
            {
              v21 = PBReaderReadString();
              [a1 setWatchListConfirmationText:v21];
            }

            goto LABEL_125;
          }

          switch(v13)
          {
            case ';':
              v43 = 0;
              v44 = 0;
              v45 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v59 & 0x7F) << v43;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  v49 = 0;
                  goto LABEL_137;
                }
              }

              v49 = (v45 != 0) & ~[a2 hasError];
LABEL_137:
              [a1 setIsMediaContainer:v49];
              goto LABEL_126;
            case '<':
              v21 = objc_alloc_init(_SFPBRichText);
              v59 = 0;
              v60 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v21, a2))
              {
LABEL_147:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setSpecialOfferButtonLabel:v21];
              goto LABEL_125;
            case '=':
              v22 = 0;
              v23 = 0;
              v24 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v59 & 0x7F) << v22;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v11 = v23++ >= 9;
                if (v11)
                {
                  v28 = 0;
                  goto LABEL_145;
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

LABEL_145:
              [a1 setWatchListItemType:v28];
              goto LABEL_126;
          }
        }

        else
        {
          if (v13 > 53)
          {
            if (v13 == 54)
            {
              v21 = objc_alloc_init(_SFPBMediaOffer);
              v59 = 0;
              v60 = 0;
              if (!PBReaderPlaceMark() || !_SFPBMediaOfferReadFrom(v21, a2))
              {
                goto LABEL_147;
              }

              PBReaderRecallMark();
              if (v21)
              {
                [a1 addOffers:v21];
              }
            }

            else if (v13 == 55)
            {
              v21 = PBReaderReadString();
              [a1 setWatchListIdentifier:v21];
            }

            else
            {
              v21 = PBReaderReadString();
              [a1 setWatchListButtonLabel:v21];
            }

            goto LABEL_125;
          }

          if (v13 == 52)
          {
            v21 = objc_alloc_init(_SFPBMediaDetail);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBMediaDetailReadFrom(v21, a2))
            {
              goto LABEL_147;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addDetails:v21];
            }

            goto LABEL_125;
          }

          if (v13 == 53)
          {
            v21 = objc_alloc_init(_SFPBActionItem);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBActionItemReadFrom(v21, a2))
            {
              goto LABEL_147;
            }

            PBReaderRecallMark();
            [a1 setPlayAction:v21];
            goto LABEL_125;
          }
        }
      }

      else if (v13 > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v59 & 0x7F) << v50;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v56 = 0;
                goto LABEL_139;
              }
            }

            v56 = (v52 != 0) & ~[a2 hasError];
LABEL_139:
            [a1 setHasBottomPadding:v56];
            goto LABEL_126;
          }

          v21 = PBReaderReadString();
          [a1 setType:v21];
          goto LABEL_125;
        }

        switch(v13)
        {
          case 8:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v59 & 0x7F) << v36;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_135;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_135:
            [a1 setSeparatorStyle:v42];
            goto LABEL_126;
          case 9:
            v21 = objc_alloc_init(_SFPBColor);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v21, a2))
            {
              goto LABEL_147;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v21];
            goto LABEL_125;
          case 0x33:
            v21 = objc_alloc_init(_SFPBMediaItem);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBMediaItemReadFrom(v21, a2))
            {
              goto LABEL_147;
            }

            PBReaderRecallMark();
            [a1 setMediaItem:v21];
            goto LABEL_125;
        }
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 != 3)
          {
            if (v13 == 4)
            {
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v59 & 0x7F) << v29;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_131;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_131:
              [a1 setCanBeHidden:v35];
            }

            else
            {
              v14 = 0;
              v15 = 0;
              v16 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v59 & 0x7F) << v14;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_141;
                }
              }

              v20 = (v16 != 0) & ~[a2 hasError];
LABEL_141:
              [a1 setHasTopPadding:v20];
            }

            goto LABEL_126;
          }

          v21 = PBReaderReadString();
          [a1 setPunchoutPickerDismissText:v21];
          goto LABEL_125;
        }

        if (v13 == 1)
        {
          v21 = objc_alloc_init(_SFPBPunchout);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v21, a2))
          {
            goto LABEL_147;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addPunchoutOptions:v21];
          }

          goto LABEL_125;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v21];
LABEL_125:

          goto LABEL_126;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_126:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMediaPlayerCardSectionReadFrom(void *a1, void *a2)
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
        LOBYTE(v45) = 0;
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 50)
        {
          switch(v13)
          {
            case '3':
              v14 = PBReaderReadString();
              [a1 setTitle:v14];
              goto LABEL_84;
            case '4':
              v14 = PBReaderReadString();
              [a1 setSubtitle:v14];
              goto LABEL_84;
            case '5':
              v14 = objc_alloc_init(_SFPBMediaItem);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBMediaItemReadFrom(v14, a2))
              {
LABEL_101:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addMediaItems:v14];
              }

              goto LABEL_84;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setType:v14];
              goto LABEL_84;
            case 8:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v45 & 0x7F) << v29;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_96;
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

LABEL_96:
              [a1 setSeparatorStyle:v35];
              goto LABEL_85;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
                goto LABEL_101;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              goto LABEL_84;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
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
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_92;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_92:
            [a1 setCanBeHidden:v28];
            goto LABEL_85;
          case 5:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

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
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_98;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_98:
            [a1 setHasTopPadding:v42];
            goto LABEL_85;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v45 & 0x7F) << v15;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_90;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_90:
            [a1 setHasBottomPadding:v21];
            goto LABEL_85;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBPunchout);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
              goto LABEL_101;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPunchoutOptions:v14];
            }

            goto LABEL_84;
          case 2:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v14];
            goto LABEL_84;
          case 3:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v14];
LABEL_84:

            goto LABEL_85;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}