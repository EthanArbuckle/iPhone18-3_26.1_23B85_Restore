uint64_t PLUSSchemaPLUSSuggestionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(PLUSSchemaPLUSSuggestionMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PLUSSchemaPLUSSuggestionMetadataReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setSuggestionMetadata:v13];
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

    v13 = objc_alloc_init(PLUSSchemaPLUSSuggestionValue);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PLUSSchemaPLUSSuggestionValueReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setSuggestionValue:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PLUSSchemaPLUSSuggestionAccuracySignalReadFrom(void *a1, void *a2)
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
      [a1 setSignalType:v27];
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
      [a1 setSignalSource:v20];
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

uint64_t PLUSSchemaPLUSSuggestionDomainMetadataReadFrom(void *a1, void *a2)
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
      [a1 setSuggestionGenerationDomain:v20];
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

uint64_t PLUSSchemaPLUSSuggestionDomainOutcomeReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(PLUSSchemaPLUSMediaSuggestionOutcome);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !PLUSSchemaPLUSMediaSuggestionOutcomeReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setMediaOutcome:v13];
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

uint64_t PLUSSchemaPLUSSuggestionGeneratedReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(PLUSSchemaPLUSChangeDataCaptureMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !PLUSSchemaPLUSChangeDataCaptureMetadataReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setSuggestionChangeDataCaptureMetadata:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(PLUSSchemaPLUSSuggestionDomainMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !PLUSSchemaPLUSSuggestionDomainMetadataReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setSuggestionDomainMetadata:v14];
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

    v14 = objc_alloc_init(PLUSSchemaPLUSSuggestion);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !PLUSSchemaPLUSSuggestionReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setGeneratedSuggestion:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PLUSSchemaPLUSSuggestionMatchResultReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SISchemaUUID);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setSuggestionId:v13];
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

    v13 = objc_alloc_init(PLUSSchemaPLUSSuggestion);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PLUSSchemaPLUSSuggestionReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setGeneratedSuggestion:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PLUSSchemaPLUSSuggestionMetadataReadFrom(void *a1, void *a2)
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
      [a1 setSurfacedBeforeStatus:v20];
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

uint64_t PLUSSchemaPLUSSuggestionOutcomeReportedReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(PLUSSchemaPLUSSuggestionDomainMetadata);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PLUSSchemaPLUSSuggestionDomainMetadataReadFrom(v21, a2))
          {
LABEL_54:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setSuggestionDomainMetadata:v21];
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(SISchemaUUID);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
          {
            goto LABEL_54;
          }

          PBReaderRecallMark();
          [a1 setSuggestionLinkId:v21];
          goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            PBReaderRecallMark();
            [a1 setOriginalRequestId:v21];
            goto LABEL_44;
          case 5:
            v21 = objc_alloc_init(PLUSSchemaPLUSSuggestionDomainOutcome);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PLUSSchemaPLUSSuggestionDomainOutcomeReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            PBReaderRecallMark();
            [a1 setDomainOutcome:v21];
LABEL_44:

            goto LABEL_51;
          case 4:
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
            [a1 setSuggestionOutcome:v20];
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

uint64_t PLUSSchemaPLUSSuggestionValueReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 101)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(PLUSSchemaPLUSUniversalSuggestion);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PLUSSchemaPLUSUniversalSuggestionReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setUniversalSuggestion:v13];
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

    v13 = objc_alloc_init(PLUSSchemaPLUSMediaSuggestion);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PLUSSchemaPLUSMediaSuggestionReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setMediaSuggestion:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PLUSSchemaPLUSTMDCCorrectedPronunciationTier1ReadFrom(void *a1, void *a2)
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
      v17 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v17 & 0x7F) << v6;
      if ((v17 & 0x80) == 0)
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

    v14 = v13 >> 3;
    if ((v13 >> 3) == 3)
    {
      v15 = PBReaderReadString();
      [a1 setNicknamePhonemes:v15];
      goto LABEL_24;
    }

    if (v14 == 2)
    {
      v15 = PBReaderReadString();
      [a1 setLastNamePhonemes:v15];
      goto LABEL_24;
    }

    if (v14 == 1)
    {
      v15 = PBReaderReadString();
      [a1 setFirstNamePhonemes:v15];
LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t PLUSSchemaPLUSTMDCGroundTruthReadFrom(void *a1, void *a2)
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
        LOBYTE(v48) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v48) & 0x7F) << v5;
        if ((LOBYTE(v48) & 0x80) == 0)
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
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v48) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (LOBYTE(v48) & 0x7F) << v29;
                if ((LOBYTE(v48) & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_100;
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

LABEL_100:
              [a1 setSelfLogSource:v35];
              goto LABEL_77;
            case 0xB:
              v39 = 0;
              v40 = 0;
              v41 = 0;
              while (1)
              {
                LOBYTE(v48) = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (LOBYTE(v48) & 0x7F) << v39;
                if ((LOBYTE(v48) & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v11 = v40++ >= 9;
                if (v11)
                {
                  v45 = 0;
                  goto LABEL_102;
                }
              }

              v45 = (v41 != 0) & ~[a2 hasError];
LABEL_102:
              [a1 setIsTmdcPluginEnabled:v45];
              goto LABEL_77;
            case 0xC:
              v22 = 0;
              v23 = 0;
              v24 = 0;
              while (1)
              {
                LOBYTE(v48) = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (LOBYTE(v48) & 0x7F) << v22;
                if ((LOBYTE(v48) & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v11 = v23++ >= 9;
                if (v11)
                {
                  v28 = 0;
                  goto LABEL_96;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_96:
              [a1 setIsCorrectionEligible:v28];
              goto LABEL_77;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setTtsSuggestedPhonemes:v14];
LABEL_76:

              goto LABEL_77;
            case 8:
              v14 = objc_alloc_init(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1);
              v48 = 0.0;
              v49 = 0;
              if (!PBReaderPlaceMark() || !PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1ReadFrom(v14, a2))
              {
LABEL_107:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setSiriCurrentPronunciation:v14];
              goto LABEL_76;
            case 9:
              v14 = objc_alloc_init(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1);
              v48 = 0.0;
              v49 = 0;
              if (!PBReaderPlaceMark() || !PLUSSchemaPLUSTMDCCorrectedPronunciationTier1ReadFrom(v14, a2))
              {
                goto LABEL_107;
              }

              PBReaderRecallMark();
              [a1 setCorrectedPronunciation:v14];
              goto LABEL_76;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            [a1 setTtsCurrentPhonemes:v14];
            goto LABEL_76;
          case 5:
            v48 = 0.0;
            v37 = [a2 position] + 8;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v48 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setPhonemesToPhonemesDistance:v48];
            goto LABEL_77;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v48) = 0;
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

              v17 |= (LOBYTE(v48) & 0x7F) << v15;
              if ((LOBYTE(v48) & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_94;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_94:
            [a1 setIsTTSMispronounced:v21];
            goto LABEL_77;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SISchemaUUID);
            v48 = 0.0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_107;
            }

            PBReaderRecallMark();
            [a1 setGroundTruthId:v14];
            goto LABEL_76;
          case 2:
            v14 = objc_alloc_init(SISchemaUUID);
            v48 = 0.0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_107;
            }

            PBReaderRecallMark();
            [a1 setAsrRawRecognitionLinkId:v14];
            goto LABEL_76;
          case 3:
            v14 = objc_alloc_init(SISchemaUUID);
            v48 = 0.0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_107;
            }

            PBReaderRecallMark();
            [a1 setAsrPostItnLinkId:v14];
            goto LABEL_76;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PLUSSchemaPLUSTMDCGroundTruthGeneratedReadFrom(void *a1, void *a2)
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
        [a1 setOriginalRequestId:v14];
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
        [a1 setOriginalPlusId:v14];
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

    v14 = objc_alloc_init(PLUSSchemaPLUSTMDCGroundTruth);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !PLUSSchemaPLUSTMDCGroundTruthReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setGroundTruth:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1ReadFrom(void *a1, void *a2)
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
      [a1 setPhonemes:v21];
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
      [a1 setSource:v20];
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

uint64_t PLUSSchemaPLUSUniversalSuggestionReadFrom(void *a1, void *a2)
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
      v19 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v19 & 0x7F) << v6;
      if ((v19 & 0x80) == 0)
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
      v18 = 0.0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v17 = [a2 data];
        [v17 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      [a1 setConfidence:v18];
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

uint64_t PLUSSchemaPLUSUSOGraphTier1ReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(USOSchemaUSOGraphTier1);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !USOSchemaUSOGraphTier1ReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setUsoGraphTier1:v13];
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

uint64_t PNRODSchemaPNRErrorReadFrom(void *a1, void *a2)
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
      [a1 setDomain:v29];
    }

    else if (v14 == 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v32 = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v32 & 0x7F) << v22;
        if ((v32 & 0x80) == 0)
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
      [a1 setCode:v28];
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
      [a1 setSource:v21];
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

uint64_t PNRODSchemaPNRODClientEventReadFrom(void *a1, void *a2)
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
            v14 = objc_alloc_init(PNRODSchemaPNRODIntelligenceFlowSessionSummary);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODIntelligenceFlowSessionSummaryReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setPnrodIntelligenceFlowSessionSummary:v14];
            goto LABEL_60;
          }

          if (v13 == 106)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummaryReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setPnrodPNRODIntelligenceFlowPlannerComponentSummary:v14];
            goto LABEL_60;
          }
        }

        else
        {
          switch(v13)
          {
            case 'k':
              v14 = objc_alloc_init(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummaryReadFrom(v14, a2))
              {
                goto LABEL_67;
              }

              PBReaderRecallMark();
              [a1 setPnrodIntelligenceFlowResponseGenerationComponentSummary:v14];
              goto LABEL_60;
            case 'l':
              v14 = objc_alloc_init(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummaryReadFrom(v14, a2))
              {
                goto LABEL_67;
              }

              PBReaderRecallMark();
              [a1 setPnronIntelligenceFlowExecutorComponentSummary:v14];
              goto LABEL_60;
            case 'm':
              v14 = objc_alloc_init(PNRODSchemaPNRODScheduleDebugSummary);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODScheduleDebugSummaryReadFrom(v14, a2))
              {
                goto LABEL_67;
              }

              PBReaderRecallMark();
              [a1 setPnronScheduleDebugSummary:v14];
              goto LABEL_60;
          }
        }
      }

      else if (v13 <= 101)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODClientEventMetadata);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODClientEventMetadataReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

          PBReaderRecallMark();
          [a1 setEventMetadata:v14];
          goto LABEL_60;
        }

        if (v13 == 101)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODSiriTurnGrainSummary);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODSiriTurnGrainSummaryReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

          PBReaderRecallMark();
          [a1 setPnrodSiriTurnGrainSummary:v14];
          goto LABEL_60;
        }
      }

      else
      {
        switch(v13)
        {
          case 'f':
            v14 = objc_alloc_init(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODIntelligenceFlowRequestGrainSummaryReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setPnrodIntelligenceFlowRequestGrainSummary:v14];
            goto LABEL_60;
          case 'g':
            v14 = objc_alloc_init(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummaryReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setPnrodIntelligenceFlowPlannerGrainSummary:v14];
            goto LABEL_60;
          case 'h':
            v14 = objc_alloc_init(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODIntelligenceFlowActionGrainSummaryReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setPnrodIntelligenceFlowActionGrainSummary:v14];
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

uint64_t PNRODSchemaPNRODClientEventMetadataReadFrom(void *a1, void *a2)
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
        [a1 setPnrodId:v13];
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

uint64_t PNRODSchemaPNRODExecutorReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 203)
      {
        if (v13 > 206)
        {
          switch(v13)
          {
            case 0xCF:
              v21 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v21, a2))
              {
LABEL_85:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setStringQueryEntityTime:v21];
              goto LABEL_74;
            case 0xD0:
              v21 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v21, a2))
              {
                goto LABEL_85;
              }

              PBReaderRecallMark();
              [a1 setIdentifierQueryTime:v21];
              goto LABEL_74;
            case 0x12D:
              v21 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v21, a2))
              {
                goto LABEL_85;
              }

              PBReaderRecallMark();
              [a1 setFailureInfo:v21];
              goto LABEL_74;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xCC:
              v21 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v21, a2))
              {
                goto LABEL_85;
              }

              PBReaderRecallMark();
              [a1 setPersonQueryTime:v21];
              goto LABEL_74;
            case 0xCD:
              v21 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v21, a2))
              {
                goto LABEL_85;
              }

              PBReaderRecallMark();
              [a1 setStringQueryLocationTime:v21];
              goto LABEL_74;
            case 0xCE:
              v21 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v21, a2))
              {
                goto LABEL_85;
              }

              PBReaderRecallMark();
              [a1 setStringQueryEntityMatcherTime:v21];
              goto LABEL_74;
          }
        }
      }

      else if (v13 > 200)
      {
        switch(v13)
        {
          case 0xC9:
            v21 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v21, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            [a1 setExecutorAppIntentHandleTime:v21];
            goto LABEL_74;
          case 0xCA:
            v21 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v21, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            [a1 setExecutorAppIntentQueryHandleTime:v21];
            goto LABEL_74;
          case 0xCB:
            v21 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v21, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            [a1 setSearchToolQueryTime:v21];
            goto LABEL_74;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            [a1 setExecutorId:v21];
            goto LABEL_74;
          case 2:
            v21 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            [a1 setPlanCycleId:v21];
LABEL_74:

            goto LABEL_75;
          case 0xB:
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
                goto LABEL_82;
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

LABEL_82:
            [a1 setExecutorSearchToolQueryType:v20];
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODFailureInfoReadFrom(void *a1, void *a2)
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
              goto LABEL_56;
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

LABEL_56:
          [a1 setFailureType:v28];
          goto LABEL_61;
        }

        if (v13 == 2)
        {
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
              goto LABEL_60;
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

LABEL_60:
          [a1 setFailureSubType:v21];
          goto LABEL_61;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(PNRODSchemaPNRError);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRErrorReadFrom(v14, a2))
            {
LABEL_64:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setError:v14];
            goto LABEL_41;
          case 4:
            v14 = objc_alloc_init(PNRODSchemaPNRError);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRErrorReadFrom(v14, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setUnderlyingError:v14];
            goto LABEL_41;
          case 5:
            v14 = objc_alloc_init(PNRODSchemaPNRError);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRErrorReadFrom(v14, a2))
            {
              goto LABEL_64;
            }

            PBReaderRecallMark();
            [a1 setUnderUnderlyingError:v14];
LABEL_41:

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

uint64_t PNRODSchemaPNRODIntelligenceFlowActionGrainSummaryReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 11)
      {
        if (v13 > 3)
        {
          switch(v13)
          {
            case 4:
              v14 = objc_alloc_init(SISchemaUUID);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
LABEL_116:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setRawQueryEventId:v14];
              goto LABEL_84;
            case 0xA:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

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
                v11 = v38++ >= 9;
                if (v11)
                {
                  v43 = 0;
                  goto LABEL_113;
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

LABEL_113:
              [a1 setStatus:v43];
              goto LABEL_85;
            case 0xB:
              v14 = PBReaderReadString();
              [a1 setToolId:v14];
LABEL_84:

              goto LABEL_85;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(SISchemaUUID);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_116;
              }

              PBReaderRecallMark();
              [a1 setActionId:v14];
              goto LABEL_84;
            case 2:
              v14 = objc_alloc_init(SISchemaUUID);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_116;
              }

              PBReaderRecallMark();
              [a1 setPlanId:v14];
              goto LABEL_84;
            case 3:
              v14 = objc_alloc_init(SISchemaUUID);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_116;
              }

              PBReaderRecallMark();
              [a1 setClientRequestId:v14];
              goto LABEL_84;
          }
        }
      }

      else if (v13 <= 201)
      {
        switch(v13)
        {
          case 0xC:
            v14 = PBReaderReadString();
            [a1 setBundleId:v14];
            goto LABEL_84;
          case 0xD:
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
                goto LABEL_109;
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

LABEL_109:
            [a1 setStatementId:v35];
            goto LABEL_85;
          case 0xC9:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_116;
            }

            PBReaderRecallMark();
            [a1 setExecutionTime:v14];
            goto LABEL_84;
        }
      }

      else if (v13 > 400)
      {
        if (v13 == 401)
        {
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
              goto LABEL_101;
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

LABEL_101:
          [a1 setNumQueriesCreated:v28];
          goto LABEL_85;
        }

        if (v13 == 402)
        {
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
              goto LABEL_105;
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

LABEL_105:
          [a1 setNumActionsCreated:v21];
          goto LABEL_85;
        }
      }

      else
      {
        if (v13 == 202)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_116;
          }

          PBReaderRecallMark();
          [a1 setAppEntityQueryResponseTime:v14];
          goto LABEL_84;
        }

        if (v13 == 301)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
          {
            goto LABEL_116;
          }

          PBReaderRecallMark();
          [a1 setFailureInfo:v14];
          goto LABEL_84;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummaryReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 10)
      {
        if (v13 <= 200)
        {
          if (v13 == 11)
          {
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
                goto LABEL_82;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_82:
            [a1 setIsAppForeground:v28];
            goto LABEL_73;
          }

          if (v13 == 12)
          {
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
                goto LABEL_80;
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

LABEL_80:
            [a1 setAppState:v21];
            goto LABEL_73;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xC9:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
LABEL_85:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setExecutionTime:v14];
              goto LABEL_72;
            case 0xCA:
              v14 = objc_alloc_init(PNRODSchemaPNRODPQAMetrics);
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODPQAMetricsReadFrom(v14, a2))
              {
                goto LABEL_85;
              }

              PBReaderRecallMark();
              [a1 setPqaMetrics:v14];
              goto LABEL_72;
            case 0x12D:
              v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
              {
                goto LABEL_85;
              }

              PBReaderRecallMark();
              [a1 setFailureInfo:v14];
              goto LABEL_72;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_85;
          }

          PBReaderRecallMark();
          [a1 setActionId:v14];
          goto LABEL_72;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_85;
          }

          PBReaderRecallMark();
          [a1 setPlanId:v14];
          goto LABEL_72;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            [a1 setClientRequestId:v14];
            goto LABEL_72;
          case 4:
            v14 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            [a1 setRawQueryEventId:v14];
            goto LABEL_72;
          case 5:
            v14 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_85;
            }

            PBReaderRecallMark();
            [a1 setExecutorId:v14];
LABEL_72:

            goto LABEL_73;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_73:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummaryReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 12)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
LABEL_119:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setPlanId:v14];
          }

          else
          {
            if (v13 != 2)
            {
LABEL_58:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                return 0;
              }

              goto LABEL_109;
            }

            v14 = objc_alloc_init(SISchemaUUID);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setClientRequestId:v14];
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(SISchemaUUID);
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_119;
              }

              PBReaderRecallMark();
              [a1 setRawQueryEventId:v14];
              break;
            case 0xB:
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
                  goto LABEL_112;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_112:
              [a1 setWasPlanOverridden:v28];
              goto LABEL_109;
            case 0xC:
              v14 = PBReaderReadString();
              [a1 setModelAssetVersion:v14];
              break;
            default:
              goto LABEL_58;
          }
        }

LABEL_108:
      }

      else
      {
        switch(v13)
        {
          case 201:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setStandardPlannerMakePlanTime:v14];
            goto LABEL_108;
          case 202:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setStandardPlannerQueryDecorationTime:v14];
            goto LABEL_108;
          case 203:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setStandardPlannerPrescribedPlanGeneratorTime:v14];
            goto LABEL_108;
          case 204:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setStandardPlannerGeneratePlanTime:v14];
            goto LABEL_108;
          case 205:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setPlanResolverServiceHandleTime:v14];
            goto LABEL_108;
          case 206:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setResponseGenerationServiceHandleTime:v14];
            goto LABEL_108;
          case 207:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setPlanOverridesServiceHandleTime:v14];
            goto LABEL_108;
          case 208:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setFullPlannerServiceHandleTime:v14];
            goto LABEL_108;
          case 209:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setFullPlannerModelInferenceCallTime:v14];
            goto LABEL_108;
          case 210:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationTotalCollectInputsDuration:v14];
            goto LABEL_108;
          case 211:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationSpanRetrievalDuration:v14];
            goto LABEL_108;
          case 212:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationContextRetrievalDuration:v14];
            goto LABEL_108;
          case 213:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationToolRetrievalDuration:v14];
            goto LABEL_108;
          case 214:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationTotalRankingDuration:v14];
            goto LABEL_108;
          case 215:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationTupleBuildingDuration:v14];
            goto LABEL_108;
          case 216:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_119;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationTupleRankingDuration:v14];
            goto LABEL_108;
          default:
            if (v13 == 301)
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
              {
                goto LABEL_119;
              }

              PBReaderRecallMark();
              [a1 setFailureInfo:v14];
              goto LABEL_108;
            }

            if (v13 != 13)
            {
              goto LABEL_58;
            }

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
                goto LABEL_116;
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

LABEL_116:
            [a1 setFullPlannerInferenceInvocationSource:v21];
            break;
        }
      }

LABEL_109:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummaryReadFrom(void *a1, void *a2)
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
        LOBYTE(v87) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v87 & 0x7F) << v5;
        if ((v87 & 0x80) == 0)
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
      if ((v12 >> 3) <= 107)
      {
        if (v13 > 101)
        {
          if (v13 > 104)
          {
            switch(v13)
            {
              case 'i':
                v78 = 0;
                v79 = 0;
                v80 = 0;
                while (1)
                {
                  LOBYTE(v87) = 0;
                  v81 = [a2 position] + 1;
                  if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
                  {
                    v83 = [a2 data];
                    [v83 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v80 |= (v87 & 0x7F) << v78;
                  if ((v87 & 0x80) == 0)
                  {
                    break;
                  }

                  v78 += 7;
                  v11 = v79++ >= 9;
                  if (v11)
                  {
                    v84 = 0;
                    goto LABEL_219;
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

LABEL_219:
                [a1 setNumActionResolverRequests:v84];
                break;
              case 'j':
                v57 = 0;
                v58 = 0;
                v59 = 0;
                while (1)
                {
                  LOBYTE(v87) = 0;
                  v60 = [a2 position] + 1;
                  if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
                  {
                    v62 = [a2 data];
                    [v62 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v59 |= (v87 & 0x7F) << v57;
                  if ((v87 & 0x80) == 0)
                  {
                    break;
                  }

                  v57 += 7;
                  v11 = v58++ >= 9;
                  if (v11)
                  {
                    v63 = 0;
                    goto LABEL_207;
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

LABEL_207:
                [a1 setNumStatementsEvaluated:v63];
                break;
              case 'k':
                v29 = 0;
                v30 = 0;
                v31 = 0;
                while (1)
                {
                  LOBYTE(v87) = 0;
                  v32 = [a2 position] + 1;
                  if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                  {
                    v34 = [a2 data];
                    [v34 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v31 |= (v87 & 0x7F) << v29;
                  if ((v87 & 0x80) == 0)
                  {
                    break;
                  }

                  v29 += 7;
                  v11 = v30++ >= 9;
                  if (v11)
                  {
                    v35 = 0;
                    goto LABEL_195;
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

LABEL_195:
                [a1 setNumStatementsEvaluatedFromPlanner:v35];
                break;
              default:
LABEL_137:
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  return 0;
                }

                break;
            }
          }

          else if (v13 == 102)
          {
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              LOBYTE(v87) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v87 & 0x7F) << v64;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v70 = 0;
                goto LABEL_211;
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

LABEL_211:
            [a1 setNumQueriesCreated:v70];
          }

          else if (v13 == 103)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v87) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v87 & 0x7F) << v43;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_199;
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

LABEL_199:
            [a1 setNumQueriesExecuted:v49];
          }

          else
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v87) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v87 & 0x7F) << v15;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_187;
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

LABEL_187:
            [a1 setNumClientActionsCreated:v21];
          }
        }

        else if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v71 = 0;
              v72 = 0;
              v73 = 0;
              while (1)
              {
                LOBYTE(v87) = 0;
                v74 = [a2 position] + 1;
                if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
                {
                  v76 = [a2 data];
                  [v76 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v73 |= (v87 & 0x7F) << v71;
                if ((v87 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                v11 = v72++ >= 9;
                if (v11)
                {
                  v77 = 0;
                  goto LABEL_215;
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

LABEL_215:
              [a1 setStatus:v77];
              break;
            case 0xB:
              v50 = 0;
              v51 = 0;
              v52 = 0;
              while (1)
              {
                LOBYTE(v87) = 0;
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
                v11 = v51++ >= 9;
                if (v11)
                {
                  v56 = 0;
                  goto LABEL_203;
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

LABEL_203:
              [a1 setPlannerGrainStage:v56];
              break;
            case 0x65:
              v22 = 0;
              v23 = 0;
              v24 = 0;
              while (1)
              {
                LOBYTE(v87) = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v87 & 0x7F) << v22;
                if ((v87 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v11 = v23++ >= 9;
                if (v11)
                {
                  v28 = 0;
                  goto LABEL_191;
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

LABEL_191:
              [a1 setNumPlansCreated:v28];
              break;
            default:
              goto LABEL_137;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(SISchemaUUID);
              v87 = 0;
              v88 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
LABEL_225:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setPlanId:v14];
              break;
            case 2:
              v14 = objc_alloc_init(SISchemaUUID);
              v87 = 0;
              v88 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_225;
              }

              PBReaderRecallMark();
              [a1 setClientRequestId:v14];
              break;
            case 3:
              v14 = objc_alloc_init(SISchemaUUID);
              v87 = 0;
              v88 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_225;
              }

              PBReaderRecallMark();
              [a1 setRawQueryEventId:v14];
              break;
            default:
              goto LABEL_137;
          }

LABEL_181:
        }
      }

      else
      {
        switch(v13)
        {
          case 201:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setPlannerResponseTime:v14];
            goto LABEL_181;
          case 202:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setStartToLastResolverEventTime:v14];
            goto LABEL_181;
          case 203:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setStartToActionResolverRequestTime:v14];
            goto LABEL_181;
          case 204:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setStartToPlanCreatedTime:v14];
            goto LABEL_181;
          case 205:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setStartToLastQueryDecorationEventTime:v14];
            goto LABEL_181;
          case 206:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setLastResolverEventToResponseGeneratedTime:v14];
            goto LABEL_181;
          case 207:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setActionResolverRequestToLastResolverEventTime:v14];
            goto LABEL_181;
          case 208:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setPlanCreatedToLastResolverEventTime:v14];
            goto LABEL_181;
          case 209:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setPlanCreatedToActionResolverRequestTime:v14];
            goto LABEL_181;
          case 210:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setLastQueryDecorationEventToPlanCreatedTime:v14];
            goto LABEL_181;
          case 211:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setStartToContextRetrievedTime:v14];
            goto LABEL_181;
          case 212:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setStartToToolsRetrievedTime:v14];
            goto LABEL_181;
          case 213:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setStartToEntitySpanMatchedTime:v14];
            goto LABEL_181;
          case 214:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_225;
            }

            PBReaderRecallMark();
            [a1 setResolverTotalQueryTime:v14];
            goto LABEL_181;
          default:
            if (v13 == 301)
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
              v87 = 0;
              v88 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
              {
                goto LABEL_225;
              }

              PBReaderRecallMark();
              [a1 setFailureInfo:v14];
              goto LABEL_181;
            }

            if (v13 != 108)
            {
              goto LABEL_137;
            }

            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v87) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v87 & 0x7F) << v36;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_223;
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

LABEL_223:
            [a1 setNumSystemPromptsResolved:v42];
            break;
        }
      }

      v85 = [a2 position];
    }

    while (v85 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODIntelligenceFlowRequestGrainSummaryReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 104)
      {
        if (v13 > 11)
        {
          if (v13 > 101)
          {
            switch(v13)
            {
              case 'f':
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
                    goto LABEL_215;
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

LABEL_215:
                [a1 setNumPlansCreatedForResponse:v63];
                goto LABEL_188;
              case 'g':
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
                    goto LABEL_203;
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

LABEL_203:
                [a1 setNumQueriesCreated:v56];
                goto LABEL_188;
              case 'h':
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
                    goto LABEL_211;
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

LABEL_211:
                [a1 setNumActionsCreated:v35];
                goto LABEL_188;
            }
          }

          else
          {
            switch(v13)
            {
              case 0xC:
                v14 = PBReaderReadString();
                if (v14)
                {
                  [a1 addBundleId:v14];
                }

                goto LABEL_187;
              case 0xD:
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
                    goto LABEL_195;
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

LABEL_195:
                [a1 addRequestFeatureTag:v42];
                goto LABEL_188;
              case 0x65:
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
                    goto LABEL_207;
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

LABEL_207:
                [a1 setNumPlansCreated:v21];
                goto LABEL_188;
            }
          }
        }

        else if (v13 > 3)
        {
          switch(v13)
          {
            case 4:
              v14 = objc_alloc_init(SISchemaUUID);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
LABEL_237:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setRawQueryEventId:v14];
              goto LABEL_187;
            case 0xA:
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
                  goto LABEL_199;
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

LABEL_199:
              [a1 setStatus:v49];
              goto LABEL_188;
            case 0xB:
              v14 = PBReaderReadString();
              if (v14)
              {
                [a1 addToolId:v14];
              }

LABEL_187:

              goto LABEL_188;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(SISchemaUUID);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_237;
              }

              PBReaderRecallMark();
              [a1 setClientRequestId:v14];
              goto LABEL_187;
            case 2:
              v14 = objc_alloc_init(SISchemaUUID);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_237;
              }

              PBReaderRecallMark();
              [a1 setClientSessionId:v14];
              goto LABEL_187;
            case 3:
              v14 = objc_alloc_init(SISchemaUUID);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_237;
              }

              PBReaderRecallMark();
              [a1 setRawSessionId:v14];
              goto LABEL_187;
          }
        }
      }

      else if (v13 <= 201)
      {
        if (v13 > 107)
        {
          switch(v13)
          {
            case 0x6C:
              v85 = 0;
              v86 = 0;
              v87 = 0;
              while (1)
              {
                LOBYTE(v94) = 0;
                v88 = [a2 position] + 1;
                if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
                {
                  v90 = [a2 data];
                  [v90 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v87 |= (v94 & 0x7F) << v85;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                v11 = v86++ >= 9;
                if (v11)
                {
                  v91 = 0;
                  goto LABEL_235;
                }
              }

              if ([a2 hasError])
              {
                v91 = 0;
              }

              else
              {
                v91 = v87;
              }

LABEL_235:
              [a1 setNumSystemResponsesGenerated:v91];
              goto LABEL_188;
            case 0x6D:
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
                  goto LABEL_223;
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

LABEL_223:
              [a1 setNumSystemPromptsResolved:v77];
              goto LABEL_188;
            case 0xC9:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_237;
              }

              PBReaderRecallMark();
              [a1 setRequestResponseTime:v14];
              goto LABEL_187;
          }
        }

        else
        {
          switch(v13)
          {
            case 'i':
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
                  goto LABEL_231;
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

LABEL_231:
              [a1 setNumStatementsEvaluated:v84];
              goto LABEL_188;
            case 'j':
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
                  goto LABEL_219;
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

LABEL_219:
              [a1 setNumStatementsEvaluatedFromPlanner:v70];
              goto LABEL_188;
            case 'k':
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
                  goto LABEL_227;
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

LABEL_227:
              [a1 setNumResponseGenerationRequests:v28];
              goto LABEL_188;
          }
        }
      }

      else
      {
        if (v13 <= 204)
        {
          if (v13 == 202)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_237;
            }

            PBReaderRecallMark();
            [a1 setPlanningTime:v14];
          }

          else if (v13 == 203)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_237;
            }

            PBReaderRecallMark();
            [a1 setQueryTime:v14];
          }

          else
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_237;
            }

            PBReaderRecallMark();
            [a1 setExecutionTime:v14];
          }

          goto LABEL_187;
        }

        if (v13 <= 206)
        {
          if (v13 == 205)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_237;
            }

            PBReaderRecallMark();
            [a1 setResponsePreparationTime:v14];
          }

          else
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_237;
            }

            PBReaderRecallMark();
            [a1 setPlanGenerationTime:v14];
          }

          goto LABEL_187;
        }

        if (v13 == 207)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v94 = 0;
          v95 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_237;
          }

          PBReaderRecallMark();
          [a1 setQueryDecorationTime:v14];
          goto LABEL_187;
        }

        if (v13 == 301)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
          v94 = 0;
          v95 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
          {
            goto LABEL_237;
          }

          PBReaderRecallMark();
          [a1 setFailureInfo:v14];
          goto LABEL_187;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_188:
      v92 = [a2 position];
    }

    while (v92 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummaryReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 201)
      {
        if (v13 <= 205)
        {
          if (v13 > 203)
          {
            if (v13 == 204)
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
LABEL_131:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setResponseCatalogueRetrievalTime:v14];
            }

            else
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              [a1 setResponseCATHydrationTime:v14];
            }

            goto LABEL_115;
          }

          if (v13 == 202)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setResponseInputValidationTime:v14];
            goto LABEL_115;
          }

          if (v13 == 203)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setResponseOverridesTime:v14];
            goto LABEL_115;
          }
        }

        else
        {
          if (v13 <= 207)
          {
            if (v13 == 206)
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              [a1 setResponseModelInferenceTime:v14];
            }

            else
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              [a1 setResponseHallucinationInferenceTime:v14];
            }

            goto LABEL_115;
          }

          switch(v13)
          {
            case 0xD0:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              [a1 setResponseSafetyInferenceTime:v14];
              goto LABEL_115;
            case 0xD1:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              [a1 setResponseGenerationTime:v14];
              goto LABEL_115;
            case 0x12D:
              v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              [a1 setFailureInfo:v14];
              goto LABEL_115;
          }
        }
      }

      else if (v13 <= 11)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setRawQueryEventId:v14];
            goto LABEL_115;
          }

          if (v13 == 11)
          {
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
                goto LABEL_121;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_121:
            [a1 setResponseIsValidInput:v21];
            goto LABEL_116;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setPlanId:v14];
            goto LABEL_115;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setClientRequestId:v14];
            goto LABEL_115;
          }
        }
      }

      else
      {
        if (v13 <= 13)
        {
          if (v13 == 12)
          {
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
                goto LABEL_129;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_129:
            [a1 setResponseIsStaticDialogueProvided:v42];
            goto LABEL_116;
          }

          v14 = PBReaderReadString();
          [a1 setResponseMobileAssetVersion:v14];
          goto LABEL_115;
        }

        switch(v13)
        {
          case 0xE:
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
                goto LABEL_127;
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

LABEL_127:
            [a1 setResponseInferenceLocation:v35];
            goto LABEL_116;
          case 0xF:
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
                goto LABEL_123;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_123:
            [a1 setResponseIsFallback:v28];
            goto LABEL_116;
          case 0xC9:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setResponsePreparationTime:v14];
LABEL_115:

            goto LABEL_116;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_116:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODIntelligenceFlowSessionSummaryReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 202)
      {
        if (v13 > 200)
        {
          if (v13 == 201)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
LABEL_63:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setStandardPlannerSetupTime:v14];
            goto LABEL_56;
          }

          if (v13 == 202)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationServiceSetupTime:v14];
            goto LABEL_56;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setClientSessionId:v14];
            goto LABEL_56;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setRawSessionId:v14];
            goto LABEL_56;
          }
        }
      }

      else if (v13 <= 204)
      {
        if (v13 == 203)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setFullPlannerServiceSetupTime:v14];
          goto LABEL_56;
        }

        if (v13 == 204)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setPlanOverridesServiceSetupTime:v14];
          goto LABEL_56;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xCD:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setPlanResolverServiceSetupTime:v14];
            goto LABEL_56;
          case 0xCE:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setResponseGenerationServiceSetupTime:v14];
            goto LABEL_56;
          case 0x12D:
            v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setFailureInfo:v14];
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

uint64_t PNRODSchemaPNRODMetricDurationReadFrom(void *a1, void *a2)
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
      v41 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v41 & 0x7F) << v6;
      if ((v41 & 0x80) == 0)
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
        v32 = 0;
        v33 = 0;
        v34 = 0;
        while (1)
        {
          v43 = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v43 & 0x7F) << v32;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v12 = v33++ >= 9;
          if (v12)
          {
            v38 = 0;
            goto LABEL_66;
          }
        }

        if ([a2 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v34;
        }

LABEL_66:
        [a1 setStartEventIndex:v38];
        continue;
      }

      if (v14 == 4)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v42 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v42 & 0x7F) << v22;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_62;
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

LABEL_62:
        [a1 setEndEventIndex:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v40 = 0.0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setMetricValue:v40];
        continue;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v44 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v44 & 0x7F) << v15;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_58;
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

LABEL_58:
        [a1 setStartTimestamp:v21];
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

uint64_t PNRODSchemaPNRODPlanGenerationReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 201)
      {
        if (v13 > 102)
        {
          switch(v13)
          {
            case 0x67:
              v14 = PBReaderReadString();
              [a1 setPgOverridesAssetVersion:v14];
              goto LABEL_62;
            case 0x68:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              while (1)
              {
                LOBYTE(v31) = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v31 & 0x7F) << v23;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_90;
                }
              }

              v29 = (v25 != 0) & ~[a2 hasError];
LABEL_90:
              [a1 setPgOverridesMatched:v29];
              goto LABEL_63;
            case 0xC9:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
LABEL_92:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setPgPlanGenTotalTime:v14];
              goto LABEL_62;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(SISchemaUUID);
              v31 = 0;
              v32 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
                goto LABEL_92;
              }

              PBReaderRecallMark();
              [a1 setPlanCycleId:v14];
              goto LABEL_62;
            case 0x65:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                LOBYTE(v31) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v31 & 0x7F) << v16;
                if ((v31 & 0x80) == 0)
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

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v18;
              }

LABEL_88:
              [a1 setPgModelInterface:v22];
              goto LABEL_63;
            case 0x66:
              v14 = PBReaderReadString();
              [a1 setPgModelIdentifier:v14];
LABEL_62:

              goto LABEL_63;
          }
        }
      }

      else if (v13 <= 204)
      {
        switch(v13)
        {
          case 0xCA:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_92;
            }

            PBReaderRecallMark();
            [a1 setPgFullPlannerHandleTime:v14];
            goto LABEL_62;
          case 0xCB:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_92;
            }

            PBReaderRecallMark();
            [a1 setPgModelInferenceTime:v14];
            goto LABEL_62;
          case 0xCC:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_92;
            }

            PBReaderRecallMark();
            [a1 setPgOverridesTime:v14];
            goto LABEL_62;
        }
      }

      else
      {
        if (v13 <= 206)
        {
          if (v13 == 205)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_92;
            }

            PBReaderRecallMark();
            [a1 setPgPrescribedPlanTime:v14];
          }

          else
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_92;
            }

            PBReaderRecallMark();
            [a1 setPgFullPlannerPreInferenceTime:v14];
          }

          goto LABEL_62;
        }

        if (v13 == 207)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_92;
          }

          PBReaderRecallMark();
          [a1 setPgFullPlannerPostInferenceTime:v14];
          goto LABEL_62;
        }

        if (v13 == 301)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
          {
            goto LABEL_92;
          }

          PBReaderRecallMark();
          [a1 setFailureInfo:v14];
          goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_63:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODPlanResolutionReadFrom(void *a1, void *a2)
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
          case 0x12D:
            v28 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v28, a2))
            {
LABEL_68:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setFailureInfo:v28];
            goto LABEL_56;
          case 0x65:
            v28 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v28, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setPrTotalHandleTime:v28];
            goto LABEL_56;
          case 4:
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
            [a1 setStatementId:v27];
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
            [a1 setPlanCycleId:v28];
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
            [a1 setPrId:v28];
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
            [a1 setActionStatementId:v20];
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

uint64_t PNRODSchemaPNRODPQAMetricsReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 10)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
LABEL_45:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setSearchToolId:v14];
          goto LABEL_38;
        }

        if (v13 == 10)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_45;
          }

          PBReaderRecallMark();
          [a1 setOverallTime:v14];
          goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xB:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setLlmQUTotalTime:v14];
            goto LABEL_38;
          case 0xC:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setSpotlightTotalTime:v14];
            goto LABEL_38;
          case 0xD:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_45;
            }

            PBReaderRecallMark();
            [a1 setAnswerSynthesisTime:v14];
LABEL_38:

            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODQueryDecorationReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 205)
      {
        if (v13 <= 201)
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(SISchemaUUID);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
              {
LABEL_96:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setQueryDecorationID:v14];
              goto LABEL_88;
            case 0x65:
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
                  goto LABEL_94;
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

LABEL_94:
              [a1 setQueryDecorationSource:v21];
              goto LABEL_89;
            case 0xC9:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_96;
              }

              PBReaderRecallMark();
              [a1 setQueryDecorationHandleTime:v14];
              goto LABEL_88;
          }
        }

        else
        {
          if (v13 <= 203)
          {
            if (v13 == 202)
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_96;
              }

              PBReaderRecallMark();
              [a1 setQueryDecorationSpanRetrievalTime:v14];
            }

            else
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_96;
              }

              PBReaderRecallMark();
              [a1 setQueryDecorationContextRetrievalTime:v14];
            }

            goto LABEL_88;
          }

          if (v13 == 204)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_96;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationToolRetrievalTime:v14];
            goto LABEL_88;
          }

          if (v13 == 205)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_96;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationRankingTime:v14];
            goto LABEL_88;
          }
        }
      }

      else if (v13 > 209)
      {
        if (v13 <= 211)
        {
          if (v13 == 210)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_96;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationToolRetrievalContextTime:v14];
          }

          else
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_96;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationFetchDynamicEnumerationTime:v14];
          }

          goto LABEL_88;
        }

        if (v13 == 212)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_96;
          }

          PBReaderRecallMark();
          [a1 setQueryDecorationFullPlannerBlockingTime:v14];
          goto LABEL_88;
        }

        if (v13 == 301)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
          {
            goto LABEL_96;
          }

          PBReaderRecallMark();
          [a1 setFailureInfo:v14];
          goto LABEL_88;
        }
      }

      else
      {
        if (v13 > 207)
        {
          if (v13 == 208)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_96;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationTupleRankingTime:v14];
          }

          else
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_96;
            }

            PBReaderRecallMark();
            [a1 setQueryDecorationInputCollectionTime:v14];
          }

          goto LABEL_88;
        }

        if (v13 == 206)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_96;
          }

          PBReaderRecallMark();
          [a1 setQueryDecorationOutputBuildingTime:v14];
          goto LABEL_88;
        }

        if (v13 == 207)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_96;
          }

          PBReaderRecallMark();
          [a1 setQueryDecorationTupleBuildingTime:v14];
LABEL_88:

          goto LABEL_89;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_89:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODResponseGenerationReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 203)
      {
        if (v13 <= 200)
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
LABEL_81:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setResponseGenerationID:v14];
            goto LABEL_70;
          }

          if (v13 == 101)
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
            [a1 setResponseGenerationType:v21];
            goto LABEL_71;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xC9:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setResponseGenerationHandleTime:v14];
              goto LABEL_70;
            case 0xCA:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setResponseGenerationOverrideTime:v14];
              goto LABEL_70;
            case 0xCB:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_81;
              }

              PBReaderRecallMark();
              [a1 setResponseGenerationValidationTime:v14];
              goto LABEL_70;
          }
        }
      }

      else if (v13 > 206)
      {
        switch(v13)
        {
          case 0xCF:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setResponseGenerationGMSCallTime:v14];
            goto LABEL_70;
          case 0xD0:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setResponseGenerationCacheManagerTime:v14];
            goto LABEL_70;
          case 0x12D:
            v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setFailureInfo:v14];
            goto LABEL_70;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xCC:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setResponseGenerationCatalogTime:v14];
            goto LABEL_70;
          case 0xCD:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setResponseGenerationInferenceTime:v14];
            goto LABEL_70;
          case 0xCE:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_81;
            }

            PBReaderRecallMark();
            [a1 setResponseGenerationHallucinationDetectionTime:v14];
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

uint64_t PNRODSchemaPNRODScheduleDebugSummaryReadFrom(void *a1, void *a2)
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
        LOBYTE(v68[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v68[0]) & 0x7F) << v5;
        if ((LOBYTE(v68[0]) & 0x80) == 0)
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
      if ((v12 >> 3) > 104)
      {
        break;
      }

      if (v13 > 101)
      {
        switch(v13)
        {
          case 'f':
            v40 = 0;
            v41 = 0;
            v42 = 0;
            while (1)
            {
              LOBYTE(v68[0]) = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (LOBYTE(v68[0]) & 0x7F) << v40;
              if ((LOBYTE(v68[0]) & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v46 = 0;
                goto LABEL_109;
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

LABEL_109:
            [a1 setNumRequestsWrite:v46];
            goto LABEL_128;
          case 'g':
            v68[0] = 0.0;
            v54 = [a2 position] + 8;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 8, v55 <= objc_msgSend(a2, "length")))
            {
              v65 = [a2 data];
              [v65 getBytes:v68 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setProcessingWaitTimeInSecond:v68[0]];
            goto LABEL_128;
          case 'h':
            v68[0] = 0.0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:v68 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setProcessingTimeInSecond:v68[0]];
            goto LABEL_128;
        }

        goto LABEL_96;
      }

      if (v13 != 1)
      {
        if (v13 == 101)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (LOBYTE(v68[0]) & 0x7F) << v23;
            if ((LOBYTE(v68[0]) & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
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
          [a1 setNumRequestsRead:v29];
          goto LABEL_128;
        }

LABEL_96:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_128;
      }

      v32 = objc_alloc_init(SISchemaUUID);
      v68[0] = 0.0;
      v68[1] = 0.0;
      if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v32, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setScheduleId:v32];

LABEL_128:
      v66 = [a2 position];
      if (v66 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 106)
    {
      if (v13 == 105)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        while (1)
        {
          LOBYTE(v68[0]) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (LOBYTE(v68[0]) & 0x7F) << v33;
          if ((LOBYTE(v68[0]) & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v39 = 0;
            goto LABEL_105;
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

LABEL_105:
        [a1 setEventTimestampInMsSince1970:v39];
        goto LABEL_128;
      }

      if (v13 == 106)
      {
        v68[0] = 0.0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v63 = [a2 data];
          [v63 getBytes:v68 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setDelayFromLastBiomeBookmarkInSecond:v68[0]];
        goto LABEL_128;
      }
    }

    else
    {
      switch(v13)
      {
        case 'k':
          v47 = 0;
          v48 = 0;
          v49 = 0;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (LOBYTE(v68[0]) & 0x7F) << v47;
            if ((LOBYTE(v68[0]) & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v53 = 0;
              goto LABEL_113;
            }
          }

          if ([a2 hasError])
          {
            v53 = 0;
          }

          else
          {
            v53 = v49;
          }

LABEL_113:
          [a1 setFailureReasonIndex:v53];
          goto LABEL_128;
        case 'l':
          v56 = 0;
          v57 = 0;
          v58 = 0;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (LOBYTE(v68[0]) & 0x7F) << v56;
            if ((LOBYTE(v68[0]) & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v11 = v57++ >= 9;
            if (v11)
            {
              v62 = 0;
              goto LABEL_121;
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

LABEL_121:
          [a1 setDataSourceIndex:v62];
          goto LABEL_128;
        case 'm':
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v68[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (LOBYTE(v68[0]) & 0x7F) << v16;
            if ((LOBYTE(v68[0]) & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_117;
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

LABEL_117:
          [a1 setWorkerIndex:v22];
          goto LABEL_128;
      }
    }

    goto LABEL_96;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODSearchReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 204)
      {
        if (v13 <= 201)
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
LABEL_71:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setSearchToolId:v14];
            goto LABEL_64;
          }

          if (v13 == 201)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            [a1 setSearchTotalHandleTime:v14];
            goto LABEL_64;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xCA:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_71;
              }

              PBReaderRecallMark();
              [a1 setSpotlightTotalTime:v14];
              goto LABEL_64;
            case 0xCB:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_71;
              }

              PBReaderRecallMark();
              [a1 setAnswerSynthesisTime:v14];
              goto LABEL_64;
            case 0xCC:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_71;
              }

              PBReaderRecallMark();
              [a1 setSearchGlobalSearchTime:v14];
              goto LABEL_64;
          }
        }
      }

      else if (v13 > 207)
      {
        switch(v13)
        {
          case 0xD0:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            [a1 setPreSearchTime:v14];
            goto LABEL_64;
          case 0xD1:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            [a1 setPostSearchTime:v14];
            goto LABEL_64;
          case 0x12D:
            v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            [a1 setFailureInfo:v14];
            goto LABEL_64;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xCD:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            [a1 setSearchHallucinationTime:v14];
            goto LABEL_64;
          case 0xCE:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            [a1 setSearchStartToSpotlightEnd:v14];
            goto LABEL_64;
          case 0xCF:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            [a1 setSearchStartToGlobalSearchEnd:v14];
LABEL_64:

            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PNRODSchemaPNRODSiriTurnGrainSummaryReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 204)
      {
        if (v13 <= 208)
        {
          if (v13 > 206)
          {
            if (v13 == 207)
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODSearch);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODSearchReadFrom(v14, a2))
              {
LABEL_139:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addSearch:v14];
              }
            }

            else
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODPlanResolution);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODPlanResolutionReadFrom(v14, a2))
              {
                goto LABEL_139;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPlanResolution:v14];
              }
            }

            goto LABEL_123;
          }

          if (v13 == 205)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_139;
            }

            PBReaderRecallMark();
            [a1 setTtfw:v14];
            goto LABEL_123;
          }

          if (v13 == 206)
          {
            v14 = objc_alloc_init(PNRODSchemaPNRODQueryDecoration);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODQueryDecorationReadFrom(v14, a2))
            {
              goto LABEL_139;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addQueryDecoration:v14];
            }

            goto LABEL_123;
          }
        }

        else
        {
          if (v13 <= 210)
          {
            if (v13 == 209)
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODResponseGeneration);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODResponseGenerationReadFrom(v14, a2))
              {
                goto LABEL_139;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addResponseGeneration:v14];
              }
            }

            else
            {
              v14 = objc_alloc_init(PNRODSchemaPNRODExecutor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODExecutorReadFrom(v14, a2))
              {
                goto LABEL_139;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addExecutor:v14];
              }
            }

            goto LABEL_123;
          }

          switch(v13)
          {
            case 0xD3:
              v14 = objc_alloc_init(PNRODSchemaPNRODPlanGeneration);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODPlanGenerationReadFrom(v14, a2))
              {
                goto LABEL_139;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPlanGeneration:v14];
              }

              goto LABEL_123;
            case 0xD4:
              v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
              {
                goto LABEL_139;
              }

              PBReaderRecallMark();
              [a1 setTtaie:v14];
              goto LABEL_123;
            case 0x12D:
              v14 = objc_alloc_init(PNRODSchemaPNRODFailureInfo);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !PNRODSchemaPNRODFailureInfoReadFrom(v14, a2))
              {
                goto LABEL_139;
              }

              PBReaderRecallMark();
              [a1 setFailureInfo:v14];
              goto LABEL_123;
          }
        }
      }

      else if (v13 <= 12)
      {
        if (v13 > 10)
        {
          if (v13 == 11)
          {
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
                goto LABEL_129;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_129:
            [a1 setHasAssistantPerformanceData:v35];
          }

          else
          {
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
                goto LABEL_135;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_135:
            [a1 setHasDictationPerformanceData:v28];
          }

          goto LABEL_124;
        }

        if (v13 == 1)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_139;
          }

          PBReaderRecallMark();
          [a1 setTurnid:v14];
          goto LABEL_123;
        }

        if (v13 == 10)
        {
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
              goto LABEL_133;
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

LABEL_133:
          [a1 setStatus:v21];
          goto LABEL_124;
        }
      }

      else if (v13 <= 201)
      {
        if (v13 == 13)
        {
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
              goto LABEL_137;
            }
          }

          v42 = (v38 != 0) & ~[a2 hasError];
LABEL_137:
          [a1 setHasReliabilityData:v42];
          goto LABEL_124;
        }

        if (v13 == 201)
        {
          v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
          {
            goto LABEL_139;
          }

          PBReaderRecallMark();
          [a1 setSrt:v14];
          goto LABEL_123;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xCA:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_139;
            }

            PBReaderRecallMark();
            [a1 setLaunch:v14];
            goto LABEL_123;
          case 0xCB:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_139;
            }

            PBReaderRecallMark();
            [a1 setEpd:v14];
            goto LABEL_123;
          case 0xCC:
            v14 = objc_alloc_init(PNRODSchemaPNRODMetricDuration);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !PNRODSchemaPNRODMetricDurationReadFrom(v14, a2))
            {
              goto LABEL_139;
            }

            PBReaderRecallMark();
            [a1 setUufr:v14];
LABEL_123:

            goto LABEL_124;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_124:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t POMMESSchemaPOMMESCacheEntryReadFrom(void *a1, void *a2)
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
            goto LABEL_64;
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

LABEL_64:
        [a1 setTimeToLiveInSeconds:v37];
        continue;
      }

      if (v14 == 4)
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
            goto LABEL_60;
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

LABEL_60:
        [a1 setOrigin:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v30 = PBReaderReadString();
        [a1 setPegasusDomain:v30];

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
        [a1 setSizeInBytes:v21];
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

uint64_t POMMESSchemaPOMMESCacheInvalidationContextReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(POMMESSchemaPOMMESCacheInvalidationFailed);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !POMMESSchemaPOMMESCacheInvalidationFailedReadFrom(v14, a2))
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
        v14 = objc_alloc_init(POMMESSchemaPOMMESCacheInvalidationStarted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !POMMESSchemaPOMMESCacheInvalidationStartedReadFrom(v14, a2))
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

    v14 = objc_alloc_init(POMMESSchemaPOMMESCacheInvalidationEnded);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !POMMESSchemaPOMMESCacheInvalidationEndedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setEnded:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t POMMESSchemaPOMMESCacheInvalidationEndedReadFrom(void *a1, void *a2)
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
      [a1 setNumberOfCacheKeysInvalidated:v20];
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