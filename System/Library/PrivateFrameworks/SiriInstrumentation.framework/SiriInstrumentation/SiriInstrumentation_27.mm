uint64_t MTSchemaMTLanguageDisambiguationUISelectedReadFrom(void *a1, void *a2)
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
      [a1 setLocale:v20];
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

uint64_t MTSchemaMTLanguageDisambiguationUIShownReadFrom(void *a1, void *a2)
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
      [a1 addLocale:v20];
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

uint64_t MTSchemaMTLanguageIdentificationCompletedReadFrom(void *a1, void *a2)
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
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
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
            goto LABEL_48;
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

LABEL_48:
        [a1 setInputSource:v28];
      }

      else if (v13 == 3)
      {
        v21 = objc_alloc_init(MTSchemaMTLanguageIdentificationConfidence);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTLanguageIdentificationConfidenceReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addLidConfidence:v21];
        }
      }

      else if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
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
          v20 = v16;
        }

LABEL_52:
        [a1 setTopLocale:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTSchemaMTLanguageIdentificationConfidenceReadFrom(void *a1, void *a2)
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
          goto LABEL_47;
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

LABEL_47:
      [a1 setLocale:v27];
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
      [a1 setConfidenceInThousands:v20];
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

uint64_t MTSchemaMTLocalePairReadFrom(void *a1, void *a2)
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
          goto LABEL_47;
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

LABEL_47:
      [a1 setSourceLocale:v27];
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
      [a1 setTargetLocale:v20];
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

uint64_t MTSchemaMTLocalePairResolvedReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(MTSchemaMTLocalePair);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTSchemaMTLocalePairReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLocalePair:v13];
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

uint64_t MTSchemaMTTranslationTTSPlayedReadFrom(void *a1, void *a2)
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
            goto LABEL_74;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_74:
        [a1 setPlaybackSpeed:v43];
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
            goto LABEL_66;
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

LABEL_66:
        [a1 setAudioChannel:v28];
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
          v47 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v47 & 0x7F) << v30;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_70;
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

LABEL_70:
        [a1 setSourceOrTarget:v36];
        continue;
      }

      if (v14 == 2)
      {
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
            goto LABEL_62;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_62:
        [a1 setIsAutoplayTranslation:v21];
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

uint64_t MWTSchemaMWTCheckpointReportedReadFrom(void *a1, void *a2)
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
      [a1 setStepType:v20];
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

uint64_t MWTSchemaMWTClientEventReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 101)
      {
        if (v13 == 102)
        {
          v14 = objc_alloc_init(MWTSchemaMWTMusicMetadataReported);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MWTSchemaMWTMusicMetadataReportedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setMwtMusicMetadataReported:v14];
          goto LABEL_36;
        }

        if (v13 == 103)
        {
          v14 = objc_alloc_init(MWTSchemaMWTVMCPUStatsReported);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MWTSchemaMWTVMCPUStatsReportedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setMwtVMCpuStatsReported:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MWTSchemaMWTEventMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MWTSchemaMWTEventMetadataReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setEventMetadata:v14];
          goto LABEL_36;
        }

        if (v13 == 101)
        {
          v14 = objc_alloc_init(MWTSchemaMWTCheckpointReported);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !MWTSchemaMWTCheckpointReportedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setMwtCheckpointReported:v14];
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

uint64_t MWTSchemaMWTEventMetadataReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(SISchemaUUID);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setSubRequestId:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SISchemaUUID);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setMwtId:v14];
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

    v14 = objc_alloc_init(SISchemaUUID);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setRequestId:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MWTSchemaMWTMusicMetadataReportedReadFrom(void *a1, void *a2)
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
      v394 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v394 & 0x7F) << v6;
      if ((v394 & 0x80) == 0)
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
        while (1)
        {
          v394 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v394 & 0x7F) << v14;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_597:
            [a1 setMusicDomain:v20];
            goto LABEL_678;
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

        goto LABEL_597;
      case 2u:
        v197 = 0;
        v198 = 0;
        v199 = 0;
        while (1)
        {
          v394 = 0;
          v200 = [a2 position] + 1;
          if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
          {
            v202 = [a2 data];
            [v202 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v199 |= (v394 & 0x7F) << v197;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v197 += 7;
          v12 = v198++ >= 9;
          if (v12)
          {
            v203 = 0;
            goto LABEL_601;
          }
        }

        if ([a2 hasError])
        {
          v203 = 0;
        }

        else
        {
          v203 = v199;
        }

LABEL_601:
        [a1 setQueueType:v203];
        continue;
      case 3u:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        while (1)
        {
          v394 = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v394 & 0x7F) << v169;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v12 = v170++ >= 9;
          if (v12)
          {
            v175 = 0;
            goto LABEL_583;
          }
        }

        if ([a2 hasError])
        {
          v175 = 0;
        }

        else
        {
          v175 = v171;
        }

LABEL_583:
        [a1 setQueueSize:v175];
        continue;
      case 4u:
        v183 = 0;
        v184 = 0;
        v185 = 0;
        while (1)
        {
          v394 = 0;
          v186 = [a2 position] + 1;
          if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
          {
            v188 = [a2 data];
            [v188 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v185 |= (v394 & 0x7F) << v183;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v183 += 7;
          v12 = v184++ >= 9;
          if (v12)
          {
            v189 = 0;
            goto LABEL_589;
          }
        }

        v189 = (v185 != 0) & ~[a2 hasError];
LABEL_589:
        [a1 setIsShuffled:v189];
        continue;
      case 5u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        while (1)
        {
          v394 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v394 & 0x7F) << v127;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v133 = 0;
            goto LABEL_563;
          }
        }

        if ([a2 hasError])
        {
          v133 = 0;
        }

        else
        {
          v133 = v129;
        }

LABEL_563:
        [a1 setPrefetchedMetadataSource:v133];
        continue;
      case 6u:
        v232 = 0;
        v233 = 0;
        v234 = 0;
        while (1)
        {
          v394 = 0;
          v235 = [a2 position] + 1;
          if (v235 >= [a2 position] && (v236 = objc_msgSend(a2, "position") + 1, v236 <= objc_msgSend(a2, "length")))
          {
            v237 = [a2 data];
            [v237 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v234 |= (v394 & 0x7F) << v232;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v232 += 7;
          v12 = v233++ >= 9;
          if (v12)
          {
            v238 = 0;
            goto LABEL_615;
          }
        }

        if ([a2 hasError])
        {
          v238 = 0;
        }

        else
        {
          v238 = v234;
        }

LABEL_615:
        [a1 setAssetEndPoint:v238];
        continue;
      case 7u:
        v253 = 0;
        v254 = 0;
        v255 = 0;
        while (1)
        {
          v394 = 0;
          v256 = [a2 position] + 1;
          if (v256 >= [a2 position] && (v257 = objc_msgSend(a2, "position") + 1, v257 <= objc_msgSend(a2, "length")))
          {
            v258 = [a2 data];
            [v258 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v255 |= (v394 & 0x7F) << v253;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v253 += 7;
          v12 = v254++ >= 9;
          if (v12)
          {
            v259 = 0;
            goto LABEL_625;
          }
        }

        if ([a2 hasError])
        {
          v259 = 0;
        }

        else
        {
          v259 = v255;
        }

LABEL_625:
        [a1 setStreamingContentType:v259];
        continue;
      case 8u:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        while (1)
        {
          v394 = 0;
          v193 = [a2 position] + 1;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
          {
            v195 = [a2 data];
            [v195 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v192 |= (v394 & 0x7F) << v190;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v12 = v191++ >= 9;
          if (v12)
          {
            v196 = 0;
            goto LABEL_593;
          }
        }

        if ([a2 hasError])
        {
          v196 = 0;
        }

        else
        {
          v196 = v192;
        }

LABEL_593:
        [a1 setFormatCodec:v196];
        continue;
      case 9u:
        v274 = 0;
        v275 = 0;
        v276 = 0;
        while (1)
        {
          v394 = 0;
          v277 = [a2 position] + 1;
          if (v277 >= [a2 position] && (v278 = objc_msgSend(a2, "position") + 1, v278 <= objc_msgSend(a2, "length")))
          {
            v279 = [a2 data];
            [v279 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v276 |= (v394 & 0x7F) << v274;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v274 += 7;
          v12 = v275++ >= 9;
          if (v12)
          {
            v280 = 0;
            goto LABEL_635;
          }
        }

        if ([a2 hasError])
        {
          v280 = 0;
        }

        else
        {
          v280 = v276;
        }

LABEL_635:
        [a1 setFormatBitrate:v280];
        continue;
      case 0xAu:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        while (1)
        {
          v394 = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v394 & 0x7F) << v148;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v154 = 0;
            goto LABEL_575;
          }
        }

        if ([a2 hasError])
        {
          v154 = 0;
        }

        else
        {
          v154 = v150;
        }

LABEL_575:
        [a1 setFormatBitDepth:v154];
        continue;
      case 0xBu:
        v267 = 0;
        v268 = 0;
        v269 = 0;
        while (1)
        {
          v394 = 0;
          v270 = [a2 position] + 1;
          if (v270 >= [a2 position] && (v271 = objc_msgSend(a2, "position") + 1, v271 <= objc_msgSend(a2, "length")))
          {
            v272 = [a2 data];
            [v272 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v269 |= (v394 & 0x7F) << v267;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v267 += 7;
          v12 = v268++ >= 9;
          if (v12)
          {
            v273 = 0;
            goto LABEL_631;
          }
        }

        if ([a2 hasError])
        {
          v273 = 0;
        }

        else
        {
          v273 = v269;
        }

LABEL_631:
        [a1 setFormatChannels:v273];
        continue;
      case 0xCu:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        while (1)
        {
          v394 = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v394 & 0x7F) << v113;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            v119 = 0;
            goto LABEL_555;
          }
        }

        if ([a2 hasError])
        {
          v119 = 0;
        }

        else
        {
          v119 = v115;
        }

LABEL_555:
        [a1 setFormatLayout:v119];
        continue;
      case 0xDu:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        while (1)
        {
          v394 = 0;
          v144 = [a2 position] + 1;
          if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
          {
            v146 = [a2 data];
            [v146 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v143 |= (v394 & 0x7F) << v141;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v12 = v142++ >= 9;
          if (v12)
          {
            v147 = 0;
            goto LABEL_571;
          }
        }

        if ([a2 hasError])
        {
          v147 = 0;
        }

        else
        {
          v147 = v143;
        }

LABEL_571:
        [a1 setFormatSampleRate:v147];
        continue;
      case 0xEu:
        v246 = 0;
        v247 = 0;
        v248 = 0;
        while (1)
        {
          v394 = 0;
          v249 = [a2 position] + 1;
          if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 1, v250 <= objc_msgSend(a2, "length")))
          {
            v251 = [a2 data];
            [v251 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v248 |= (v394 & 0x7F) << v246;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v246 += 7;
          v12 = v247++ >= 9;
          if (v12)
          {
            v252 = 0;
            goto LABEL_621;
          }
        }

        if ([a2 hasError])
        {
          v252 = 0;
        }

        else
        {
          v252 = v248;
        }

LABEL_621:
        [a1 setFormatTier:v252];
        continue;
      case 0xFu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        while (1)
        {
          v394 = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v394 & 0x7F) << v92;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v12 = v93++ >= 9;
          if (v12)
          {
            v98 = 0;
            goto LABEL_545;
          }
        }

        if ([a2 hasError])
        {
          v98 = 0;
        }

        else
        {
          v98 = v94;
        }

LABEL_545:
        [a1 setNumberOfSpeakers:v98];
        continue;
      case 0x10u:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        while (1)
        {
          v394 = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            v181 = [a2 data];
            [v181 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v178 |= (v394 & 0x7F) << v176;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          v12 = v177++ >= 9;
          if (v12)
          {
            v182 = 0;
            goto LABEL_587;
          }
        }

        if ([a2 hasError])
        {
          v182 = 0;
        }

        else
        {
          v182 = v178;
        }

LABEL_587:
        [a1 setRouteConfiguration:v182];
        continue;
      case 0x11u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        while (1)
        {
          v394 = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v394 & 0x7F) << v78;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            v84 = 0;
            goto LABEL_539;
          }
        }

        v84 = (v80 != 0) & ~[a2 hasError];
LABEL_539:
        [a1 setIsAccountDataReady:v84];
        continue;
      case 0x12u:
        v211 = 0;
        v212 = 0;
        v213 = 0;
        while (1)
        {
          v394 = 0;
          v214 = [a2 position] + 1;
          if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
          {
            v216 = [a2 data];
            [v216 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v213 |= (v394 & 0x7F) << v211;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          v12 = v212++ >= 9;
          if (v12)
          {
            v217 = 0;
            goto LABEL_607;
          }
        }

        v217 = (v213 != 0) & ~[a2 hasError];
LABEL_607:
        [a1 setIsStoreBagReady:v217];
        continue;
      case 0x13u:
        v260 = 0;
        v261 = 0;
        v262 = 0;
        while (1)
        {
          v394 = 0;
          v263 = [a2 position] + 1;
          if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 1, v264 <= objc_msgSend(a2, "length")))
          {
            v265 = [a2 data];
            [v265 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v262 |= (v394 & 0x7F) << v260;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v260 += 7;
          v12 = v261++ >= 9;
          if (v12)
          {
            v266 = 0;
            goto LABEL_627;
          }
        }

        v266 = (v262 != 0) & ~[a2 hasError];
LABEL_627:
        [a1 setIsLeaseReady:v266];
        continue;
      case 0x14u:
        v316 = 0;
        v317 = 0;
        v318 = 0;
        while (1)
        {
          v394 = 0;
          v319 = [a2 position] + 1;
          if (v319 >= [a2 position] && (v320 = objc_msgSend(a2, "position") + 1, v320 <= objc_msgSend(a2, "length")))
          {
            v321 = [a2 data];
            [v321 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v318 |= (v394 & 0x7F) << v316;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v316 += 7;
          v12 = v317++ >= 9;
          if (v12)
          {
            v322 = 0;
            goto LABEL_649;
          }
        }

        v322 = (v318 != 0) & ~[a2 hasError];
LABEL_649:
        [a1 setIsOnlineKeyReady:v322];
        continue;
      case 0x15u:
        v225 = 0;
        v226 = 0;
        v227 = 0;
        while (1)
        {
          v394 = 0;
          v228 = [a2 position] + 1;
          if (v228 >= [a2 position] && (v229 = objc_msgSend(a2, "position") + 1, v229 <= objc_msgSend(a2, "length")))
          {
            v230 = [a2 data];
            [v230 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v227 |= (v394 & 0x7F) << v225;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v225 += 7;
          v12 = v226++ >= 9;
          if (v12)
          {
            v231 = 0;
            goto LABEL_611;
          }
        }

        v231 = (v227 != 0) & ~[a2 hasError];
LABEL_611:
        [a1 setIsOfflineKeyReady:v231];
        continue;
      case 0x16u:
        v239 = 0;
        v240 = 0;
        v241 = 0;
        while (1)
        {
          v394 = 0;
          v242 = [a2 position] + 1;
          if (v242 >= [a2 position] && (v243 = objc_msgSend(a2, "position") + 1, v243 <= objc_msgSend(a2, "length")))
          {
            v244 = [a2 data];
            [v244 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v241 |= (v394 & 0x7F) << v239;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v239 += 7;
          v12 = v240++ >= 9;
          if (v12)
          {
            v245 = 0;
            goto LABEL_617;
          }
        }

        v245 = (v241 != 0) & ~[a2 hasError];
LABEL_617:
        [a1 setIsHlsKeysReady:v245];
        continue;
      case 0x17u:
        v302 = 0;
        v303 = 0;
        v304 = 0;
        while (1)
        {
          v394 = 0;
          v305 = [a2 position] + 1;
          if (v305 >= [a2 position] && (v306 = objc_msgSend(a2, "position") + 1, v306 <= objc_msgSend(a2, "length")))
          {
            v307 = [a2 data];
            [v307 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v304 |= (v394 & 0x7F) << v302;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v302 += 7;
          v12 = v303++ >= 9;
          if (v12)
          {
            v308 = 0;
            goto LABEL_643;
          }
        }

        v308 = (v304 != 0) & ~[a2 hasError];
LABEL_643:
        [a1 setIsInterruptingPlayback:v308];
        continue;
      case 0x18u:
        v330 = 0;
        v331 = 0;
        v332 = 0;
        while (1)
        {
          v394 = 0;
          v333 = [a2 position] + 1;
          if (v333 >= [a2 position] && (v334 = objc_msgSend(a2, "position") + 1, v334 <= objc_msgSend(a2, "length")))
          {
            v335 = [a2 data];
            [v335 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v332 |= (v394 & 0x7F) << v330;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v330 += 7;
          v12 = v331++ >= 9;
          if (v12)
          {
            v336 = 0;
            goto LABEL_653;
          }
        }

        v336 = (v332 != 0) & ~[a2 hasError];
LABEL_653:
        [a1 setIsRemoteSetQueue:v336];
        continue;
      case 0x19u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        while (1)
        {
          v394 = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v394 & 0x7F) << v162;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            v168 = 0;
            goto LABEL_579;
          }
        }

        v168 = (v164 != 0) & ~[a2 hasError];
LABEL_579:
        [a1 setIsDelegatedPlayback:v168];
        continue;
      case 0x1Au:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        while (1)
        {
          v394 = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v394 & 0x7F) << v155;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            v161 = 0;
            goto LABEL_577;
          }
        }

        v161 = (v157 != 0) & ~[a2 hasError];
LABEL_577:
        [a1 setIsNonDefaultUser:v161];
        continue;
      case 0x1Bu:
        v358 = 0;
        v359 = 0;
        v360 = 0;
        while (1)
        {
          v394 = 0;
          v361 = [a2 position] + 1;
          if (v361 >= [a2 position] && (v362 = objc_msgSend(a2, "position") + 1, v362 <= objc_msgSend(a2, "length")))
          {
            v363 = [a2 data];
            [v363 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v360 |= (v394 & 0x7F) << v358;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v358 += 7;
          v12 = v359++ >= 9;
          if (v12)
          {
            v364 = 0;
            goto LABEL_663;
          }
        }

        v364 = (v360 != 0) & ~[a2 hasError];
LABEL_663:
        [a1 setIsAutoPlay:v364];
        continue;
      case 0x1Cu:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v394 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v394 & 0x7F) << v70;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_537;
          }
        }

        v76 = (v72 != 0) & ~[a2 hasError];
LABEL_537:
        [a1 setIsFirstPlayAfterAppLaunch:v76];
        continue;
      case 0x1Du:
        v337 = 0;
        v338 = 0;
        v339 = 0;
        while (1)
        {
          v394 = 0;
          v340 = [a2 position] + 1;
          if (v340 >= [a2 position] && (v341 = objc_msgSend(a2, "position") + 1, v341 <= objc_msgSend(a2, "length")))
          {
            v342 = [a2 data];
            [v342 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v339 |= (v394 & 0x7F) << v337;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v337 += 7;
          v12 = v338++ >= 9;
          if (v12)
          {
            v343 = 0;
            goto LABEL_655;
          }
        }

        v343 = (v339 != 0) & ~[a2 hasError];
LABEL_655:
        [a1 setIsMiniSinfAvailable:v343];
        continue;
      case 0x1Eu:
        v344 = 0;
        v345 = 0;
        v346 = 0;
        while (1)
        {
          v394 = 0;
          v347 = [a2 position] + 1;
          if (v347 >= [a2 position] && (v348 = objc_msgSend(a2, "position") + 1, v348 <= objc_msgSend(a2, "length")))
          {
            v349 = [a2 data];
            [v349 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v346 |= (v394 & 0x7F) << v344;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v344 += 7;
          v12 = v345++ >= 9;
          if (v12)
          {
            v350 = 0;
            goto LABEL_657;
          }
        }

        v350 = (v346 != 0) & ~[a2 hasError];
LABEL_657:
        [a1 setIsSharePlayPlayback:v350];
        continue;
      case 0x1Fu:
        v281 = 0;
        v282 = 0;
        v283 = 0;
        while (1)
        {
          v394 = 0;
          v284 = [a2 position] + 1;
          if (v284 >= [a2 position] && (v285 = objc_msgSend(a2, "position") + 1, v285 <= objc_msgSend(a2, "length")))
          {
            v286 = [a2 data];
            [v286 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v283 |= (v394 & 0x7F) << v281;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v281 += 7;
          v12 = v282++ >= 9;
          if (v12)
          {
            v287 = 0;
            goto LABEL_637;
          }
        }

        v287 = (v283 != 0) & ~[a2 hasError];
LABEL_637:
        [a1 setIsSuzeLease:v287];
        continue;
      case 0x20u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        while (1)
        {
          v394 = 0;
          v207 = [a2 position] + 1;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
          {
            v209 = [a2 data];
            [v209 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v206 |= (v394 & 0x7F) << v204;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v12 = v205++ >= 9;
          if (v12)
          {
            v210 = 0;
            goto LABEL_605;
          }
        }

        if ([a2 hasError])
        {
          v210 = 0;
        }

        else
        {
          v210 = v206;
        }

LABEL_605:
        [a1 setNetworkConnectionType:v210];
        continue;
      case 0x21u:
        v288 = 0;
        v289 = 0;
        v290 = 0;
        while (1)
        {
          v394 = 0;
          v291 = [a2 position] + 1;
          if (v291 >= [a2 position] && (v292 = objc_msgSend(a2, "position") + 1, v292 <= objc_msgSend(a2, "length")))
          {
            v293 = [a2 data];
            [v293 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v290 |= (v394 & 0x7F) << v288;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v288 += 7;
          v12 = v289++ >= 9;
          if (v12)
          {
            v294 = 0;
            goto LABEL_639;
          }
        }

        v294 = (v290 != 0) & ~[a2 hasError];
LABEL_639:
        [a1 setWasMediaLibraryDatabaseUpgraded:v294];
        continue;
      case 0x22u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        while (1)
        {
          v394 = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v394 & 0x7F) << v99;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v12 = v100++ >= 9;
          if (v12)
          {
            v105 = 0;
            goto LABEL_547;
          }
        }

        v105 = (v101 != 0) & ~[a2 hasError];
LABEL_547:
        [a1 setIsPrimaryUser:v105];
        continue;
      case 0x23u:
        v77 = PBReaderReadString();
        [a1 setErrorResolutionType:v77];
        goto LABEL_480;
      case 0x24u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          v394 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v394 & 0x7F) << v56;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_531;
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

LABEL_531:
        [a1 setEndPointType:v62];
        continue;
      case 0x25u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v394 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v394 & 0x7F) << v63;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_535;
          }
        }

        if ([a2 hasError])
        {
          v69 = 0;
        }

        else
        {
          v69 = v65;
        }

LABEL_535:
        [a1 setRouteType:v69];
        continue;
      case 0x26u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          v394 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v394 & 0x7F) << v35;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_519;
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

LABEL_519:
        [a1 setFormatLayoutValue:v41];
        continue;
      case 0x27u:
        v351 = 0;
        v352 = 0;
        v353 = 0;
        while (1)
        {
          v394 = 0;
          v354 = [a2 position] + 1;
          if (v354 >= [a2 position] && (v355 = objc_msgSend(a2, "position") + 1, v355 <= objc_msgSend(a2, "length")))
          {
            v356 = [a2 data];
            [v356 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v353 |= (v394 & 0x7F) << v351;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v351 += 7;
          v12 = v352++ >= 9;
          if (v12)
          {
            v357 = 0;
            goto LABEL_661;
          }
        }

        if ([a2 hasError])
        {
          v357 = 0;
        }

        else
        {
          v357 = v353;
        }

LABEL_661:
        [a1 setAssetSource:v357];
        continue;
      case 0x28u:
        v309 = 0;
        v310 = 0;
        v311 = 0;
        while (1)
        {
          v394 = 0;
          v312 = [a2 position] + 1;
          if (v312 >= [a2 position] && (v313 = objc_msgSend(a2, "position") + 1, v313 <= objc_msgSend(a2, "length")))
          {
            v314 = [a2 data];
            [v314 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v311 |= (v394 & 0x7F) << v309;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v309 += 7;
          v12 = v310++ >= 9;
          if (v12)
          {
            v315 = 0;
            goto LABEL_647;
          }
        }

        if ([a2 hasError])
        {
          v315 = 0;
        }

        else
        {
          v315 = v311;
        }

LABEL_647:
        [a1 setAssetLocation:v315];
        continue;
      case 0x29u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        while (1)
        {
          v394 = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v394 & 0x7F) << v134;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            v140 = 0;
            goto LABEL_567;
          }
        }

        if ([a2 hasError])
        {
          v140 = 0;
        }

        else
        {
          v140 = v136;
        }

LABEL_567:
        [a1 setSubscriptionType:v140];
        continue;
      case 0x2Au:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        while (1)
        {
          v394 = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v394 & 0x7F) << v218;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v12 = v219++ >= 9;
          if (v12)
          {
            v224 = 0;
            goto LABEL_609;
          }
        }

        v224 = (v220 != 0) & ~[a2 hasError];
LABEL_609:
        [a1 setHasLookupWaitTime:v224];
        continue;
      case 0x2Bu:
        v323 = 0;
        v324 = 0;
        v325 = 0;
        while (1)
        {
          v394 = 0;
          v326 = [a2 position] + 1;
          if (v326 >= [a2 position] && (v327 = objc_msgSend(a2, "position") + 1, v327 <= objc_msgSend(a2, "length")))
          {
            v328 = [a2 data];
            [v328 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v325 |= (v394 & 0x7F) << v323;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v323 += 7;
          v12 = v324++ >= 9;
          if (v12)
          {
            v329 = 0;
            goto LABEL_651;
          }
        }

        v329 = (v325 != 0) & ~[a2 hasError];
LABEL_651:
        [a1 setHasBagWaitTime:v329];
        continue;
      case 0x2Cu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v394 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v394 & 0x7F) << v28;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_515;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_515:
        [a1 setHasLeaseWaitTime:v34];
        continue;
      case 0x2Du:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        while (1)
        {
          v394 = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v394 & 0x7F) << v85;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            v91 = 0;
            goto LABEL_541;
          }
        }

        v91 = (v87 != 0) & ~[a2 hasError];
LABEL_541:
        [a1 setHasSuzeLeaseWaitTime:v91];
        continue;
      case 0x2Eu:
        v295 = 0;
        v296 = 0;
        v297 = 0;
        while (1)
        {
          v394 = 0;
          v298 = [a2 position] + 1;
          if (v298 >= [a2 position] && (v299 = objc_msgSend(a2, "position") + 1, v299 <= objc_msgSend(a2, "length")))
          {
            v300 = [a2 data];
            [v300 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v297 |= (v394 & 0x7F) << v295;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v295 += 7;
          v12 = v296++ >= 9;
          if (v12)
          {
            v301 = 0;
            goto LABEL_641;
          }
        }

        v301 = (v297 != 0) & ~[a2 hasError];
LABEL_641:
        [a1 setHasSubscriptionAssetLoadWaitTime:v301];
        continue;
      case 0x2Fu:
        v379 = 0;
        v380 = 0;
        v381 = 0;
        while (1)
        {
          v394 = 0;
          v382 = [a2 position] + 1;
          if (v382 >= [a2 position] && (v383 = objc_msgSend(a2, "position") + 1, v383 <= objc_msgSend(a2, "length")))
          {
            v384 = [a2 data];
            [v384 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v381 |= (v394 & 0x7F) << v379;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v379 += 7;
          v12 = v380++ >= 9;
          if (v12)
          {
            v385 = 0;
            goto LABEL_673;
          }
        }

        v385 = (v381 != 0) & ~[a2 hasError];
LABEL_673:
        [a1 setHasMediaRedownloadWaitTime:v385];
        continue;
      case 0x30u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v394 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v394 & 0x7F) << v49;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_527;
          }
        }

        if ([a2 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_527:
        [a1 setCmInitialStartupItemCreationToReadyToPlayDurationInMs:v55];
        continue;
      case 0x31u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        while (1)
        {
          v394 = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v394 & 0x7F) << v106;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v112 = 0;
            goto LABEL_551;
          }
        }

        if ([a2 hasError])
        {
          v112 = 0;
        }

        else
        {
          v112 = v108;
        }

LABEL_551:
        [a1 setCmInitialStartupItemCreationToLtluDurationInMs:v112];
        continue;
      case 0x32u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        while (1)
        {
          v394 = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v394 & 0x7F) << v120;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            v126 = 0;
            goto LABEL_559;
          }
        }

        if ([a2 hasError])
        {
          v126 = 0;
        }

        else
        {
          v126 = v122;
        }

LABEL_559:
        [a1 setMasterPlaylistConnectionTlsHandshakeDurationInMs:v126];
        continue;
      case 0x33u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v394 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v394 & 0x7F) << v21;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_513;
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

LABEL_513:
        [a1 setMasterPlaylistRequestDurationInMs:v27];
        continue;
      case 0x34u:
        v386 = 0;
        v387 = 0;
        v388 = 0;
        while (1)
        {
          v394 = 0;
          v389 = [a2 position] + 1;
          if (v389 >= [a2 position] && (v390 = objc_msgSend(a2, "position") + 1, v390 <= objc_msgSend(a2, "length")))
          {
            v391 = [a2 data];
            [v391 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v388 |= (v394 & 0x7F) << v386;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v386 += 7;
          v12 = v387++ >= 9;
          if (v12)
          {
            v392 = 0;
            goto LABEL_677;
          }
        }

        if ([a2 hasError])
        {
          v392 = 0;
        }

        else
        {
          v392 = v388;
        }

LABEL_677:
        [a1 setSubPlaylistConnectionTlsHandshakeDurationInMs:v392];
        continue;
      case 0x35u:
        v372 = 0;
        v373 = 0;
        v374 = 0;
        while (1)
        {
          v394 = 0;
          v375 = [a2 position] + 1;
          if (v375 >= [a2 position] && (v376 = objc_msgSend(a2, "position") + 1, v376 <= objc_msgSend(a2, "length")))
          {
            v377 = [a2 data];
            [v377 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v374 |= (v394 & 0x7F) << v372;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v372 += 7;
          v12 = v373++ >= 9;
          if (v12)
          {
            v378 = 0;
            goto LABEL_671;
          }
        }

        if ([a2 hasError])
        {
          v378 = 0;
        }

        else
        {
          v378 = v374;
        }

LABEL_671:
        [a1 setSubPlaylistRequestDurationInMs:v378];
        continue;
      case 0x36u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v394 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v394 & 0x7F) << v42;
          if ((v394 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_523;
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

LABEL_523:
        [a1 setContentConnectionTlsHandshakeDurationInMs:v48];
        continue;
      case 0x37u:
        v365 = 0;
        v366 = 0;
        v367 = 0;
        break;
      case 0x38u:
        v77 = PBReaderReadString();
        [a1 setAudioQueueType:v77];
LABEL_480:

        continue;
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
      v394 = 0;
      v368 = [a2 position] + 1;
      if (v368 >= [a2 position] && (v369 = objc_msgSend(a2, "position") + 1, v369 <= objc_msgSend(a2, "length")))
      {
        v370 = [a2 data];
        [v370 getBytes:&v394 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v367 |= (v394 & 0x7F) << v365;
      if ((v394 & 0x80) == 0)
      {
        break;
      }

      v365 += 7;
      v12 = v366++ >= 9;
      if (v12)
      {
        v371 = 0;
        goto LABEL_667;
      }
    }

    if ([a2 hasError])
    {
      v371 = 0;
    }

    else
    {
      v371 = v367;
    }

LABEL_667:
    [a1 setContentFirstSegmentDurationInMs:v371];
LABEL_678:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MWTSchemaMWTVMCPUStatsReportedReadFrom(void *a1, void *a2)
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
      v79 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v79 & 0x7F) << v6;
      if ((v79 & 0x80) == 0)
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
          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            v87 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v87 & 0x7F) << v50;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v12 = v51++ >= 9;
            if (v12)
            {
              v56 = 0;
              goto LABEL_132;
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

LABEL_132:
          [a1 setCpuTicksUser:v56];
          continue;
        }

        if (v14 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v86 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v86 & 0x7F) << v29;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_120;
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

LABEL_120:
          [a1 setCpuTicksIdle:v35];
          continue;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            v80 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v80 & 0x7F) << v43;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v12 = v44++ >= 9;
            if (v12)
            {
              v49 = 0;
              goto LABEL_128;
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

LABEL_128:
          [a1 setSnapshotStage:v49];
          continue;
        }

        if (v14 == 2)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v88 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v88 & 0x7F) << v22;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_116;
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

LABEL_116:
          [a1 setCpuTicksSystem:v28];
          continue;
        }
      }
    }

    else if (v14 <= 6)
    {
      if (v14 == 5)
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        while (1)
        {
          v85 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v85 & 0x7F) << v64;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v70 = 0;
            goto LABEL_140;
          }
        }

        if ([a2 hasError])
        {
          v70 = 0;
        }

        else
        {
          v70 = v66;
        }

LABEL_140:
        [a1 setCpuTicksNice:v70];
        continue;
      }

      if (v14 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          v84 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v84 & 0x7F) << v36;
          if ((v84 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v42 = 0;
            goto LABEL_124;
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

LABEL_124:
        [a1 setCompressions:v42];
        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 7:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            v83 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v83 & 0x7F) << v57;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v12 = v58++ >= 9;
            if (v12)
            {
              v63 = 0;
              goto LABEL_136;
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

LABEL_136:
          [a1 setDecompressions:v63];
          continue;
        case 8:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v82 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v82 & 0x7F) << v71;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v12 = v72++ >= 9;
            if (v12)
            {
              v77 = 0;
              goto LABEL_148;
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

LABEL_148:
          [a1 setPageins:v77];
          continue;
        case 9:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v81 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v81 & 0x7F) << v15;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_144;
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

LABEL_144:
          [a1 setFaults:v21];
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

uint64_t NETSchemaNETBluetoothDeviceReadFrom(void *a1, void *a2)
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

    if ((v13 >> 3) == 2)
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

      [a1 setRssi:v25];
    }

    else if ((v13 >> 3) == 1)
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
      [a1 setIndex:v20];
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

uint64_t NETSchemaNETClientEventReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 104)
      {
        if (v13 <= 106)
        {
          if (v13 == 105)
          {
            v14 = objc_alloc_init(NETSchemaNETPeerConnectionFailed);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETPeerConnectionFailedReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setPeerConnectionFailed:v14];
            goto LABEL_60;
          }

          if (v13 == 106)
          {
            v14 = objc_alloc_init(NETSchemaNETNetworkConnectionStatePreparationSnapshotCaptured);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETNetworkConnectionStatePreparationSnapshotCapturedReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setNetworkConnectionStatePreparationSnapshotCaptured:v14];
            goto LABEL_60;
          }
        }

        else
        {
          switch(v13)
          {
            case 'k':
              v14 = objc_alloc_init(NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCapturedReadFrom(v14, a2))
              {
                goto LABEL_67;
              }

              PBReaderRecallMark();
              [a1 setDebugNetworkConnectionStatePreparationSnapshotCaptured:v14];
              goto LABEL_60;
            case 'l':
              v14 = objc_alloc_init(NETSchemaNETNetworkConnectionStateReadySnapshotCaptured);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !NETSchemaNETNetworkConnectionStateReadySnapshotCapturedReadFrom(v14, a2))
              {
                goto LABEL_67;
              }

              PBReaderRecallMark();
              [a1 setNetworkConnectionStateReadySnapshotCaptured:v14];
              goto LABEL_60;
            case 'm':
              v14 = objc_alloc_init(NETSchemaNETDebugNetworkConnectionStateReadySnapshotCaptured);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !NETSchemaNETDebugNetworkConnectionStateReadySnapshotCapturedReadFrom(v14, a2))
              {
                goto LABEL_67;
              }

              PBReaderRecallMark();
              [a1 setDebugNetworkConnectionStateReadySnapshotCaptured:v14];
              goto LABEL_60;
          }
        }
      }

      else if (v13 <= 101)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(NETSchemaNETClientEventMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !NETSchemaNETClientEventMetadataReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

          PBReaderRecallMark();
          [a1 setEventMetadata:v14];
          goto LABEL_60;
        }

        if (v13 == 101)
        {
          v14 = objc_alloc_init(NETSchemaNETSessionConnectionHttpHeaderCreated);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !NETSchemaNETSessionConnectionHttpHeaderCreatedReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

          PBReaderRecallMark();
          [a1 setSessionConnectionHttpHeaderCreated:v14];
          goto LABEL_60;
        }
      }

      else
      {
        switch(v13)
        {
          case 'f':
            v14 = objc_alloc_init(NETSchemaNETSessionConnectionSnapshotCaptured);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETSessionConnectionSnapshotCapturedReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setSessionConnectionSnapshotCaptured:v14];
            goto LABEL_60;
          case 'g':
            v14 = objc_alloc_init(NETSchemaNETDebugSessionConnectionSnapshotCaptured);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETDebugSessionConnectionSnapshotCapturedReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setDebugSessionConnectionSnapshotCaptured:v14];
            goto LABEL_60;
          case 'h':
            v14 = objc_alloc_init(NETSchemaNETSessionConnectionFailed);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETSessionConnectionFailedReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setSessionConnectionFailed:v14];
LABEL_60:

            goto LABEL_61;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NETSchemaNETClientEventMetadataReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(SISchemaUUID);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
        {
          goto LABEL_45;
        }

        PBReaderRecallMark();
        [a1 setNetworkConnectionId:v21];
LABEL_35:

        goto LABEL_42;
      }

      if (v13 == 3)
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
        [a1 setProvider:v20];
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
    [a1 setNetId:v21];
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCapturedReadFrom(void *a1, void *a2)
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
        LOBYTE(v52) = 0;
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = objc_alloc_init(NETSchemaNETPathInterface);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETPathInterfaceReadFrom(v14, a2))
            {
LABEL_100:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPathInterfaces:v14];
            }

            goto LABEL_82;
          }

          if (v13 == 8)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
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
            [a1 setStatus:v35];
            goto LABEL_97;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v52 & 0x7F) << v43;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_88;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_88:
            [a1 setHasIpv4:v49];
            goto LABEL_97;
          }

          if (v13 == 6)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v52 & 0x7F) << v15;
              if ((v52 & 0x80) == 0)
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
            [a1 setIsConstrained:v21];
            goto LABEL_97;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          [a1 setConnectionInfo:v14];
LABEL_82:

          goto LABEL_97;
        }

        if (v13 == 4)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v52 & 0x7F) << v22;
            if ((v52 & 0x80) == 0)
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
          [a1 setHasIpv6:v28];
          goto LABEL_97;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            LOBYTE(v52) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v52 & 0x7F) << v36;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v42 = 0;
              goto LABEL_86;
            }
          }

          v42 = (v38 != 0) & ~[a2 hasError];
LABEL_86:
          [a1 setIsExpensive:v42];
          goto LABEL_97;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(NETSchemaNETEndpoint);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !NETSchemaNETEndpointReadFrom(v14, a2))
          {
            goto LABEL_100;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addPathGateways:v14];
          }

          goto LABEL_82;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_97:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NETSchemaNETDebugNetworkConnectionStateReadySnapshotCapturedReadFrom(void *a1, void *a2)
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
        if (v13 == 4)
        {
          v14 = objc_alloc_init(NETSchemaNETHandShakeProtocol);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !NETSchemaNETHandShakeProtocolReadFrom(v14, a2))
          {
LABEL_52:

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addConnectionEstablishmentProtocols:v14];
          }

          goto LABEL_44;
        }

        if (v13 == 3)
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
              goto LABEL_48;
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

LABEL_48:
          [a1 setDurationInMs:v21];
          goto LABEL_49;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(NETSchemaNETEstablishmentResolution);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !NETSchemaNETEstablishmentResolutionReadFrom(v14, a2))
          {
            goto LABEL_52;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addResolution:v14];
          }

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(NETSchemaNETProxyConfiguration);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !NETSchemaNETProxyConfigurationReadFrom(v14, a2))
          {
            goto LABEL_52;
          }

          PBReaderRecallMark();
          [a1 setProxyConfiguration:v14];
LABEL_44:

          goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NETSchemaNETDebugNetworkInterfaceReadFrom(void *a1, void *a2)
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
      LOBYTE(v135[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v135[0] & 0x7F) << v5;
      if ((v135[0] & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v135[0] & 0x7F) << v13;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_219:
            [a1 setRttCurrent:v19];
            goto LABEL_244;
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

        goto LABEL_219;
      case 2u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v135[0] & 0x7F) << v90;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v11 = v91++ >= 9;
          if (v11)
          {
            v96 = 0;
            goto LABEL_223;
          }
        }

        if ([a2 hasError])
        {
          v96 = 0;
        }

        else
        {
          v96 = v92;
        }

LABEL_223:
        [a1 setRttSmoothed:v96];
        goto LABEL_244;
      case 3u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v135[0] & 0x7F) << v62;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v68 = 0;
            goto LABEL_203;
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

LABEL_203:
        [a1 setRttVariance:v68];
        goto LABEL_244;
      case 4u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v135[0] & 0x7F) << v76;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
          if (v11)
          {
            v82 = 0;
            goto LABEL_211;
          }
        }

        if ([a2 hasError])
        {
          v82 = 0;
        }

        else
        {
          v82 = v78;
        }

LABEL_211:
        [a1 setRttBest:v82];
        goto LABEL_244;
      case 5u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v135[0] & 0x7F) << v41;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v47 = 0;
            goto LABEL_191;
          }
        }

        if ([a2 hasError])
        {
          v47 = 0;
        }

        else
        {
          v47 = v43;
        }

LABEL_191:
        [a1 setPacketsSent:v47];
        goto LABEL_244;
      case 6u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v135[0] & 0x7F) << v98;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
          if (v11)
          {
            v104 = 0;
            goto LABEL_227;
          }
        }

        if ([a2 hasError])
        {
          v104 = 0;
        }

        else
        {
          v104 = v100;
        }

LABEL_227:
        [a1 setPacketsReceived:v104];
        goto LABEL_244;
      case 7u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v135[0] & 0x7F) << v112;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v11 = v113++ >= 9;
          if (v11)
          {
            v118 = 0;
            goto LABEL_235;
          }
        }

        if ([a2 hasError])
        {
          v118 = 0;
        }

        else
        {
          v118 = v114;
        }

LABEL_235:
        [a1 setBytesSent:v118];
        goto LABEL_244;
      case 8u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v135[0] & 0x7F) << v83;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v11 = v84++ >= 9;
          if (v11)
          {
            v89 = 0;
            goto LABEL_215;
          }
        }

        if ([a2 hasError])
        {
          v89 = 0;
        }

        else
        {
          v89 = v85;
        }

LABEL_215:
        [a1 setBytesRetransmitted:v89];
        goto LABEL_244;
      case 9u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v129 = [a2 position] + 1;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
          {
            v131 = [a2 data];
            [v131 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v128 |= (v135[0] & 0x7F) << v126;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v11 = v127++ >= 9;
          if (v11)
          {
            v132 = 0;
            goto LABEL_243;
          }
        }

        if ([a2 hasError])
        {
          v132 = 0;
        }

        else
        {
          v132 = v128;
        }

LABEL_243:
        [a1 setBytesUnacked:v132];
        goto LABEL_244;
      case 0xAu:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v135[0] & 0x7F) << v55;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v61 = 0;
            goto LABEL_199;
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

LABEL_199:
        [a1 setBytesReceived:v61];
        goto LABEL_244;
      case 0xBu:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v135[0] & 0x7F) << v119;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v11 = v120++ >= 9;
          if (v11)
          {
            v125 = 0;
            goto LABEL_239;
          }
        }

        if ([a2 hasError])
        {
          v125 = 0;
        }

        else
        {
          v125 = v121;
        }

LABEL_239:
        [a1 setDuplicateBytesReceived:v125];
        goto LABEL_244;
      case 0xCu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v135[0] & 0x7F) << v34;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v40 = 0;
            goto LABEL_187;
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

LABEL_187:
        [a1 setOutOfOrderBytesReceived:v40];
        goto LABEL_244;
      case 0xDu:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v135[0] & 0x7F) << v48;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v54 = 0;
            goto LABEL_195;
          }
        }

        if ([a2 hasError])
        {
          v54 = 0;
        }

        else
        {
          v54 = v50;
        }

LABEL_195:
        [a1 setSendBufferBytes:v54];
        goto LABEL_244;
      case 0xEu:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v135[0] & 0x7F) << v105;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v111 = 0;
            goto LABEL_231;
          }
        }

        if ([a2 hasError])
        {
          v111 = 0;
        }

        else
        {
          v111 = v107;
        }

LABEL_231:
        [a1 setSendBandwidth:v111];
        goto LABEL_244;
      case 0xFu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v135[0] & 0x7F) << v27;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_183;
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

LABEL_183:
        [a1 setSynRetransmits:v33];
        goto LABEL_244;
      case 0x10u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v135[0] & 0x7F) << v69;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v11 = v70++ >= 9;
          if (v11)
          {
            v75 = 0;
            goto LABEL_207;
          }
        }

        if ([a2 hasError])
        {
          v75 = 0;
        }

        else
        {
          v75 = v71;
        }

LABEL_207:
        [a1 setTfoSynDataAcked:v75];
        goto LABEL_244;
      case 0x11u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          LOBYTE(v135[0]) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:v135 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v135[0] & 0x7F) << v20;
          if ((v135[0] & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
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
          v26 = v22;
        }

LABEL_179:
        [a1 setSubflowSwitchCount:v26];
        goto LABEL_244;
      case 0x12u:
        v97 = objc_alloc_init(NETSchemaNETNetworkInterface);
        v135[0] = 0;
        v135[1] = 0;
        if (PBReaderPlaceMark() && NETSchemaNETNetworkInterfaceReadFrom(v97, a2))
        {
          PBReaderRecallMark();
          [a1 setNetworkInterface:v97];

LABEL_244:
          v133 = [a2 position];
          if (v133 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_244;
    }
  }
}

uint64_t NETSchemaNETDebugSessionConnectionNetworkReadFrom(void *a1, void *a2)
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
      LOBYTE(v36) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (LOBYTE(v36) & 0x7F) << v6;
      if ((LOBYTE(v36) & 0x80) == 0)
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
        v36 = 0.0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setOpenTimeInMs:v36];
        continue;
      }

      if (v14 == 4)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v36) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (LOBYTE(v36) & 0x7F) << v17;
          if ((LOBYTE(v36) & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            v23 = 0;
            goto LABEL_52;
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

LABEL_52:
        [a1 setConnectedSubflowCount:v23];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        while (1)
        {
          LOBYTE(v36) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (LOBYTE(v36) & 0x7F) << v25;
          if ((LOBYTE(v36) & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v12 = v26++ >= 9;
          if (v12)
          {
            v31 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v27;
        }

LABEL_56:
        [a1 setWiFiPhyMode:v31];
        continue;
      }

      if (v14 == 2)
      {
        v36 = 0.0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setSignalStrengthBars:v36];
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

uint64_t NETSchemaNETDebugSessionConnectionPingInfoReadFrom(void *a1, void *a2)
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
      v34 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v34 & 0x7F) << v6;
      if ((v34 & 0x80) == 0)
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
      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v36 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v36 & 0x7F) << v24;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v12 = v25++ >= 9;
        if (v12)
        {
          v30 = 0;
          goto LABEL_47;
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

LABEL_47:
      [a1 setPingCount:v30];
    }

    else if (v14 == 2)
    {
      v33 = 0.0;
      v22 = [a2 position] + 8;
      if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
      {
        v32 = [a2 data];
        [v32 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setMeanPingInMs:v33];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v35 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v35 & 0x7F) << v15;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_51;
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

LABEL_51:
      [a1 setUnacknowledgedPingCount:v21];
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

uint64_t NETSchemaNETDebugSessionConnectionQualityReadFrom(void *a1, void *a2)
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
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_76:
        [a1 setSymptomsWiFiHistorical:v43];
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
            goto LABEL_68;
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

LABEL_68:
        [a1 setSymptomsWiFiInstant:v28];
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
            goto LABEL_72;
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

LABEL_72:
        [a1 setSymptomsCellularHistorical:v36];
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
            goto LABEL_64;
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

LABEL_64:
        [a1 setSymptomsCellularInstant:v21];
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

uint64_t NETSchemaNETDebugSessionConnectionSnapshotCapturedReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
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
              goto LABEL_51;
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

LABEL_51:
          [a1 setSequenceNumber:v21];
          goto LABEL_52;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(NETSchemaNETDebugSessionConnectionNetwork);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !NETSchemaNETDebugSessionConnectionNetworkReadFrom(v14, a2))
          {
LABEL_55:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setNetwork:v14];
          goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(NETSchemaNETDebugNetworkInterface);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETDebugNetworkInterfaceReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addNetworkInterfaces:v14];
            }

            goto LABEL_36;
          case 5:
            v14 = objc_alloc_init(NETSchemaNETDebugSessionConnectionPingInfo);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETDebugSessionConnectionPingInfoReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            [a1 setPingInfo:v14];
            goto LABEL_36;
          case 6:
            v14 = objc_alloc_init(NETSchemaNETDebugSessionConnectionQuality);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETDebugSessionConnectionQualityReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            [a1 setQuality:v14];
LABEL_36:

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

uint64_t NETSchemaNETEndpointReadFrom(void *a1, void *a2)
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
          goto LABEL_47;
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

LABEL_47:
      [a1 setType:v27];
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
      [a1 setPort:v20];
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

uint64_t NETSchemaNETErrorReadFrom(void *a1, void *a2)
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
      [a1 setDomain:v22];
      goto LABEL_32;
    }

    if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setDescription:v22];
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
          goto LABEL_38;
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

LABEL_38:
      [a1 setErrorCode:v21];
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

uint64_t NETSchemaNETEstablishmentResolutionReadFrom(void *a1, void *a2)
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
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

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
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v38 & 0x7F) << v29;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_62;
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

LABEL_62:
          [a1 setDuration:v35];
          goto LABEL_71;
        }

        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_70;
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

LABEL_70:
          [a1 setResolutionSource:v27];
          goto LABEL_71;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = objc_alloc_init(NETSchemaNETEndpoint);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETEndpointReadFrom(v28, a2))
            {
LABEL_74:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setSuccessfulEndpoint:v28];
            goto LABEL_47;
          case 4:
            v28 = objc_alloc_init(NETSchemaNETEndpoint);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !NETSchemaNETEndpointReadFrom(v28, a2))
            {
              goto LABEL_74;
            }

            PBReaderRecallMark();
            [a1 setPreferredEndpoint:v28];
LABEL_47:

            goto LABEL_71;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v38) = 0;
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
                goto LABEL_66;
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

LABEL_66:
            [a1 setEndpointCount:v20];
            goto LABEL_71;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_71:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NETSchemaNETHandShakeProtocolReadFrom(void *a1, void *a2)
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
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
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
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v38 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38 & 0x7F) << v29;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v35 = 0;
          goto LABEL_57;
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

LABEL_57:
      [a1 setProtocol:v35];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v39 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v39 & 0x7F) << v22;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_53;
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

LABEL_53:
      [a1 setHandShakeRTT:v28];
    }

    else if (v14 == 3)
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
          goto LABEL_61;
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

LABEL_61:
      [a1 setHandShakeDuration:v21];
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

uint64_t NETSchemaNETNetworkConnectionStatePreparationSnapshotCapturedReadFrom(void *a1, void *a2)
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
      [a1 setHasDNS:v20];
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

uint64_t NETSchemaNETNetworkConnectionStateReadySnapshotCapturedReadFrom(void *a1, void *a2)
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
      v29 = PBReaderReadString();
      [a1 setConnectionInfo:v29];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v33 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v33 & 0x7F) << v22;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v28 = 0;
          goto LABEL_45;
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

LABEL_45:
      [a1 setConnectionEstablishmentPreviousAttemptCount:v28];
    }

    else if (v14 == 3)
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
      [a1 setConnectionEstablishmentAttemptDelay:v21];
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

uint64_t NETSchemaNETNetworkInterfaceReadFrom(void *a1, void *a2)
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
      [a1 setName:v21];
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
      [a1 setConnectionType:v20];
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

uint64_t NETSchemaNETPathInterfaceReadFrom(void *a1, void *a2)
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
        v32 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

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
      [a1 setType:v29];
    }

    else if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setName:v22];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v33 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v33 & 0x7F) << v15;
        if ((v33 & 0x80) == 0)
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
      [a1 setIndex:v21];
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

uint64_t NETSchemaNETPeerConnectionFailedReadFrom(void *a1, void *a2)
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
        LOBYTE(v55[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v55[0]) & 0x7F) << v5;
        if ((LOBYTE(v55[0]) & 0x80) == 0)
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

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v45 = 0;
          v46 = 0;
          v47 = 0;
          while (1)
          {
            LOBYTE(v55[0]) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (LOBYTE(v55[0]) & 0x7F) << v45;
            if ((LOBYTE(v55[0]) & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v51 = 0;
              goto LABEL_90;
            }
          }

          v51 = (v47 != 0) & ~[a2 hasError];
LABEL_90:
          [a1 setIsCloudConnected:v51];
          goto LABEL_93;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v55[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (LOBYTE(v55[0]) & 0x7F) << v16;
            if ((LOBYTE(v55[0]) & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_88;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_88:
          [a1 setIsConnected:v22];
          goto LABEL_93;
        }

LABEL_52:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_93;
      }

      v30 = objc_alloc_init(NETSchemaNETBluetoothDevice);
      v55[0] = 0.0;
      v55[1] = 0.0;
      if (!PBReaderPlaceMark() || !NETSchemaNETBluetoothDeviceReadFrom(v30, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      if (v30)
      {
        [a1 addConnectedBtDevices:v30];
      }

LABEL_93:
      v53 = [a2 position];
      if (v53 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (LOBYTE(v55[0]) & 0x7F) << v38;
          if ((LOBYTE(v55[0]) & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v44 = 0;
            goto LABEL_84;
          }
        }

        v44 = (v40 != 0) & ~[a2 hasError];
LABEL_84:
        [a1 setIsNearby:v44];
        goto LABEL_93;
      }

      if (v13 == 7)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (LOBYTE(v55[0]) & 0x7F) << v23;
          if ((LOBYTE(v55[0]) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_86;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_86:
        [a1 setIsPreferringBtClassic:v29];
        goto LABEL_93;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (LOBYTE(v55[0]) & 0x7F) << v31;
          if ((LOBYTE(v55[0]) & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_82;
          }
        }

        v37 = (v33 != 0) & ~[a2 hasError];
LABEL_82:
        [a1 setHasDevice:v37];
        goto LABEL_93;
      }

      if (v13 == 5)
      {
        v55[0] = 0.0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v52 = [a2 data];
          [v52 getBytes:v55 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setTimeSinceLastNearbyChangeInSeconds:v55[0]];
        goto LABEL_93;
      }
    }

    goto LABEL_52;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NETSchemaNETProxyConfigurationReadFrom(void *a1, void *a2)
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
      [a1 setIsProxyConfigured:v27];
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
      [a1 setUsingConfiguredProxy:v20];
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

uint64_t NETSchemaNETSessionConnectionFailedReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
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
                goto LABEL_116;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_116:
            [a1 setIsDormant:v49];
            goto LABEL_127;
          }

          if (v13 == 7)
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
                goto LABEL_110;
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

LABEL_110:
            [a1 setSendBufferSize:v35];
            goto LABEL_127;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v21 = PBReaderReadString();
              [a1 setPolicyId:v21];
LABEL_100:

              goto LABEL_127;
            case 9:
              v21 = objc_alloc_init(NETSchemaNETError);
              v66 = 0;
              v67 = 0;
              if (!PBReaderPlaceMark() || !NETSchemaNETErrorReadFrom(v21, a2))
              {
LABEL_130:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setError:v21];
              goto LABEL_100;
            case 0xA:
              v21 = objc_alloc_init(NETSchemaNETError);
              v66 = 0;
              v67 = 0;
              if (!PBReaderPlaceMark() || !NETSchemaNETErrorReadFrom(v21, a2))
              {
                goto LABEL_130;
              }

              PBReaderRecallMark();
              [a1 setUnderlyingError:v21];
              goto LABEL_100;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
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
              goto LABEL_114;
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

LABEL_114:
          [a1 setConnectionType:v42];
          goto LABEL_127;
        }

        if (v13 == 2)
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
              goto LABEL_106;
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

LABEL_106:
          [a1 setConnectionMode:v28];
          goto LABEL_127;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v66 & 0x7F) << v50;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v56 = 0;
                goto LABEL_120;
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

LABEL_120:
            [a1 setSessionType:v56];
            goto LABEL_127;
          case 4:
            v57 = 0;
            v58 = 0;
            v59 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v59 |= (v66 & 0x7F) << v57;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              v11 = v58++ >= 9;
              if (v11)
              {
                v63 = 0;
                goto LABEL_126;
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

LABEL_126:
            [a1 setNetworkSessionState:v63];
            goto LABEL_127;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

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
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_122;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_122:
            [a1 setIsWwanPreferred:v20];
            goto LABEL_127;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_127:
      v64 = [a2 position];
    }

    while (v64 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}