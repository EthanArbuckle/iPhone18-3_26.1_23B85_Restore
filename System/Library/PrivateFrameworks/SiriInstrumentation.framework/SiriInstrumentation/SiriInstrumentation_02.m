uint64_t FLOWSchemaFLOWMediaPlayerTaskType.description.getter(unsigned int a1)
{
  if (a1 > 0x23)
  {
    v1 = @"FLOWMEDIAPLAYERTASKTYPE_UNKNOWN";
    v2 = @"FLOWMEDIAPLAYERTASKTYPE_UNKNOWN";
  }

  else
  {
    v1 = off_1E78BD308[a1];
    v2 = off_1E78BD428[a1];
  }

  v3 = v1;
  v4 = v2;
  sub_1AA651AA4();
  OUTLINED_FUNCTION_1_2();
  return OUTLINED_FUNCTION_0_3();
}

uint64_t NLXSchemaSSUBackgroundUpdateContextReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(NLXSchemaSSUBackgroundUpdateFailed);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaSSUBackgroundUpdateFailedReadFrom(v14, a2))
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
        v14 = objc_alloc_init(NLXSchemaSSUBackgroundUpdateStarted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !NLXSchemaSSUBackgroundUpdateStartedReadFrom(v14, a2))
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

    v14 = objc_alloc_init(NLXSchemaSSUBackgroundUpdateEnded);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !NLXSchemaSSUBackgroundUpdateEndedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setEnded:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NLXSchemaSSUBackgroundUpdateStartedReadFrom(void *a1, void *a2)
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
      [a1 setBackgroundUpdateType:v20];
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

uint64_t RFSchemaRFPatternExecutedReadFrom(void *a1, void *a2)
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
    if ((v13 >> 3) > 2)
    {
      if (v14 == 4)
      {
        v30 = PBReaderReadString();
        [a1 setResponseViewId:v30];
        goto LABEL_45;
      }

      if (v14 == 3)
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
        [a1 setMode:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v30 = PBReaderReadString();
        [a1 setPatternId:v30];
LABEL_45:

        continue;
      }

      if (v14 == 2)
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
        [a1 setPattern:v21];
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

uint64_t RFSchemaRFClientEventReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 102)
      {
        switch(v13)
        {
          case 'g':
            v14 = objc_alloc_init(RFSchemaRFComponentShown);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !RFSchemaRFComponentShownReadFrom(v14, a2))
            {
LABEL_48:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setComponentShown:v14];
            goto LABEL_44;
          case 'h':
            v14 = objc_alloc_init(RFSchemaRFSnippetRenderingContext);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !RFSchemaRFSnippetRenderingContextReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setSnippetRenderingContext:v14];
            goto LABEL_44;
          case 'i':
            v14 = objc_alloc_init(RFSchemaRFGradingDialogReportedTier1);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !RFSchemaRFGradingDialogReportedTier1ReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setRfGradingDialogReportedTier1:v14];
            goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(RFSchemaRFClientEventMetadata);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !RFSchemaRFClientEventMetadataReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setEventMetadata:v14];
            goto LABEL_44;
          case 0x65:
            v14 = objc_alloc_init(RFSchemaRFPatternExecuted);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !RFSchemaRFPatternExecutedReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setPatternExecuted:v14];
            goto LABEL_44;
          case 0x66:
            v14 = objc_alloc_init(RFSchemaRFInteractionPerformed);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !RFSchemaRFInteractionPerformedReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setInteractionPerformed:v14];
LABEL_44:

            goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t RFSchemaRFSnippetRenderingContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 102)
      {
        if (v13 == 103)
        {
          v14 = objc_alloc_init(RFSchemaRFSnippetRenderingFailed);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !RFSchemaRFSnippetRenderingFailedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
          goto LABEL_36;
        }

        if (v13 == 104)
        {
          v14 = objc_alloc_init(RFSchemaRFSnippetRenderingCancelled);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !RFSchemaRFSnippetRenderingCancelledReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setCancelled:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 101)
        {
          v14 = objc_alloc_init(RFSchemaRFSnippetRenderingStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !RFSchemaRFSnippetRenderingStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
          goto LABEL_36;
        }

        if (v13 == 102)
        {
          v14 = objc_alloc_init(RFSchemaRFSnippetRenderingEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !RFSchemaRFSnippetRenderingEndedReadFrom(v14, a2))
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

uint64_t RFSchemaRFSnippetRenderingStartedReadFrom(void *a1, void *a2)
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

uint64_t RFGSchemaRFGClientEventReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 102)
      {
        v14 = objc_alloc_init(RFSchemaRFGVisualResponseShownLink);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !RFSchemaRFGVisualResponseShownLinkReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setVisualResponseShownLink:v14];
        goto LABEL_29;
      }

      if (v13 == 101)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(RFSchemaRFGClientEventMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !RFSchemaRFGClientEventMetadataReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v14];
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

    v14 = objc_alloc_init(RFSchemaRFGVisualResponseShownTier1);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !RFSchemaRFGVisualResponseShownTier1ReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setVisualResponseShownTier1:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t RFSchemaRFGClientEventMetadataReadFrom(void *a1, void *a2)
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
        [a1 setRfId:v13];
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

uint64_t RFSchemaRFGVisualResponseShownLinkReadFrom(void *a1, void *a2)
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
        [a1 setTurnId:v13];
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

uint64_t RFSchemaRFGVisualResponseShownTier1ReadFrom(void *a1, void *a2)
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
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v15 = PBReaderReadString();
        [a1 setVersion:v15];
        goto LABEL_29;
      }

      if (v14 == 4)
      {
        v15 = PBReaderReadString();
        [a1 setResponseViewId:v15];
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setResponseModel:v15];
        goto LABEL_29;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        [a1 setPatternId:v15];
LABEL_29:

        continue;
      }
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaUEIUUFRReadyReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
LABEL_82:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setSubRequestId:v14];
            goto LABEL_65;
          }

          if (v13 == 8)
          {
            v14 = objc_alloc_init(SISchemaUUID);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
            {
              goto LABEL_82;
            }

            PBReaderRecallMark();
            [a1 setAceCommandId:v14];
            goto LABEL_65;
          }
        }

        else
        {
          if (v13 == 5)
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
                goto LABEL_75;
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

LABEL_75:
            [a1 setDialogPhase:v35];
            goto LABEL_66;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addDialogIdentifiers:v14];
            }

            goto LABEL_65;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          [a1 setAceViewId:v14];
          goto LABEL_65;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v38 & 0x7F) << v15;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
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
            v21 = v17;
          }

LABEL_79:
          [a1 setUufrReadySource:v21];
          goto LABEL_66;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v38 & 0x7F) << v22;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_71;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_71:
          [a1 setExists:v28];
          goto LABEL_66;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setAceCommandClass:v14];
LABEL_65:

          goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t RFSchemaRFClientEventMetadataReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setSubRequestId:v14];
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
          [a1 setAceViewId:v14];
          goto LABEL_36;
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
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setTurnId:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setRequestId:v14];
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

uint64_t RFSchemaRFComponentShownReadFrom(void *a1, void *a2)
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
    if ((v13 >> 3) == 3)
    {
      v22 = PBReaderReadString();
      [a1 setComponentIndex:v22];
      goto LABEL_32;
    }

    if (v14 == 2)
    {
      v22 = PBReaderReadString();
      [a1 setComponentName:v22];
LABEL_32:

      continue;
    }

    if (v14 == 1)
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
      [a1 setComponent:v21];
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

uint64_t TTSSchemaTTSRequestReceivedReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(SISchemaUUID);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {
LABEL_50:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setContextId:v14];
          goto LABEL_42;
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
          [a1 setInputTextLength:v21];
          goto LABEL_47;
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
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setLinkId:v14];
          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(TTSSchemaTTSVoiceContext);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !TTSSchemaTTSVoiceContextReadFrom(v14, a2))
          {
            goto LABEL_50;
          }

          PBReaderRecallMark();
          [a1 setRequestedVoiceContext:v14];
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

uint64_t FLOWSchemaFLOWStepReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
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
                goto LABEL_69;
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

LABEL_69:
            [a1 setSequenceNum:v21];
            goto LABEL_55;
          case 2:
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
                goto LABEL_73;
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

LABEL_73:
            [a1 setTimestampMs:v29];
            goto LABEL_55;
          case 3:
            v14 = objc_alloc_init(FLOWSchemaFLOWState);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !FLOWSchemaFLOWStateReadFrom(v14, a2))
            {
LABEL_76:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setFlowState:v14];
            goto LABEL_54;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(FLOWSchemaFLOWPlatformContext);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !FLOWSchemaFLOWPlatformContextReadFrom(v14, a2))
          {
            goto LABEL_76;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addPlatformContext:v14];
          }

          goto LABEL_54;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(FLOWSchemaFLOWPlatformContext);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !FLOWSchemaFLOWPlatformContextReadFrom(v14, a2))
          {
            goto LABEL_76;
          }

          PBReaderRecallMark();
          [a1 setPlatformRelatedContext:v14];
          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(FLOWSchemaFLOWAppContext);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !FLOWSchemaFLOWAppContextReadFrom(v14, a2))
          {
            goto LABEL_76;
          }

          PBReaderRecallMark();
          [a1 setAppContext:v14];
          goto LABEL_54;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(FLOWSchemaFLOWDomainContext);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !FLOWSchemaFLOWDomainContextReadFrom(v14, a2))
          {
            goto LABEL_76;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addDomainContext:v14];
          }

LABEL_54:

          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t FLOWSchemaFLOWStateReasonReadFrom(void *a1, void *a2)
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
      [a1 setStatusReason:v20];
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

uint64_t CNVSchemaCNVDecisionEngineResponseReportedReadFrom(void *a1, void *a2)
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
              goto LABEL_50;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_50:
          [a1 setIsExistingFlowSelected:v28];
          goto LABEL_51;
        }

        if (v13 == 4)
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
              goto LABEL_48;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_48:
          [a1 setIsInterpretableAsUniversalCommand:v21];
          goto LABEL_51;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setFlowHandlerId:v14];
LABEL_37:

          goto LABEL_51;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SISchemaUUID);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setParseHypothesisId:v14];
          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t CNVSchemaCNVExecutionPrepareEndedReadFrom(void *a1, void *a2)
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

uint64_t FLOWSchemaFLOWDomainContextReadFrom(void *a1, void *a2)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(FLOWSchemaFLOWVoiceShortcutContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWVoiceShortcutContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setVoiceShortcutContext:v13];
        goto LABEL_59;
      case 2u:
        v13 = objc_alloc_init(FLOWSchemaFLOWHomeAutomationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWHomeAutomationContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setHomeAutomationContext:v13];
        goto LABEL_59;
      case 3u:
        v13 = objc_alloc_init(FLOWSchemaFLOWPhoneCallContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWPhoneCallContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setPhoneCallContext:v13];
        goto LABEL_59;
      case 4u:
        v13 = objc_alloc_init(FLOWSchemaFLOWSmsContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWSmsContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setSmsContext:v13];
        goto LABEL_59;
      case 5u:
        v13 = objc_alloc_init(FLOWSchemaFLOWMediaPlayerContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWMediaPlayerContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setMediaPlayerContext:v13];
        goto LABEL_59;
      case 6u:
        v13 = objc_alloc_init(FLOWSchemaFLOWIdentityContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWIdentityContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setIdentityContext:v13];
        goto LABEL_59;
      case 7u:
        v13 = objc_alloc_init(FLOWSchemaFLOWBriefingContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWBriefingContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setBriefingContext:v13];
        goto LABEL_59;
      case 8u:
        v13 = objc_alloc_init(FLOWSchemaFLOWPegasusContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWPegasusContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setPegasusContext:v13];
        goto LABEL_59;
      case 9u:
        v13 = objc_alloc_init(FLOWSchemaFLOWInformationPluginContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWInformationPluginContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setInformationPluginContext:v13];
        goto LABEL_59;
      case 0xAu:
        v13 = objc_alloc_init(FLOWSchemaFLOWHomeCommunicationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWHomeCommunicationContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setHomeCommunicationContext:v13];
        goto LABEL_59;
      case 0xBu:
        v13 = objc_alloc_init(FLOWSchemaFLOWNotificationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWNotificationContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setNotificationContext:v13];
        goto LABEL_59;
      case 0xCu:
        v13 = objc_alloc_init(FLOWSchemaFLOWPhotosContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWPhotosContextReadFrom(v13, a2))
        {
          goto LABEL_63;
        }

        PBReaderRecallMark();
        [a1 setPhotosContext:v13];
        goto LABEL_59;
      case 0xDu:
        v13 = objc_alloc_init(FLOWSchemaFLOWSafariContext);
        v16 = 0;
        v17 = 0;
        if (PBReaderPlaceMark() && FLOWSchemaFLOWSafariContextReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setSafariContext:v13];
LABEL_59:

LABEL_60:
          v14 = [a2 position];
          if (v14 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_63:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_60;
    }
  }
}

uint64_t HALSchemaHALContextCollectorFetchEndedReadFrom(void *a1, void *a2)
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
      [a1 setNumDeviceContextsFetched:v20];
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

uint64_t FLOWSchemaFLOWMediaPlayerContextReadFrom(void *a1, void *a2)
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
      LOBYTE(v114) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v114 & 0x7F) << v5;
      if ((v114 & 0x80) == 0)
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
      case 2u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v114 & 0x7F) << v13;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_178:
            [a1 setTaskType:v19];
            goto LABEL_199;
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

        goto LABEL_178;
      case 3u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v114 & 0x7F) << v70;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v76 = 0;
            goto LABEL_182;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_182:
        [a1 setMediaType:v76];
        goto LABEL_199;
      case 4u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v114 & 0x7F) << v49;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_168;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_168:
        [a1 setIsWholeHouseAudio:v55];
        goto LABEL_199;
      case 5u:
        v48 = objc_alloc_init(FLOWSchemaFLOWholeHouseAudioDestinationContext);
        v114 = 0;
        v115 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWholeHouseAudioDestinationContextReadFrom(v48, a2))
        {
          goto LABEL_202;
        }

        PBReaderRecallMark();
        [a1 setWholeHouseAudioDestinationContext:v48];
        goto LABEL_87;
      case 6u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v114 & 0x7F) << v34;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v40 = 0;
            goto LABEL_162;
          }
        }

        v40 = (v36 != 0) & ~[a2 hasError];
LABEL_162:
        [a1 setIsMusicSubscriber:v40];
        goto LABEL_199;
      case 7u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v114 & 0x7F) << v77;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v11 = v78++ >= 9;
          if (v11)
          {
            v83 = 0;
            goto LABEL_186;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_186:
        [a1 addActiveSubscriptions:v83];
        goto LABEL_199;
      case 8u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v114 & 0x7F) << v91;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            v97 = 0;
            goto LABEL_194;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_194:
        [a1 setAppleMusicVoiceUserSubscriptionState:v97];
        goto LABEL_199;
      case 9u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v114 & 0x7F) << v63;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            v69 = 0;
            goto LABEL_174;
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

LABEL_174:
        [a1 setAppleMusicVoicePreviewOfferNotShown:v69];
        goto LABEL_199;
      case 0xAu:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v114 & 0x7F) << v105;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v111 = 0;
            goto LABEL_198;
          }
        }

        v111 = (v107 != 0) & ~[a2 hasError];
LABEL_198:
        [a1 setIsAppleMusicVoiceEligible:v111];
        goto LABEL_199;
      case 0xBu:
        v48 = objc_alloc_init(FLOWSchemaFLOWMediaPlayerPlaybackContext);
        v114 = 0;
        v115 = 0;
        if (PBReaderPlaceMark() && FLOWSchemaFLOWMediaPlayerPlaybackContextReadFrom(v48, a2))
        {
          PBReaderRecallMark();
          [a1 setMediaPlayerPlaybackContext:v48];
LABEL_87:

LABEL_199:
          v112 = [a2 position];
          if (v112 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_202:

        return 0;
      case 0xCu:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v114 & 0x7F) << v98;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
          if (v11)
          {
            v104 = 0;
            goto LABEL_196;
          }
        }

        v104 = (v100 != 0) & ~[a2 hasError];
LABEL_196:
        [a1 setIsSiriForAirPlayRequest:v104];
        goto LABEL_199;
      case 0xDu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v114 & 0x7F) << v27;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_160;
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

LABEL_160:
        [a1 setAirPlayTargetedDevicesCount:v33];
        goto LABEL_199;
      case 0xEu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v114 & 0x7F) << v41;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v47 = 0;
            goto LABEL_166;
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

LABEL_166:
        [a1 setAirPlaySuccessfullyPlayingDevicesCount:v47];
        goto LABEL_199;
      case 0xFu:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v114 & 0x7F) << v84;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v11 = v85++ >= 9;
          if (v11)
          {
            v90 = 0;
            goto LABEL_190;
          }
        }

        if ([a2 hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v86;
        }

LABEL_190:
        [a1 setAirPlayRouteSettingStatus:v90];
        goto LABEL_199;
      case 0x10u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v114 & 0x7F) << v20;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_156;
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

LABEL_156:
        [a1 setUserPersona:v26];
        goto LABEL_199;
      case 0x11u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v114) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v114 & 0x7F) << v56;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v62 = 0;
            goto LABEL_170;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_170:
        [a1 setWasOnScreenItemSelected:v62];
        goto LABEL_199;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_199;
    }
  }
}

uint64_t CNVSchemaCNVExecutionCommitStartedReadFrom(void *a1, void *a2)
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

uint64_t ORCHSchemaORCHDeviceDynamicContextReadFrom(void *a1, void *a2)
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
      v106 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v106 & 0x7F) << v6;
      if ((v106 & 0x80) == 0)
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
          v113 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v113 & 0x7F) << v14;
          if ((v113 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_161:
            [a1 setThermalState:v20];
            goto LABEL_180;
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

        goto LABEL_161;
      case 2u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v112 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v112 & 0x7F) << v70;
          if ((v112 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_165;
          }
        }

        if ([a2 hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_165:
        [a1 setMotionActivity:v76];
        continue;
      case 3u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v114 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v114 & 0x7F) << v49;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_153;
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

LABEL_153:
        [a1 setTimeSinceAssistantDaemonStartedInMs:v55];
        continue;
      case 4u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          v119 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v119 & 0x7F) << v56;
          if ((v119 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_155;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_155:
        [a1 setHeadGesturesSupported:v62];
        continue;
      case 5u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v118 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v118 & 0x7F) << v28;
          if ((v118 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_143;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_143:
        [a1 setHeadGesturesEnabled:v34];
        continue;
      case 6u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          v111 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

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
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_169;
          }
        }

        if ([a2 hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_169:
        [a1 setAcceptProceedGesture:v83];
        continue;
      case 7u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        while (1)
        {
          v110 = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v110 & 0x7F) << v85;
          if ((v110 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            v91 = 0;
            goto LABEL_173;
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

LABEL_173:
        [a1 setDeclineDismissGesture:v91];
        continue;
      case 8u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v117 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v117 & 0x7F) << v63;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_157;
          }
        }

        v69 = (v65 != 0) & ~[a2 hasError];
LABEL_157:
        [a1 setIsWifiEnabled:v69];
        continue;
      case 9u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        while (1)
        {
          v109 = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v109 & 0x7F) << v99;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v12 = v100++ >= 9;
          if (v12)
          {
            v105 = 0;
            goto LABEL_179;
          }
        }

        if ([a2 hasError])
        {
          v105 = 0;
        }

        else
        {
          v105 = v101;
        }

LABEL_179:
        [a1 setBluetoothState:v105];
        continue;
      case 0xAu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v108 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v108 & 0x7F) << v42;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_149;
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

LABEL_149:
        [a1 setFlashlightLevel:v48];
        continue;
      case 0xBu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        while (1)
        {
          v116 = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v116 & 0x7F) << v92;
          if ((v116 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v12 = v93++ >= 9;
          if (v12)
          {
            v98 = 0;
            goto LABEL_175;
          }
        }

        v98 = (v94 != 0) & ~[a2 hasError];
LABEL_175:
        [a1 setIsChatGPTEnabled:v98];
        continue;
      case 0xCu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v107 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v107 & 0x7F) << v21;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_141;
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

LABEL_141:
        [a1 addGenAIAgentsEnabled:v27];
        continue;
      case 0xDu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
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
      v115 = 0;
      v38 = [a2 position] + 1;
      if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
      {
        v40 = [a2 data];
        [v40 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v37 |= (v115 & 0x7F) << v35;
      if ((v115 & 0x80) == 0)
      {
        break;
      }

      v35 += 7;
      v12 = v36++ >= 9;
      if (v12)
      {
        v41 = 0;
        goto LABEL_145;
      }
    }

    v41 = (v37 != 0) & ~[a2 hasError];
LABEL_145:
    [a1 setIsSoundAnalysisEnabled:v41];
LABEL_180:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t CDASchemaCDADebugElectionDecisionMadeReadFrom(void *a1, void *a2)
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
            goto LABEL_46;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_46:
        [a1 setIsCrossDeviceArbitrationAllowed:v28];
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(CDASchemaCDAAdvertisementData);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !CDASchemaCDAAdvertisementDataReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addAdvertisementData:v21];
        }
      }

      else if (v13 == 3)
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
        [a1 setDeviceGroup:v20];
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

uint64_t CDASchemaCDAAdvertisementDataReadFrom(void *a1, void *a2)
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
            v84 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v84 & 0x7F) << v50;
            if ((v84 & 0x80) == 0)
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
          [a1 setConfidenceScore:v56];
          continue;
        }

        if (v14 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v83 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v83 & 0x7F) << v29;
            if ((v83 & 0x80) == 0)
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
          [a1 setDeviceClass:v35];
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
            v86 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v86 & 0x7F) << v43;
            if ((v86 & 0x80) == 0)
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
          [a1 setAudioHash:v49];
          continue;
        }

        if (v14 == 2)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v85 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v85 & 0x7F) << v22;
            if ((v85 & 0x80) == 0)
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
          [a1 setGoodnessScore:v28];
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
          v82 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v82 & 0x7F) << v64;
          if ((v82 & 0x80) == 0)
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
        [a1 setDeviceGroup:v70];
        continue;
      }

      if (v14 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          v81 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

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
        [a1 setProductType:v42];
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
            v80 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v80 & 0x7F) << v57;
            if ((v80 & 0x80) == 0)
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
          [a1 setTieBreaker:v63];
          continue;
        case 8:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v88 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v88 & 0x7F) << v71;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v12 = v72++ >= 9;
            if (v12)
            {
              v77 = 0;
              goto LABEL_144;
            }
          }

          v77 = (v73 != 0) & ~[a2 hasError];
LABEL_144:
          [a1 setIsFromContextCollector:v77];
          continue;
        case 9:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v87 = 0;
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
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_142;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_142:
          [a1 setIsSelf:v21];
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

uint64_t SISchemaUUFRSaidReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = PBReaderReadString();
            [a1 setDialogIdentifier:v21];
            goto LABEL_55;
          case 2:
            v21 = objc_alloc_init(SISchemaSiriResponseContext);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !SISchemaSiriResponseContextReadFrom(v21, a2))
            {
LABEL_68:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setSiriResponseContext:v21];
            goto LABEL_55;
          case 3:
            v21 = PBReaderReadString();
            [a1 setAceViewID:v21];
LABEL_55:

            goto LABEL_56;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 7)
        {
          v21 = objc_alloc_init(SISchemaUUID);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v21, a2))
          {
            goto LABEL_68;
          }

          PBReaderRecallMark();
          [a1 setSubRequestId:v21];
          goto LABEL_55;
        }

        if (v13 == 6)
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
              goto LABEL_65;
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

LABEL_65:
          [a1 setResponseCategory:v28];
          goto LABEL_56;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v21 = PBReaderReadString();
          [a1 setAceViewClass:v21];
          goto LABEL_55;
        }

        if (v13 == 5)
        {
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
          [a1 setSonicResponse:v20];
          goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SISchemaSiriResponseContextReadFrom(void *a1, void *a2)
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
      [a1 setDialogPhase:v29];
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
      [a1 setPresentationType:v28];
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
      [a1 setSiriResponseMode:v21];
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

uint64_t CDASchemaCDAElectionDecisionMadeReadFrom(void *a1, void *a2)
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
        LOBYTE(v49) = 0;
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            while (1)
            {
              LOBYTE(v49) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

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
              v11 = v33++ >= 9;
              if (v11)
              {
                v38 = 0;
                goto LABEL_91;
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

LABEL_91:
            [a1 setPreviousDecision:v38];
            goto LABEL_102;
          }

          if (v13 == 4)
          {
            v28 = objc_alloc_init(CDASchemaCDAParticipant);
            v49 = 0;
            v50 = 0;
            if (!PBReaderPlaceMark() || !CDASchemaCDAParticipantReadFrom(v28, a2))
            {
LABEL_105:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setThisDevice:v28];
            goto LABEL_81;
          }
        }

        else
        {
          if (v13 == 1)
          {
            LODWORD(v49) = 0;
            v29 = [a2 position] + 4;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v49 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            LODWORD(v31) = v49;
            [a1 setVersion:v31];
            goto LABEL_102;
          }

          if (v13 == 2)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v49) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v49 & 0x7F) << v21;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_87;
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

LABEL_87:
            [a1 setDecision:v27];
            goto LABEL_102;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v28 = objc_alloc_init(CDASchemaCDAParticipant);
          v49 = 0;
          v50 = 0;
          if (!PBReaderPlaceMark() || !CDASchemaCDAParticipantReadFrom(v28, a2))
          {
            goto LABEL_105;
          }

          PBReaderRecallMark();
          [a1 setWinningDevice:v28];
          goto LABEL_81;
        }

        if (v13 == 6)
        {
          v28 = objc_alloc_init(CDASchemaCDAParticipant);
          v49 = 0;
          v50 = 0;
          if (!PBReaderPlaceMark() || !CDASchemaCDAParticipantReadFrom(v28, a2))
          {
            goto LABEL_105;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addHeardParticipants:v28];
          }

          goto LABEL_81;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            while (1)
            {
              LOBYTE(v49) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v49 & 0x7F) << v39;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v45 = 0;
                goto LABEL_95;
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

LABEL_95:
            [a1 setTimeSinceLastDecisionInMs:v45];
            goto LABEL_102;
          case 9:
            v28 = objc_alloc_init(CDASchemaCDAScoreBoosters);
            v49 = 0;
            v50 = 0;
            if (!PBReaderPlaceMark() || !CDASchemaCDAScoreBoostersReadFrom(v28, a2))
            {
              goto LABEL_105;
            }

            PBReaderRecallMark();
            [a1 setGoodnessScoreBoosts:v28];
LABEL_81:

            goto LABEL_102;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v49) = 0;
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
              v11 = v15++ >= 9;
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
              v20 = v16;
            }

LABEL_99:
            [a1 setRawGoodnessScore:v20];
            goto LABEL_102;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_102:
      v47 = [a2 position];
    }

    while (v47 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t CDASchemaCDAParticipantReadFrom(void *a1, void *a2)
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
          [a1 setGoodnessScore:v35];
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
          [a1 setDeviceClass:v27];
          goto LABEL_71;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v28 = objc_alloc_init(SISchemaUUID);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
LABEL_74:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setRotatedElectionParticipantId:v28];
            goto LABEL_47;
          case 4:
            v28 = objc_alloc_init(SISchemaUUID);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom(v28, a2))
            {
              goto LABEL_74;
            }

            PBReaderRecallMark();
            [a1 setElectionParticipantId:v28];
LABEL_47:

            goto LABEL_71;
          case 3:
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
            [a1 setProductType:v20];
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

uint64_t SISchemaUIStateTransitionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 6:
            v35 = objc_alloc_init(SISchemaUIStateDismissed);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUIStateDismissedReadFrom(v35, a2))
            {
LABEL_88:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setDismissed:v35];
            goto LABEL_68;
          case 5:
            v35 = objc_alloc_init(SISchemaUIStatePresenting);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !SISchemaUIStatePresentingReadFrom(v35, a2))
            {
              goto LABEL_88;
            }

            PBReaderRecallMark();
            [a1 setPresenting:v35];
LABEL_68:

            goto LABEL_85;
          case 4:
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
                goto LABEL_80;
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

LABEL_80:
            [a1 setDismissalReason:v27];
            goto LABEL_85;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v45 & 0x7F) << v28;
              if ((v45 & 0x80) == 0)
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
            [a1 setCurrentState:v34];
            goto LABEL_85;
          case 2:
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
                goto LABEL_84;
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

LABEL_84:
            [a1 setPreviousState:v42];
            goto LABEL_85;
          case 3:
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
                goto LABEL_76;
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

LABEL_76:
            [a1 setSiriPresentationType:v20];
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

uint64_t SISchemaUIStatePresentingReadFrom(void *a1, void *a2)
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
      [a1 setPresentationType:v20];
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

uint64_t SISchemaUEILaunchEndedReadFrom(void *a1, void *a2)
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

uint64_t CDASchemaCDAScoreBoostersReadFrom(void *a1, void *a2)
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
            v84 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v84 & 0x7F) << v50;
            if ((v84 & 0x80) == 0)
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
          [a1 setRecentRaiseToWakeBoost:v56];
          continue;
        }

        if (v14 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v83 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v83 & 0x7F) << v29;
            if ((v83 & 0x80) == 0)
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
          [a1 setRecentSiriRequestBoost:v35];
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
            v86 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v86 & 0x7F) << v43;
            if ((v86 & 0x80) == 0)
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
          [a1 setDeviceBoost:v49];
          continue;
        }

        if (v14 == 2)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v85 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v85 & 0x7F) << v22;
            if ((v85 & 0x80) == 0)
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
          [a1 setRecentUnlockBoost:v28];
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
          v82 = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v82 & 0x7F) << v64;
          if ((v82 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v70 = 0;
            goto LABEL_138;
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

LABEL_138:
        [a1 setRecentMotionBoost:v70];
        continue;
      }

      if (v14 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          v81 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

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
        [a1 setRecentPlaybackBoost:v42];
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
            v87 = 0;
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
            v12 = v58++ >= 9;
            if (v12)
            {
              v63 = 0;
              goto LABEL_134;
            }
          }

          v63 = (v59 != 0) & ~[a2 hasError];
LABEL_134:
          [a1 setIsTrump:v63];
          continue;
        case 8:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v88 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v88 & 0x7F) << v71;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v12 = v72++ >= 9;
            if (v12)
            {
              v77 = 0;
              goto LABEL_146;
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

LABEL_146:
          [a1 setTrumpReason:v77];
          continue;
        case 9:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v80 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v80 & 0x7F) << v15;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_142;
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

LABEL_142:
          [a1 setRecentAlarmBoost:v21];
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

uint64_t MHSchemaMHClientEventReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(SISchemaUUID);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (SISchemaUUIDReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setMhId:v14];
        goto LABEL_220;
      case 2u:
        v14 = objc_alloc_init(MHSchemaMHClientEventMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHClientEventMetadataReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v14];
        goto LABEL_220;
      case 0x64u:
        v14 = objc_alloc_init(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAcousticFalseTriggerMitigationEvaluationContext:v14];
        goto LABEL_220;
      case 0x65u:
        v14 = objc_alloc_init(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHLatticeFalseTriggerMitigationEvaluationContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setLatticeFalseTriggerMitigationEvaluationContext:v14];
        goto LABEL_220;
      case 0x66u:
        v14 = objc_alloc_init(MHSchemaMHUnintendedResponseSuppressionEvaluationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHUnintendedResponseSuppressionEvaluationContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setUnintendedResponseSuppressionExecutionContext:v14];
        goto LABEL_220;
      case 0x67u:
        v14 = objc_alloc_init(MHSchemaMHCoreSpeechPreprocessorCompleted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHCoreSpeechPreprocessorCompletedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setCoreSpeechPreprocessorCompleted:v14];
        goto LABEL_220;
      case 0x68u:
        v14 = objc_alloc_init(MHSchemaMHASRAudioConfigureStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHASRAudioConfigureStartedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAsrAudioConfigureStarted:v14];
        goto LABEL_220;
      case 0x69u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioInitContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioInitContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioInitContext:v14];
        goto LABEL_220;
      case 0x6Au:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioConfigureContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioConfigureContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioConfigureContext:v14];
        goto LABEL_220;
      case 0x6Bu:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioPrepareContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioPrepareContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioPrepareContext:v14];
        goto LABEL_220;
      case 0x6Cu:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioPrewarmContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioPrewarmContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioPrewarmContext:v14];
        goto LABEL_220;
      case 0x6Du:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioStartRecordingContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioStartRecordingContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioStartRecordingContext:v14];
        goto LABEL_220;
      case 0x6Eu:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioStopRecordingContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioStopRecordingContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioStopRecordingContext:v14];
        goto LABEL_220;
      case 0x6Fu:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioSessionSetActiveContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioSessionSetActiveContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioSessionSetActiveContext:v14];
        goto LABEL_220;
      case 0x70u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioSessionSetInactiveContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioSessionSetInactiveContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioSessionSetInactiveContext:v14];
        goto LABEL_220;
      case 0x71u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioFetchRouteContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioFetchRouteContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioFetchRouteContext:v14];
        goto LABEL_220;
      case 0x72u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioRecordingContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioRecordingContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioRecordingContext:v14];
        goto LABEL_220;
      case 0x73u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioRecordingMissedBufferDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioRecordingMissedBufferDetectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioRecordingMissedBufferDetected:v14];
        goto LABEL_220;
      case 0x74u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioLateBufferDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioLateBufferDetectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioLateBufferDetected:v14];
        goto LABEL_220;
      case 0x75u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioRecordingFirstBufferContext:v14];
        goto LABEL_220;
      case 0x76u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioRecordingLastBufferContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioRecordingLastBufferContext:v14];
        goto LABEL_220;
      case 0x77u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioRecordingInterruptionContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioRecordingInterruptionContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioRecordingInterruptionContext:v14];
        goto LABEL_220;
      case 0x78u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1ReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioRecordingInterruptionStartedTier1:v14];
        goto LABEL_220;
      case 0x79u:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioBluetoothInfo);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioBluetoothInfoReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioBluetoothInfo:v14];
        goto LABEL_220;
      case 0x7Au:
        v14 = objc_alloc_init(MHSchemaMHVoiceTriggerTwoShotDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHVoiceTriggerTwoShotDetectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setVoiceTriggerTwoShotDetected:v14];
        goto LABEL_220;
      case 0x7Bu:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioTwoShotTransitionContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioTwoShotTransitionContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioTwoShotTransitionContext:v14];
        goto LABEL_220;
      case 0x7Cu:
        v14 = objc_alloc_init(MHSchemaMHVoiceTriggerContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHVoiceTriggerContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setVoiceTriggerContext:v14];
        goto LABEL_220;
      case 0x7Du:
        v14 = objc_alloc_init(MHSchemaMHEndpointDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHEndpointDetectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setEndpointDetected:v14];
        goto LABEL_220;
      case 0x7Eu:
        v14 = objc_alloc_init(MHSchemaMHEndpointLatencyInfoReported);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHEndpointLatencyInfoReportedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setEndpointLatencyInfoReported:v14];
        goto LABEL_220;
      case 0x7Fu:
        v14 = objc_alloc_init(MHSchemaMHVoiceAdBlockerContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHVoiceAdBlockerContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAdblockerContext:v14];
        goto LABEL_220;
      case 0x80u:
        v14 = objc_alloc_init(MHSchemaMHOnDeviceEndpointerContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHOnDeviceEndpointerContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setOnDeviceEndpointerContext:v14];
        goto LABEL_220;
      case 0x81u:
        v14 = objc_alloc_init(MHSchemaMHServerEndpointerContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHServerEndpointerContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setServerEndpointerContext:v14];
        goto LABEL_220;
      case 0x82u:
        v14 = objc_alloc_init(MHSchemaMHEndpointerUsed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHEndpointerUsedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setEndpointerUsed:v14];
        goto LABEL_220;
      case 0x83u:
        v14 = objc_alloc_init(MHSchemaMHEndpointDelayContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHEndpointDelayContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setEndpointDelayContext:v14];
        goto LABEL_220;
      case 0x84u:
        v14 = objc_alloc_init(MHSchemaMHMitigationDecisionRecommended);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHMitigationDecisionRecommendedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setFinalMitigationRecommendation:v14];
        goto LABEL_220;
      case 0x85u:
        v14 = objc_alloc_init(MHSchemaMHApplicationPlaybackAttempted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHApplicationPlaybackAttemptedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setApplicationPlaybackAttempted:v14];
        goto LABEL_220;
      case 0x86u:
        v14 = objc_alloc_init(MHSchemaMHSiriLaunchRequestContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHSiriLaunchRequestContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setSiriLaunchRequestContext:v14];
        goto LABEL_220;
      case 0x87u:
        v14 = objc_alloc_init(MHSchemaMHEndpointerAccessibleContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHEndpointerAccessibleContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setEndpointerAccessibleContext:v14];
        goto LABEL_220;
      case 0x88u:
        v14 = objc_alloc_init(MHSchemaMHCarplayLanguageMismatch);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHCarplayLanguageMismatchReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setCarPlayLangaugeMismatched:v14];
        goto LABEL_220;
      case 0x89u:
        v14 = objc_alloc_init(MHSchemaMHDarwinConnectedDeviceWakeContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHDarwinConnectedDeviceWakeContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setDarwinConnectedDeviceWakeContext:v14];
        goto LABEL_220;
      case 0x8Au:
        v14 = objc_alloc_init(MHSchemaMHOdldFalseTriggerMitigated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHOdldFalseTriggerMitigatedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setOdldFalseTriggerMitigated:v14];
        goto LABEL_220;
      case 0x8Bu:
        v14 = objc_alloc_init(MHSchemaMHSpeakerFalseTriggerMitigated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHSpeakerFalseTriggerMitigatedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setSpeakerFalseTriggerMitigated:v14];
        goto LABEL_220;
      case 0x8Cu:
        v14 = objc_alloc_init(MHSchemaMHSiriDirectedSpeechDetectionFailed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHSiriDirectedSpeechDetectionFailedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setSiriDirectedSpeechDetectionFailed:v14];
        goto LABEL_220;
      case 0x8Du:
        v14 = objc_alloc_init(MHSchemaMHAudioDucked);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAudioDuckedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAudioDucked:v14];
        goto LABEL_220;
      case 0x8Eu:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioRecordingFailed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioRecordingFailedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAudioRecordingFailed:v14];
        goto LABEL_220;
      case 0x8Fu:
        v14 = objc_alloc_init(MHSchemaMHRTSFalseRejectDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHRTSFalseRejectDetectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setRtsFalseRejectDetected:v14];
        goto LABEL_220;
      case 0x90u:
        v14 = objc_alloc_init(MHSchemaMHTRPCreated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHTRPCreatedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setTrpCreated:v14];
        goto LABEL_220;
      case 0x91u:
        v14 = objc_alloc_init(MHSchemaMHUserSpeakingContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHUserSpeakingContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setUserSpeakingContext:v14];
        goto LABEL_220;
      case 0x92u:
        v14 = objc_alloc_init(MHSchemaMHSpeechStopDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHSpeechStopDetectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setSpeechStopDetected:v14];
        goto LABEL_220;
      case 0x93u:
        v14 = objc_alloc_init(MHSchemaMHSpeechDetectorContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHSpeechDetectorContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setSpeechDetectorContext:v14];
        goto LABEL_220;
      case 0x94u:
        v14 = objc_alloc_init(MHSchemaMHStoppedListeningForSpeechContinuation);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHStoppedListeningForSpeechContinuationReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setStoppedListeningForSpeechContinuation:v14];
        goto LABEL_220;
      case 0x95u:
        v14 = objc_alloc_init(MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setUserEngagementModelContext:v14];
        goto LABEL_220;
      case 0x96u:
        v14 = objc_alloc_init(MHSchemaMHAttendingContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAttendingContextReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAttendingContext:v14];
        goto LABEL_220;
      case 0x97u:
        v14 = objc_alloc_init(MHSchemaMHCrownPressed);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHCrownPressedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setCrownPressed:v14];
        goto LABEL_220;
      case 0x98u:
        v14 = objc_alloc_init(MHSchemaMHRaiseToSpeakTriggered);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHRaiseToSpeakTriggeredReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setRtsTriggered:v14];
        goto LABEL_220;
      case 0x99u:
        v14 = objc_alloc_init(MHSchemaMHRaiseToSpeakFirstPassPolicyTriggered);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHRaiseToSpeakFirstPassPolicyTriggeredReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setRtsFirstPassPolicyTriggered:v14];
        goto LABEL_220;
      case 0x9Au:
        v14 = objc_alloc_init(MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMadeReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setRtsSecondPassPolicyDecisionMade:v14];
        goto LABEL_220;
      case 0x9Bu:
        v14 = objc_alloc_init(MHSchemaMHVoiceProfileOnboarded);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHVoiceProfileOnboardedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setVoiceProfileOnboarded:v14];
        goto LABEL_220;
      case 0x9Du:
        v14 = objc_alloc_init(MHSchemaMHVoiceTriggerRePrompted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHVoiceTriggerRePromptedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setVoiceTriggerRePrompted:v14];
        goto LABEL_220;
      case 0x9Eu:
        v14 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriorityReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAssistantDaemonAudioRecordingFailureInsufficientPriority:v14];
        goto LABEL_220;
      case 0x9Fu:
        v14 = objc_alloc_init(MHSchemaMHVoiceProfileICloudSyncFinished);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHVoiceProfileICloudSyncFinishedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setVoiceProfileICloudSyncFinished:v14];
        goto LABEL_220;
      case 0xA0u:
        v14 = objc_alloc_init(MHSchemaMHVoiceTriggerRejectDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHVoiceTriggerRejectDetectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setVoiceTriggerRejectDetected:v14];
        goto LABEL_220;
      case 0xA1u:
        v14 = objc_alloc_init(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueriedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAdaptiveSiriVolumeTTSVolumeQueried:v14];
        goto LABEL_220;
      case 0xA2u:
        v14 = objc_alloc_init(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHAdaptiveSiriVolumeUserIntentDetectedReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setAdaptiveSiriVolumeUserIntentDetected:v14];
        goto LABEL_220;
      case 0xA3u:
        v14 = objc_alloc_init(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1ReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setSpeakerIdEnrollmentDataReportedTier1:v14];
        goto LABEL_220;
      case 0xA4u:
        v14 = objc_alloc_init(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1ReadFrom(v14, a2) & 1) == 0)
        {
          goto LABEL_226;
        }

        PBReaderRecallMark();
        [a1 setSpeakerIdModelSelectedClockSessionInfoTier1:v14];
        goto LABEL_220;
      case 0xA5u:
        v14 = objc_alloc_init(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1);
        v16 = 0;
        v17 = 0;
        if (PBReaderPlaceMark() && (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1ReadFrom(v14, a2) & 1) != 0)
        {
          PBReaderRecallMark();
          [a1 setSpeakerIdModelOneSessionReportedTier1:v14];
LABEL_220:

LABEL_221:
          v4 = a2;
          continue;
        }

LABEL_226:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_221;
    }
  }
}

uint64_t MHSchemaMHAssistantDaemonAudioFetchRouteContextReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioFetchRouteStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MHSchemaMHAssistantDaemonAudioFetchRouteStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v13];
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

    v13 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioFetchRouteEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !MHSchemaMHAssistantDaemonAudioFetchRouteEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MHSchemaMHAssistantDaemonAudioFetchRouteStartedReadFrom(void *a1, void *a2)
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

uint64_t RFSchemaRFSnippetRenderingEndedReadFrom(void *a1, void *a2)
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

uint64_t CDASchemaCDAElectionAdvertisingStartEndedReadFrom(void *a1, void *a2)
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
      [a1 setState:v20];
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

uint64_t MHSchemaMHClientEventMetadataReadFrom(void *a1, void *a2)
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
        [a1 setMhId:v13];
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

uint64_t MHSchemaMHAssistantDaemonAudioPrepareContextReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioPrepareStarted);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !MHSchemaMHAssistantDaemonAudioPrepareStartedReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setStartedOrChanged:v13];
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

    v13 = objc_alloc_init(MHSchemaMHAssistantDaemonAudioPrepareEnded);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !MHSchemaMHAssistantDaemonAudioPrepareEndedReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEnded:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MHSchemaMHAssistantDaemonAudioPrepareStartedReadFrom(void *a1, void *a2)
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

uint64_t ORCHSchemaORCHRequestEndedReadFrom(void *a1, void *a2)
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

uint64_t ORCHSchemaORCHSubRequestEndedReadFrom(void *a1, void *a2)
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

uint64_t MHSchemaMHAssistantDaemonAudioPrepareEndedReadFrom(void *a1, void *a2)
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

uint64_t MHSchemaMHAssistantDaemonAudioFetchRouteEndedReadFrom(void *a1, void *a2)
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

void sub_1A9C64DAC()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_71();
  sub_1A9C8B650();
  OUTLINED_FUNCTION_24();
  while (1)
  {
    if (v0 == v1)
    {
      OUTLINED_FUNCTION_74();
      return;
    }

    if (v3)
    {
      OUTLINED_FUNCTION_88();
    }

    else
    {
      OUTLINED_FUNCTION_80();
      if (v4)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_87();
    }

    OUTLINED_FUNCTION_65();
    if (v5)
    {
      break;
    }

    v6 = [v2 enumeration];
    v7 = [v6 typeIdentifier];

    v8 = [v7 custom];
    OUTLINED_FUNCTION_107();

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C64E84()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_71();
  sub_1A9C8B650();
  OUTLINED_FUNCTION_24();
  while (1)
  {
    if (v0 == v1)
    {
      OUTLINED_FUNCTION_74();
      return;
    }

    if (v3)
    {
      OUTLINED_FUNCTION_88();
    }

    else
    {
      OUTLINED_FUNCTION_80();
      if (v4)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_87();
    }

    OUTLINED_FUNCTION_65();
    if (v5)
    {
      break;
    }

    v6 = [v2 entity];
    v7 = [v6 typeIdentifier];

    v8 = [v7 custom];
    OUTLINED_FUNCTION_107();

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C64F5C()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_71();
  sub_1A9C8B650();
  OUTLINED_FUNCTION_24();
  while (1)
  {
    if (v0 == v1)
    {
      OUTLINED_FUNCTION_74();
      return;
    }

    if (v3)
    {
      OUTLINED_FUNCTION_88();
    }

    else
    {
      OUTLINED_FUNCTION_80();
      if (v4)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_87();
    }

    OUTLINED_FUNCTION_65();
    if (v5)
    {
      break;
    }

    v6 = [v2 query];
    v7 = [v6 typeIdentifier];

    v8 = [v7 custom];
    OUTLINED_FUNCTION_107();

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C65034()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_71();
  sub_1A9C8B650();
  OUTLINED_FUNCTION_24();
  while (1)
  {
    if (v0 == v1)
    {
      OUTLINED_FUNCTION_74();
      return;
    }

    if (v3)
    {
      OUTLINED_FUNCTION_88();
    }

    else
    {
      OUTLINED_FUNCTION_80();
      if (v4)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_87();
    }

    OUTLINED_FUNCTION_65();
    if (v5)
    {
      break;
    }

    v6 = [v2 value];
    v7 = [v6 primitive];

    v8 = [v7 app];
    OUTLINED_FUNCTION_107();

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1A9C6510C()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_71();
  sub_1A9C8B650();
  OUTLINED_FUNCTION_24();
  while (1)
  {
    if (v0 == v1)
    {
      OUTLINED_FUNCTION_74();
      return;
    }

    if (v3)
    {
      OUTLINED_FUNCTION_88();
    }

    else
    {
      OUTLINED_FUNCTION_80();
      if (v4)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_87();
    }

    OUTLINED_FUNCTION_65();
    if (v5)
    {
      break;
    }

    v6 = [v2 collection];
    v7 = [v6 typeIdentifier];

    v8 = [v7 custom];
    OUTLINED_FUNCTION_107();

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void *sub_1A9C65238@<X0>(void *a1@<X8>)
{
  result = sub_1A9CB0E70();
  *a1 = result;
  return result;
}