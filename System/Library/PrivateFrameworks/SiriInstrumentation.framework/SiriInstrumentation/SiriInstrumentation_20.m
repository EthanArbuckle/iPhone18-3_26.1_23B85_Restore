uint64_t IFTSchemaIFTToolResolutionReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(IFTSchemaIFTStatementId);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !IFTSchemaIFTStatementIdReadFrom(v14, a2))
          {
LABEL_46:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setStatementId:v14];
          goto LABEL_40;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(IFTSchemaIFTStatementId);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !IFTSchemaIFTStatementIdReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

          PBReaderRecallMark();
          [a1 setOriginProgramStatementId:v14];
          goto LABEL_40;
        }
      }

      else
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
              goto LABEL_42;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_42:
          [a1 setExists:v21];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setToolId:v14];
LABEL_40:

          goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IFTSchemaIFTToolRetrievalResponseReadFrom(void *a1, void *a2)
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

uint64_t IFTSchemaIFTTypedValueReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(IFTSchemaIFTValue);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !IFTSchemaIFTValueReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setValue:v13];
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

    v13 = objc_alloc_init(IFTSchemaIFTCollectionValue);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !IFTSchemaIFTCollectionValueReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setCollection:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IFTSchemaIFTTypeIdentifierReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(IFTSchemaIFTPrimitive);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !IFTSchemaIFTPrimitiveReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setPrimitive:v13];
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

    v13 = objc_alloc_init(IFTSchemaIFTCustom);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !IFTSchemaIFTCustomReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setCustom:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IFTSchemaIFTTypeInstanceReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(IFTSchemaIFTTypeIdentifier);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !IFTSchemaIFTTypeIdentifierReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setTypeIdentifier:v13];
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

    v13 = objc_alloc_init(IFTSchemaIFTCollectionValue);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !IFTSchemaIFTCollectionValueReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setCollection:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IFTSchemaIFTUndoExpressionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(IFTSchemaIFTStatementId);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !IFTSchemaIFTStatementIdReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setStatementId:v13];
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

uint64_t IFTSchemaIFTUpdateParameterReadFrom(void *a1, void *a2)
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
          v28 = objc_alloc_init(IFTSchemaIFTStatementId);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !IFTSchemaIFTStatementIdReadFrom(v28, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setValue:v28];
          goto LABEL_46;
        }

        if (v13 == 4)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v31[0] & 0x7F) << v21;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_54;
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

LABEL_54:
          [a1 setParameterIndex:v27];
          goto LABEL_55;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = PBReaderReadString();
          [a1 setParameterId:v28];
LABEL_46:

          goto LABEL_55;
        }

        if (v13 == 2)
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
          [a1 setKind:v20];
          goto LABEL_55;
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

uint64_t IFTSchemaIFTUpdateParametersExpressionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(IFTSchemaIFTStatementId);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !IFTSchemaIFTStatementIdReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCallStatementId:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(IFTSchemaIFTUpdateParameter);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !IFTSchemaIFTUpdateParameterReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addUpdates:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IFTSchemaIFTValueReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(IFTSchemaIFTEntityValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !IFTSchemaIFTEntityValueReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setEntity:v14];
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(IFTSchemaIFTQueryValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !IFTSchemaIFTQueryValueReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setQuery:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(IFTSchemaIFTPrimitiveValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !IFTSchemaIFTPrimitiveValueReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setPrimitive:v14];
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(IFTSchemaIFTEnumerationValue);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !IFTSchemaIFTEnumerationValueReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setEnumeration:v14];
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

uint64_t IFTSchemaIFTValueDisambiguationReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(IFTSchemaIFTTypedValue);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !IFTSchemaIFTTypedValueReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addItems:v20];
        }
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
            goto LABEL_36;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_36:
        [a1 setExists:v19];
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

uint64_t IFTSchemaIFTValueExpressionReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(IFTSchemaIFTValueExpressionArrayVariant);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !IFTSchemaIFTValueExpressionArrayVariantReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setArray:v20];
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
        [a1 setExists:v19];
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

uint64_t IFTSchemaIFTValueExpressionArrayVariantReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(IFTSchemaIFTStatementId);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !IFTSchemaIFTStatementIdReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addStatementId:v13];
        }
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

uint64_t IFTSchemaIFTVariableStepReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(IFTSchemaIFTStatementId);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !IFTSchemaIFTStatementIdReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setStatementId:v20];
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
        [a1 setExists:v19];
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

uint64_t IHSchemaIHClientEventReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(IHSchemaIHClientEventMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !IHSchemaIHClientEventMetadataReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v13];
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

    v13 = objc_alloc_init(IHSchemaIHModelEvaluationContext);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !IHSchemaIHModelEvaluationContextReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setModelEvaluationContext:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IHSchemaIHClientEventMetadataReadFrom(void *a1, void *a2)
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
        [a1 setIhId:v13];
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

uint64_t IHSchemaIHModelEvaluationContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 100)
      {
        if (v13 == 101)
        {
          v14 = objc_alloc_init(IHSchemaIHModelEvaluationEnded);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !IHSchemaIHModelEvaluationEndedReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setEnded:v14];
          goto LABEL_36;
        }

        if (v13 == 102)
        {
          v14 = objc_alloc_init(IHSchemaIHModelEvaluationFailed);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !IHSchemaIHModelEvaluationFailedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setFailed:v14];
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
          [a1 setContextId:v14];
          goto LABEL_36;
        }

        if (v13 == 100)
        {
          v14 = objc_alloc_init(IHSchemaIHModelEvaluationStarted);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !IHSchemaIHModelEvaluationStartedReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setStartedOrChanged:v14];
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

uint64_t IHSchemaIHModelEvaluationEndedReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(IHSchemaIHScore);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !IHSchemaIHScoreReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setScore:v13];
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

uint64_t IHSchemaIHModelEvaluationFailedReadFrom(void *a1, void *a2)
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

uint64_t IHSchemaIHModelEvaluationStartedReadFrom(void *a1, void *a2)
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
      [a1 setModelId:v14];
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

uint64_t IHSchemaIHScoreReadFrom(void *a1, void *a2)
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
    if ((v13 >> 3) == 3)
    {
      v28 = 0;
      v21 = [a2 position] + 4;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v23) = v28;
      [a1 setLowerBoundary:v23];
    }

    else if (v14 == 2)
    {
      v29 = 0;
      v18 = [a2 position] + 4;
      if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
      {
        v25 = [a2 data];
        [v25 getBytes:&v29 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v20) = v29;
      [a1 setUpperBoundary:v20];
    }

    else if (v14 == 1)
    {
      v30 = 0;
      v15 = [a2 position] + 4;
      if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v17) = v30;
      [a1 setScore:v17];
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

uint64_t INFERENCESchemaINFERENCEABModelEvaluatedReadFrom(void *a1, void *a2)
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
      v65 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v65 & 0x7F) << v6;
      if ((v65 & 0x80) == 0)
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
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v68 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v68 & 0x7F) << v36;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_95;
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

LABEL_95:
          [a1 setProjectIntent:v42];
          continue;
        case 2:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          while (1)
          {
            v67 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v67 & 0x7F) << v58;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v12 = v59++ >= 9;
            if (v12)
            {
              v64 = 0;
              goto LABEL_113;
            }
          }

          if ([a2 hasError])
          {
            v64 = 0;
          }

          else
          {
            v64 = v60;
          }

LABEL_113:
          [a1 setNumCandidateApps:v64];
          continue;
        case 3:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v71 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v71 & 0x7F) << v22;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_109;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_109:
          [a1 setIsDecisionCorrect:v28];
          continue;
      }
    }

    else if (v14 > 5)
    {
      if (v14 == 6)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (1)
        {
          v69 = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v69 & 0x7F) << v51;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            v57 = 0;
            goto LABEL_101;
          }
        }

        v57 = (v53 != 0) & ~[a2 hasError];
LABEL_101:
        [a1 setIsModelConfirmation:v57];
        continue;
      }

      if (v14 == 7)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v66 = 0;
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
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_107;
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

LABEL_107:
        [a1 setUserPersona:v35];
        continue;
      }
    }

    else
    {
      if (v14 == 4)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v72 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v72 & 0x7F) << v44;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v50 = 0;
            goto LABEL_99;
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

LABEL_99:
        [a1 setModelVersion:v50];
        continue;
      }

      if (v14 == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v70 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v70 & 0x7F) << v15;
          if ((v70 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_103;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_103:
        [a1 setIsModelDisambiguation:v21];
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

uint64_t INFERENCESchemaINFERENCEABModelResultTriggeredReadFrom(void *a1, void *a2)
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
      [a1 setTriggerReason:v27];
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
      [a1 setProjectIntent:v20];
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

uint64_t INFERENCESchemaINFERENCEAsrEuclidEmbeddingReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEEuclidServiceMetrics);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEEuclidServiceMetricsReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setEuclidServiceMetrics:v13];
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

    v13 = objc_alloc_init(INFERENCESchemaINFERENCEEuclidDebugMetrics);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEEuclidDebugMetricsReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setEuclidDebugMetrics:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCEBackgroundContactHandleSignalSetReadFrom(void *a1, void *a2)
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
      v20 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v20 & 0x7F) << v6;
      if ((v20 & 0x80) == 0)
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
      v19 = 0;
      v14 = [a2 position] + 4;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
      {
        v18 = [a2 data];
        [v18 getBytes:&v19 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v16) = v19;
      [a1 setPeopleSuggesterScore:v16];
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

uint64_t INFERENCESchemaINFERENCEBackgroundContactSignalSetReadFrom(void *a1, void *a2)
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
          v10 = [a2 data];
          [v10 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

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
      if ((v12 >> 3) == 3)
      {
        v24 = objc_alloc_init(INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet);
        v28[0] = 0;
        v28[1] = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEBackgroundContactHandleSignalSetReadFrom(v24, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v24)
        {
          [a1 addHandlesWithBgPrivacySignals:v24];
        }
      }

      else if (v13 == 2)
      {
        LODWORD(v28[0]) = 0;
        v21 = [a2 position] + 4;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:v28 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v23) = v28[0];
        [a1 setPeopleSuggesterScoreSumForContact:v23];
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v28 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v28[0] & 0x7F) << v14;
          if ((v28[0] & 0x80) == 0)
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

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_40:
        [a1 setIsMatchWithRelationName:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCECandidateInfoReadFrom(void *a1, void *a2)
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
        case 4:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          while (1)
          {
            v54 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v54 & 0x7F) << v32;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v12 = v33++ >= 9;
            if (v12)
            {
              v38 = 0;
              goto LABEL_72;
            }
          }

          v38 = (v34 != 0) & ~[a2 hasError];
LABEL_72:
          [a1 setIsShownToUser:v38];
          continue;
        case 5:
          v47 = PBReaderReadString();
          [a1 setAnonymizedEntityIdentifier:v47];

          continue;
        case 6:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v51 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v51 & 0x7F) << v18;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v12 = v19++ >= 9;
            if (v12)
            {
              v24 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_76:
          [a1 setCandidateType:v24];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          while (1)
          {
            v52 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

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
            v12 = v26++ >= 9;
            if (v12)
            {
              v31 = 0;
              goto LABEL_70;
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

LABEL_70:
          [a1 setSearchProvider:v31];
          continue;
        case 2:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          while (1)
          {
            v53 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v53 & 0x7F) << v40;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v12 = v41++ >= 9;
            if (v12)
            {
              v46 = 0;
              goto LABEL_80;
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

LABEL_80:
          [a1 setRank:v46];
          continue;
        case 3:
          v49 = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v49 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v17) = v49;
          [a1 setScore:v17];
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

uint64_t INFERENCESchemaINFERENCEClientEventReadFrom(void *a1, void *a2)
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
      case 'e':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setMusicAppSelectionGroundTruthGenerated:v13];
        goto LABEL_75;
      case 'f':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setVideoPlayOnThirdPartyAppGroundTruthGenerated:v13];
        goto LABEL_75;
      case 'g':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setVideoSmartAppSelectionDisambiguation:v13];
        goto LABEL_75;
      case 'h':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEResolutionRequestContext);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEResolutionRequestContextReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setResolutionRequestContext:v13];
        goto LABEL_75;
      case 'i':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCESimpleTaskInfoGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCESimpleTaskInfoGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setSimpleTaskInfoGenerated:v13];
        goto LABEL_75;
      case 'j':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEResolutionQueryInfoGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setResolutionQueryInfoGenerated:v13];
        goto LABEL_75;
      case 'k':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setUserPromptSelectedInfoGenerated:v13];
        goto LABEL_75;
      case 'l':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEContactCandidatesInfoGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setContactCandidatesInfoGenerated:v13];
        goto LABEL_75;
      case 'm':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCECRRTrainingSampleCollected);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECRRTrainingSampleCollectedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setCrrTrainingSampleCollected:v13];
        goto LABEL_75;
      case 'n':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEABModelEvaluated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEABModelEvaluatedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setAbModelEvaluated:v13];
        goto LABEL_75;
      case 'o':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEABModelResultTriggered);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEABModelResultTriggeredReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setAbModelResultTriggered:v13];
        goto LABEL_75;
      case 'p':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setWorkoutsAppSelectionGroundTruthGenerated:v13];
        goto LABEL_75;
      case 'q':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setNotebookAppSelectionGroundTruthGenerated:v13];
        goto LABEL_75;
      case 'r':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setCommsAppSelectionGroundTruthGenerated:v13];
        goto LABEL_75;
      case 's':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGeneratedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setPervasiveEntityResolutionGroundTruthGenerated:v13];
        goto LABEL_75;
      case 't':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReportedReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setSeasExecutionPathReported:v13];
        goto LABEL_75;
      case 'u':
        v13 = objc_alloc_init(INFERENCESchemaINFERENCEAsrEuclidEmbedding);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCEAsrEuclidEmbeddingReadFrom(v13, a2))
        {
          goto LABEL_79;
        }

        PBReaderRecallMark();
        [a1 setAsrEuclidEmbedding:v13];
        goto LABEL_75;
      default:
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_76;
        }

        v13 = objc_alloc_init(INFERENCESchemaINFERENCEClientEventMetadata);
        v16 = 0;
        v17 = 0;
        if (PBReaderPlaceMark() && INFERENCESchemaINFERENCEClientEventMetadataReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setEventMetadata:v13];
LABEL_75:

LABEL_76:
          v14 = [a2 position];
          if (v14 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_79:

        return 0;
    }
  }
}

uint64_t INFERENCESchemaINFERENCEClientEventMetadataReadFrom(void *a1, void *a2)
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
        [a1 setInferenceId:v13];
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

uint64_t INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignalsReadFrom(void *a1, void *a2)
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
      v232 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v232 & 0x7F) << v6;
      if ((v232 & 0x80) == 0)
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
          v232 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v232 & 0x7F) << v14;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_355:
            [a1 setAppUsageCountForEntity2Min:v20];
            goto LABEL_424;
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

        goto LABEL_355;
      case 2u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          v232 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v232 & 0x7F) << v112;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v118 = 0;
            goto LABEL_359;
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

LABEL_359:
        [a1 setAppUsageCountForEntity10Min:v118];
        continue;
      case 3u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          v232 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v232 & 0x7F) << v84;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v90 = 0;
            goto LABEL_339;
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

LABEL_339:
        [a1 setAppUsageCountForEntity1Hr:v90];
        continue;
      case 4u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          v232 = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v232 & 0x7F) << v98;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_347;
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

LABEL_347:
        [a1 setAppUsageCountForEntity6Hrs:v104];
        continue;
      case 5u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v232 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v232 & 0x7F) << v49;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_319;
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

LABEL_319:
        [a1 setAppUsageCountForEntity1Day:v55];
        continue;
      case 6u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        while (1)
        {
          v232 = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v232 & 0x7F) << v134;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            v140 = 0;
            goto LABEL_371;
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

LABEL_371:
        [a1 setAppUsageCountForEntity7Days:v140];
        continue;
      case 7u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        while (1)
        {
          v232 = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v232 & 0x7F) << v155;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            v161 = 0;
            goto LABEL_383;
          }
        }

        if ([a2 hasError])
        {
          v161 = 0;
        }

        else
        {
          v161 = v157;
        }

LABEL_383:
        [a1 setAppUsageCountForEntity14Days:v161];
        continue;
      case 8u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          v232 = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v232 & 0x7F) << v105;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_351;
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

LABEL_351:
        [a1 setAppUsageCountForEntity28Days:v111];
        continue;
      case 9u:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        while (1)
        {
          v232 = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            v181 = [a2 data];
            [v181 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v178 |= (v232 & 0x7F) << v176;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          v12 = v177++ >= 9;
          if (v12)
          {
            v182 = 0;
            goto LABEL_395;
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

LABEL_395:
        [a1 setAppUsageCountForEntityInf:v182];
        continue;
      case 0xAu:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v232 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v232 & 0x7F) << v63;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_327;
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

LABEL_327:
        [a1 setRecencyOrderOfAppUsedForEntity:v69];
        continue;
      case 0xBu:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        while (1)
        {
          v232 = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v232 & 0x7F) << v169;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v12 = v170++ >= 9;
          if (v12)
          {
            v175 = 0;
            goto LABEL_391;
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

LABEL_391:
        [a1 setTimeSinceAppUsedForEntityInSec:v175];
        continue;
      case 0xCu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v232 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v232 & 0x7F) << v42;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_315;
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

LABEL_315:
        [a1 setAppUsageCountForEntityFromSiri2Min:v48];
        continue;
      case 0xDu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          v232 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v232 & 0x7F) << v56;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_323;
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

LABEL_323:
        [a1 setAppUsageCountForEntityFromSiri10Min:v62];
        continue;
      case 0xEu:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        while (1)
        {
          v232 = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v232 & 0x7F) << v148;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v154 = 0;
            goto LABEL_379;
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

LABEL_379:
        [a1 setAppUsageCountForEntityFromSiri1Hr:v154];
        continue;
      case 0xFu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          v232 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v232 & 0x7F) << v35;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_311;
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

LABEL_311:
        [a1 setAppUsageCountForEntityFromSiri6Hrs:v41];
        continue;
      case 0x10u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          v232 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v232 & 0x7F) << v91;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_343;
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

LABEL_343:
        [a1 setAppUsageCountForEntityFromSiri1Day:v97];
        continue;
      case 0x11u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v232 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v232 & 0x7F) << v28;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_307;
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

LABEL_307:
        [a1 setAppUsageCountForEntityFromSiri7Days:v34];
        continue;
      case 0x12u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        while (1)
        {
          v232 = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v232 & 0x7F) << v120;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            v126 = 0;
            goto LABEL_363;
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

LABEL_363:
        [a1 setAppUsageCountForEntityFromSiri14Days:v126];
        continue;
      case 0x13u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        while (1)
        {
          v232 = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v232 & 0x7F) << v162;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            v168 = 0;
            goto LABEL_387;
          }
        }

        if ([a2 hasError])
        {
          v168 = 0;
        }

        else
        {
          v168 = v164;
        }

LABEL_387:
        [a1 setAppUsageCountForEntityFromSiri28Days:v168];
        continue;
      case 0x14u:
        v197 = 0;
        v198 = 0;
        v199 = 0;
        while (1)
        {
          v232 = 0;
          v200 = [a2 position] + 1;
          if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
          {
            v202 = [a2 data];
            [v202 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v199 |= (v232 & 0x7F) << v197;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v197 += 7;
          v12 = v198++ >= 9;
          if (v12)
          {
            v203 = 0;
            goto LABEL_407;
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

LABEL_407:
        [a1 setAppUsageCountForEntityFromSiriInf:v203];
        continue;
      case 0x15u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        while (1)
        {
          v232 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v232 & 0x7F) << v127;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v133 = 0;
            goto LABEL_367;
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

LABEL_367:
        [a1 setRecencyOrderOfAppUsageForEntityFromSiri:v133];
        continue;
      case 0x16u:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        while (1)
        {
          v232 = 0;
          v144 = [a2 position] + 1;
          if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
          {
            v146 = [a2 data];
            [v146 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v143 |= (v232 & 0x7F) << v141;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v12 = v142++ >= 9;
          if (v12)
          {
            v147 = 0;
            goto LABEL_375;
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

LABEL_375:
        [a1 setTimeSinceAppUsedForEntityFromSiriInSec:v147];
        continue;
      case 0x17u:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        while (1)
        {
          v232 = 0;
          v193 = [a2 position] + 1;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
          {
            v195 = [a2 data];
            [v195 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v192 |= (v232 & 0x7F) << v190;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v12 = v191++ >= 9;
          if (v12)
          {
            v196 = 0;
            goto LABEL_403;
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

LABEL_403:
        [a1 setTaskAbandonCountForEntityInUsingApp2Min:v196];
        continue;
      case 0x18u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        while (1)
        {
          v232 = 0;
          v207 = [a2 position] + 1;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
          {
            v209 = [a2 data];
            [v209 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v206 |= (v232 & 0x7F) << v204;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v12 = v205++ >= 9;
          if (v12)
          {
            v210 = 0;
            goto LABEL_411;
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

LABEL_411:
        [a1 setTaskAbandonCountForEntityInUsingApp10Min:v210];
        continue;
      case 0x19u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          v232 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v232 & 0x7F) << v77;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_335;
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

LABEL_335:
        [a1 setTaskAbandonCountForEntityInUsingApp1Hr:v83];
        continue;
      case 0x1Au:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v232 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v232 & 0x7F) << v70;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_331;
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

LABEL_331:
        [a1 setTaskAbandonCountForEntityInUsingApp6Hrs:v76];
        continue;
      case 0x1Bu:
        v225 = 0;
        v226 = 0;
        v227 = 0;
        while (1)
        {
          v232 = 0;
          v228 = [a2 position] + 1;
          if (v228 >= [a2 position] && (v229 = objc_msgSend(a2, "position") + 1, v229 <= objc_msgSend(a2, "length")))
          {
            v230 = [a2 data];
            [v230 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v227 |= (v232 & 0x7F) << v225;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v225 += 7;
          v12 = v226++ >= 9;
          if (v12)
          {
            v231 = 0;
            goto LABEL_423;
          }
        }

        if ([a2 hasError])
        {
          v231 = 0;
        }

        else
        {
          v231 = v227;
        }

LABEL_423:
        [a1 setTaskAbandonCountForEntityInUsingApp1Day:v231];
        continue;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v232 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v232 & 0x7F) << v21;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_303;
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

LABEL_303:
        [a1 setTaskAbandonCountForEntityInUsingApp7Days:v27];
        continue;
      case 0x1Du:
        v211 = 0;
        v212 = 0;
        v213 = 0;
        while (1)
        {
          v232 = 0;
          v214 = [a2 position] + 1;
          if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
          {
            v216 = [a2 data];
            [v216 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v213 |= (v232 & 0x7F) << v211;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          v12 = v212++ >= 9;
          if (v12)
          {
            v217 = 0;
            goto LABEL_415;
          }
        }

        if ([a2 hasError])
        {
          v217 = 0;
        }

        else
        {
          v217 = v213;
        }

LABEL_415:
        [a1 setTaskAbandonCountForEntityInUsingApp14Days:v217];
        continue;
      case 0x1Eu:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        while (1)
        {
          v232 = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v232 & 0x7F) << v218;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v12 = v219++ >= 9;
          if (v12)
          {
            v224 = 0;
            goto LABEL_419;
          }
        }

        if ([a2 hasError])
        {
          v224 = 0;
        }

        else
        {
          v224 = v220;
        }

LABEL_419:
        [a1 setTaskAbandonCountForEntityInUsingApp28Days:v224];
        continue;
      case 0x1Fu:
        v183 = 0;
        v184 = 0;
        v185 = 0;
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
      v232 = 0;
      v186 = [a2 position] + 1;
      if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
      {
        v188 = [a2 data];
        [v188 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v185 |= (v232 & 0x7F) << v183;
      if ((v232 & 0x80) == 0)
      {
        break;
      }

      v183 += 7;
      v12 = v184++ >= 9;
      if (v12)
      {
        v189 = 0;
        goto LABEL_399;
      }
    }

    if ([a2 hasError])
    {
      v189 = 0;
    }

    else
    {
      v189 = v185;
    }

LABEL_399:
    [a1 setTaskAbandonCountForEntityInUsingAppInf:v189];
LABEL_424:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignalsReadFrom(void *a1, void *a2)
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
      v232 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v232 & 0x7F) << v6;
      if ((v232 & 0x80) == 0)
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
          v232 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v232 & 0x7F) << v14;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_355:
            [a1 setAppUsageCount2Min:v20];
            goto LABEL_424;
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

        goto LABEL_355;
      case 2u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          v232 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v232 & 0x7F) << v112;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v118 = 0;
            goto LABEL_359;
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

LABEL_359:
        [a1 setAppUsageCount10Min:v118];
        continue;
      case 3u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          v232 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v232 & 0x7F) << v84;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v90 = 0;
            goto LABEL_339;
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

LABEL_339:
        [a1 setAppUsageCount1Hr:v90];
        continue;
      case 4u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          v232 = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v232 & 0x7F) << v98;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_347;
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

LABEL_347:
        [a1 setAppUsageCount6Hrs:v104];
        continue;
      case 5u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v232 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v232 & 0x7F) << v49;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_319;
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

LABEL_319:
        [a1 setAppUsageCount1Day:v55];
        continue;
      case 6u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        while (1)
        {
          v232 = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v232 & 0x7F) << v134;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            v140 = 0;
            goto LABEL_371;
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

LABEL_371:
        [a1 setAppUsageCount7Days:v140];
        continue;
      case 7u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        while (1)
        {
          v232 = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v232 & 0x7F) << v155;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            v161 = 0;
            goto LABEL_383;
          }
        }

        if ([a2 hasError])
        {
          v161 = 0;
        }

        else
        {
          v161 = v157;
        }

LABEL_383:
        [a1 setAppUsageCount14Days:v161];
        continue;
      case 8u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          v232 = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v232 & 0x7F) << v105;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_351;
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

LABEL_351:
        [a1 setAppUsageCount28Days:v111];
        continue;
      case 9u:
        v176 = 0;
        v177 = 0;
        v178 = 0;
        while (1)
        {
          v232 = 0;
          v179 = [a2 position] + 1;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
          {
            v181 = [a2 data];
            [v181 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v178 |= (v232 & 0x7F) << v176;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v176 += 7;
          v12 = v177++ >= 9;
          if (v12)
          {
            v182 = 0;
            goto LABEL_395;
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

LABEL_395:
        [a1 setAppUsageCountInf:v182];
        continue;
      case 0xAu:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v232 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v232 & 0x7F) << v63;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_327;
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

LABEL_327:
        [a1 setRecencyOrderOfAppUsed:v69];
        continue;
      case 0xBu:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        while (1)
        {
          v232 = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v232 & 0x7F) << v169;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v12 = v170++ >= 9;
          if (v12)
          {
            v175 = 0;
            goto LABEL_391;
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

LABEL_391:
        [a1 setTimeSinceAppUsedInSec:v175];
        continue;
      case 0xCu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v232 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v232 & 0x7F) << v42;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_315;
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

LABEL_315:
        [a1 setAppUsageCountFromSiri2Min:v48];
        continue;
      case 0xDu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          v232 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v232 & 0x7F) << v56;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_323;
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

LABEL_323:
        [a1 setAppUsageCountFromSiri10Min:v62];
        continue;
      case 0xEu:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        while (1)
        {
          v232 = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v232 & 0x7F) << v148;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v154 = 0;
            goto LABEL_379;
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

LABEL_379:
        [a1 setAppUsageCountFromSiri1Hr:v154];
        continue;
      case 0xFu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          v232 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v232 & 0x7F) << v35;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_311;
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

LABEL_311:
        [a1 setAppUsageCountFromSiri6Hrs:v41];
        continue;
      case 0x10u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          v232 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v232 & 0x7F) << v91;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_343;
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

LABEL_343:
        [a1 setAppUsageCountFromSiri1Day:v97];
        continue;
      case 0x11u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v232 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v232 & 0x7F) << v28;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_307;
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

LABEL_307:
        [a1 setAppUsageCountFromSiri7Days:v34];
        continue;
      case 0x12u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        while (1)
        {
          v232 = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v232 & 0x7F) << v120;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            v126 = 0;
            goto LABEL_363;
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

LABEL_363:
        [a1 setAppUsageCountFromSiri14Days:v126];
        continue;
      case 0x13u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        while (1)
        {
          v232 = 0;
          v165 = [a2 position] + 1;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 1, v166 <= objc_msgSend(a2, "length")))
          {
            v167 = [a2 data];
            [v167 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v164 |= (v232 & 0x7F) << v162;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v12 = v163++ >= 9;
          if (v12)
          {
            v168 = 0;
            goto LABEL_387;
          }
        }

        if ([a2 hasError])
        {
          v168 = 0;
        }

        else
        {
          v168 = v164;
        }

LABEL_387:
        [a1 setAppUsageCountFromSiri28Days:v168];
        continue;
      case 0x14u:
        v197 = 0;
        v198 = 0;
        v199 = 0;
        while (1)
        {
          v232 = 0;
          v200 = [a2 position] + 1;
          if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
          {
            v202 = [a2 data];
            [v202 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v199 |= (v232 & 0x7F) << v197;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v197 += 7;
          v12 = v198++ >= 9;
          if (v12)
          {
            v203 = 0;
            goto LABEL_407;
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

LABEL_407:
        [a1 setAppUsageCountFromSiriInf:v203];
        continue;
      case 0x15u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        while (1)
        {
          v232 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v232 & 0x7F) << v127;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v133 = 0;
            goto LABEL_367;
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

LABEL_367:
        [a1 setRecencyOrderOfAppUsageFromSiri:v133];
        continue;
      case 0x16u:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        while (1)
        {
          v232 = 0;
          v144 = [a2 position] + 1;
          if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
          {
            v146 = [a2 data];
            [v146 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v143 |= (v232 & 0x7F) << v141;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v12 = v142++ >= 9;
          if (v12)
          {
            v147 = 0;
            goto LABEL_375;
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

LABEL_375:
        [a1 setTimeSinceAppUsedFromSiriInSec:v147];
        continue;
      case 0x17u:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        while (1)
        {
          v232 = 0;
          v193 = [a2 position] + 1;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
          {
            v195 = [a2 data];
            [v195 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v192 |= (v232 & 0x7F) << v190;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v12 = v191++ >= 9;
          if (v12)
          {
            v196 = 0;
            goto LABEL_403;
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

LABEL_403:
        [a1 setTaskAbandonCountInUsingApp2Min:v196];
        continue;
      case 0x18u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        while (1)
        {
          v232 = 0;
          v207 = [a2 position] + 1;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
          {
            v209 = [a2 data];
            [v209 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v206 |= (v232 & 0x7F) << v204;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v12 = v205++ >= 9;
          if (v12)
          {
            v210 = 0;
            goto LABEL_411;
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

LABEL_411:
        [a1 setTaskAbandonCountInUsingApp10Min:v210];
        continue;
      case 0x19u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          v232 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v232 & 0x7F) << v77;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_335;
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

LABEL_335:
        [a1 setTaskAbandonCountInUsingApp1Hr:v83];
        continue;
      case 0x1Au:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v232 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v232 & 0x7F) << v70;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_331;
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

LABEL_331:
        [a1 setTaskAbandonCountInUsingApp6Hrs:v76];
        continue;
      case 0x1Bu:
        v225 = 0;
        v226 = 0;
        v227 = 0;
        while (1)
        {
          v232 = 0;
          v228 = [a2 position] + 1;
          if (v228 >= [a2 position] && (v229 = objc_msgSend(a2, "position") + 1, v229 <= objc_msgSend(a2, "length")))
          {
            v230 = [a2 data];
            [v230 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v227 |= (v232 & 0x7F) << v225;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v225 += 7;
          v12 = v226++ >= 9;
          if (v12)
          {
            v231 = 0;
            goto LABEL_423;
          }
        }

        if ([a2 hasError])
        {
          v231 = 0;
        }

        else
        {
          v231 = v227;
        }

LABEL_423:
        [a1 setTaskAbandonCountInUsingApp1Day:v231];
        continue;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v232 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v232 & 0x7F) << v21;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_303;
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

LABEL_303:
        [a1 setTaskAbandonCountInUsingApp7Days:v27];
        continue;
      case 0x1Du:
        v211 = 0;
        v212 = 0;
        v213 = 0;
        while (1)
        {
          v232 = 0;
          v214 = [a2 position] + 1;
          if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
          {
            v216 = [a2 data];
            [v216 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v213 |= (v232 & 0x7F) << v211;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          v12 = v212++ >= 9;
          if (v12)
          {
            v217 = 0;
            goto LABEL_415;
          }
        }

        if ([a2 hasError])
        {
          v217 = 0;
        }

        else
        {
          v217 = v213;
        }

LABEL_415:
        [a1 setTaskAbandonCountInUsingApp14Days:v217];
        continue;
      case 0x1Eu:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        while (1)
        {
          v232 = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v232 & 0x7F) << v218;
          if ((v232 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v12 = v219++ >= 9;
          if (v12)
          {
            v224 = 0;
            goto LABEL_419;
          }
        }

        if ([a2 hasError])
        {
          v224 = 0;
        }

        else
        {
          v224 = v220;
        }

LABEL_419:
        [a1 setTaskAbandonCountInUsingApp28Days:v224];
        continue;
      case 0x1Fu:
        v183 = 0;
        v184 = 0;
        v185 = 0;
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
      v232 = 0;
      v186 = [a2 position] + 1;
      if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 1, v187 <= objc_msgSend(a2, "length")))
      {
        v188 = [a2 data];
        [v188 getBytes:&v232 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v185 |= (v232 & 0x7F) << v183;
      if ((v232 & 0x80) == 0)
      {
        break;
      }

      v183 += 7;
      v12 = v184++ >= 9;
      if (v12)
      {
        v189 = 0;
        goto LABEL_399;
      }
    }

    if ([a2 hasError])
    {
      v189 = 0;
    }

    else
    {
      v189 = v185;
    }

LABEL_399:
    [a1 setTaskAbandonCountInUsingAppInf:v189];
LABEL_424:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCECommonAppDependentSignalsReadFrom(void *a1, void *a2)
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

        v7 |= (LOBYTE(v66) & 0x7F) << v5;
        if ((LOBYTE(v66) & 0x80) == 0)
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
            v38 = PBReaderReadString();
            [a1 setAppBundleId:v38];
LABEL_98:

            goto LABEL_123;
          }

          if (v13 == 2)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (LOBYTE(v66) & 0x7F) << v31;
              if ((LOBYTE(v66) & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v37 = 0;
                goto LABEL_102;
              }
            }

            v37 = (v33 != 0) & ~[a2 hasError];
LABEL_102:
            [a1 setIsFirstPartyBundle:v37];
            goto LABEL_123;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v53 = 0;
              v54 = 0;
              v55 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v56 = [a2 position] + 1;
                if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
                {
                  v58 = [a2 data];
                  [v58 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v55 |= (LOBYTE(v66) & 0x7F) << v53;
                if ((LOBYTE(v66) & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v11 = v54++ >= 9;
                if (v11)
                {
                  v59 = 0;
                  goto LABEL_110;
                }
              }

              v59 = (v55 != 0) & ~[a2 hasError];
LABEL_110:
              [a1 setIsForegroundApp:v59];
              goto LABEL_123;
            case 4:
              v39 = 0;
              v40 = 0;
              v41 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (LOBYTE(v66) & 0x7F) << v39;
                if ((LOBYTE(v66) & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v11 = v40++ >= 9;
                if (v11)
                {
                  v45 = 0;
                  goto LABEL_104;
                }
              }

              v45 = (v41 != 0) & ~[a2 hasError];
LABEL_104:
              [a1 setIsResolvedApp:v45];
              goto LABEL_123;
            case 5:
              LODWORD(v66) = 0;
              v21 = [a2 position] + 4;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v66 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              LODWORD(v23) = LODWORD(v66);
              [a1 setAppScoreFromModel:v23];
              goto LABEL_123;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 0xB:
            v38 = objc_alloc_init(INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals);
            v66 = 0.0;
            v67 = 0;
            if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignalsReadFrom(v38, a2))
            {
LABEL_126:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setAppDependentEntityFrequencyAndRecencySignals:v38];
            goto LABEL_98;
          case 0xA:
            v38 = objc_alloc_init(INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals);
            v66 = 0.0;
            v67 = 0;
            if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignalsReadFrom(v38, a2))
            {
              goto LABEL_126;
            }

            PBReaderRecallMark();
            [a1 setAppDependentFrequencyAndRecencySignals:v38];
            goto LABEL_98;
          case 9:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (LOBYTE(v66) & 0x7F) << v24;
              if ((LOBYTE(v66) & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_118;
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

LABEL_118:
            [a1 setTimeSinceAppLastLaunchedInSec:v30];
            goto LABEL_123;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v66 = 0.0;
            v60 = [a2 position] + 8;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 8, v61 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v66 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setCompoundActiveBundleScore:v66];
            goto LABEL_123;
          case 7:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (LOBYTE(v66) & 0x7F) << v46;
              if ((LOBYTE(v66) & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                v52 = 0;
                goto LABEL_108;
              }
            }

            if ([a2 hasError])
            {
              v52 = 0;
            }

            else
            {
              v52 = v48;
            }

LABEL_108:
            [a1 setTotalTimeSpentByUserInAppPerDay:v52];
            goto LABEL_123;
          case 8:
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

              v16 |= (LOBYTE(v66) & 0x7F) << v14;
              if ((LOBYTE(v66) & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_114;
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

LABEL_114:
            [a1 setTimeSpentByUserInAppToday:v20];
            goto LABEL_123;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_123:
      v64 = [a2 position];
    }

    while (v64 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCECommonAppIndependentSignalsReadFrom(void *a1, void *a2)
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
      v100 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v100 & 0x7F) << v6;
      if ((v100 & 0x80) == 0)
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
    if ((v13 >> 3) > 6)
    {
      if (v14 > 9)
      {
        switch(v14)
        {
          case 0xA:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              v107 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v107 & 0x7F) << v64;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v12 = v65++ >= 9;
              if (v12)
              {
                v70 = 0;
                goto LABEL_174;
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

LABEL_174:
            [a1 setSirikitResponseCode:v70];
            continue;
          case 0xB:
            v92 = 0;
            v93 = 0;
            v94 = 0;
            while (1)
            {
              v106 = 0;
              v95 = [a2 position] + 1;
              if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
              {
                v97 = [a2 data];
                [v97 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v94 |= (v106 & 0x7F) << v92;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v92 += 7;
              v12 = v93++ >= 9;
              if (v12)
              {
                v98 = 0;
                goto LABEL_188;
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

LABEL_188:
            [a1 setAppSelectionUses:v98];
            continue;
          case 0xC:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              v112 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v112 & 0x7F) << v36;
              if ((v112 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v12 = v37++ >= 9;
              if (v12)
              {
                v42 = 0;
                goto LABEL_158;
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

LABEL_158:
            [a1 setModelVersion:v42];
            continue;
        }
      }

      else
      {
        switch(v14)
        {
          case 7:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              v109 = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v109 & 0x7F) << v50;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v12 = v51++ >= 9;
              if (v12)
              {
                v56 = 0;
                goto LABEL_166;
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

LABEL_166:
            [a1 setRawClientHourOfDay:v56];
            continue;
          case 8:
            v78 = 0;
            v79 = 0;
            v80 = 0;
            while (1)
            {
              v111 = 0;
              v81 = [a2 position] + 1;
              if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
              {
                v83 = [a2 data];
                [v83 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v80 |= (v111 & 0x7F) << v78;
              if ((v111 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              v12 = v79++ >= 9;
              if (v12)
              {
                v84 = 0;
                goto LABEL_180;
              }
            }

            v84 = (v80 != 0) & ~[a2 hasError];
LABEL_180:
            [a1 setIsClientDaylight:v84];
            continue;
          case 9:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v108 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v108 & 0x7F) << v22;
              if ((v108 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v12 = v23++ >= 9;
              if (v12)
              {
                v28 = 0;
                goto LABEL_150;
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

LABEL_150:
            [a1 setAppResolutionType:v28];
            continue;
        }
      }
    }

    else if (v14 > 3)
    {
      switch(v14)
      {
        case 4:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            v102 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v102 & 0x7F) << v57;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v12 = v58++ >= 9;
            if (v12)
            {
              v63 = 0;
              goto LABEL_170;
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

LABEL_170:
          [a1 setRawCountry:v63];
          continue;
        case 5:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          while (1)
          {
            v101 = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              v90 = [a2 data];
              [v90 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v101 & 0x7F) << v85;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v12 = v86++ >= 9;
            if (v12)
            {
              v91 = 0;
              goto LABEL_184;
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

LABEL_184:
          [a1 setRawRequestDeviceCategory:v91];
          continue;
        case 6:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v110 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v110 & 0x7F) << v29;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_154;
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

LABEL_154:
          [a1 setClientDayOfWeek:v35];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            v105 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v105 & 0x7F) << v43;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v12 = v44++ >= 9;
            if (v12)
            {
              v49 = 0;
              goto LABEL_162;
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

LABEL_162:
          [a1 setRawLanguage:v49];
          continue;
        case 2:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          while (1)
          {
            v104 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v104 & 0x7F) << v71;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v12 = v72++ >= 9;
            if (v12)
            {
              v77 = 0;
              goto LABEL_178;
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

LABEL_178:
          [a1 setRawLocale:v77];
          continue;
        case 3:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v103 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v103 & 0x7F) << v15;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_146;
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

LABEL_146:
          [a1 setRawStateOrProvince:v21];
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

uint64_t INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGeneratedReadFrom(void *a1, void *a2)
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
LABEL_35:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setCrrCommsAppSelectionJointId:v14];
        goto LABEL_30;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignalsReadFrom(v14, a2))
        {
          goto LABEL_35;
        }

        PBReaderRecallMark();
        [a1 setInferenceCommsAppSelectionTrainingAppIndependentSignals:v14];
LABEL_30:

        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignalsReadFrom(v14, a2))
    {
      goto LABEL_35;
    }

    PBReaderRecallMark();
    if (v14)
    {
      [a1 addInferenceCommsAppSelectionTrainingAppDependentSignals:v14];
    }

    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

uint64_t INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignalsReadFrom(void *a1, void *a2)
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

      v8 |= (v49 & 0x7F) << v6;
      if ((v49 & 0x80) == 0)
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
        case 4:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v49) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v49 & 0x7F) << v28;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v12 = v29++ >= 9;
            if (v12)
            {
              v34 = 0;
              goto LABEL_66;
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

LABEL_66:
          [a1 setAppFreqForMessages:v34];
          continue;
        case 5:
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
            v12 = v40++ >= 9;
            if (v12)
            {
              v45 = 0;
              goto LABEL_74;
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

LABEL_74:
          [a1 setAppFreqForMessagesUsingSiri:v45];
          continue;
        case 6:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v49) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v49 & 0x7F) << v18;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v12 = v19++ >= 9;
            if (v12)
            {
              v24 = 0;
              goto LABEL_70;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_70:
          [a1 setAppFreqForMessagesForCountryCode:v24];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v49 = 0;
          v25 = [a2 position] + 4;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v49 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v27) = v49;
          [a1 setAppAffinityScoreForMessages:v27];
          continue;
        case 2:
          v49 = 0;
          v36 = [a2 position] + 4;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 4, v37 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v49 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v38) = v49;
          [a1 setAppAffinityScoreForMessagesUsingSiri:v38];
          continue;
        case 3:
          v49 = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v49 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v17) = v49;
          [a1 setAppAffinityScoreForMessagesReceived:v17];
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

uint64_t INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignalsReadFrom(void *a1, void *a2)
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

      v8 |= (v49 & 0x7F) << v6;
      if ((v49 & 0x80) == 0)
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
        case 4:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v49) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v49 & 0x7F) << v28;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v12 = v29++ >= 9;
            if (v12)
            {
              v34 = 0;
              goto LABEL_66;
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

LABEL_66:
          [a1 setAppFreqForPhoneCall:v34];
          continue;
        case 5:
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
            v12 = v40++ >= 9;
            if (v12)
            {
              v45 = 0;
              goto LABEL_74;
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

LABEL_74:
          [a1 setAppFreqForPhoneCallUsingSiri:v45];
          continue;
        case 6:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v49) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v49 & 0x7F) << v18;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v12 = v19++ >= 9;
            if (v12)
            {
              v24 = 0;
              goto LABEL_70;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_70:
          [a1 setAppFreqForPhoneCallForCountryCode:v24];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v49 = 0;
          v25 = [a2 position] + 4;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v49 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v27) = v49;
          [a1 setAppAffinityScoreForPhoneCall:v27];
          continue;
        case 2:
          v49 = 0;
          v36 = [a2 position] + 4;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 4, v37 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v49 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v38) = v49;
          [a1 setAppAffinityScoreForPhoneCallUsingSiri:v38];
          continue;
        case 3:
          v49 = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v49 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v17) = v49;
          [a1 setAppAffinityScoreForPhoneCallReceived:v17];
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

uint64_t INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignalsReadFrom(void *a1, void *a2)
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
      LOBYTE(v90) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v90 & 0x7F) << v5;
      if ((v90 & 0x80) == 0)
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
          LOBYTE(v90) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v90 & 0x7F) << v13;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_138:
            [a1 setIsResolvedApp:v19];
            goto LABEL_151;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
        goto LABEL_138;
      case 2u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v90 & 0x7F) << v59;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v11 = v60++ >= 9;
          if (v11)
          {
            v65 = 0;
            goto LABEL_140;
          }
        }

        v65 = (v61 != 0) & ~[a2 hasError];
LABEL_140:
        [a1 setIsResolvedContactInApp:v65];
        goto LABEL_151;
      case 3u:
        LODWORD(v90) = 0;
        v48 = [a2 position] + 4;
        if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 4, v49 <= objc_msgSend(a2, "length")))
        {
          v87 = [a2 data];
          [v87 getBytes:&v90 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v50) = v90;
        [a1 setAppTimeSpentAffinityScore:v50];
        goto LABEL_151;
      case 4u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v90 & 0x7F) << v51;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v57 = 0;
            goto LABEL_136;
          }
        }

        v57 = (v53 != 0) & ~[a2 hasError];
LABEL_136:
        [a1 setIsForegroundApp:v57];
        goto LABEL_151;
      case 5u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v90 & 0x7F) << v27;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_128;
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

LABEL_128:
        [a1 setTimeSinceAppLastLaunchedInSec:v33];
        goto LABEL_151;
      case 6u:
        v58 = objc_alloc_init(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignalsReadFrom(v58, a2))
        {
          goto LABEL_154;
        }

        PBReaderRecallMark();
        [a1 setMessageSignals:v58];
        goto LABEL_102;
      case 7u:
        v58 = objc_alloc_init(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignalsReadFrom(v58, a2))
        {
          goto LABEL_154;
        }

        PBReaderRecallMark();
        [a1 setPhoneCallSignals:v58];
        goto LABEL_102;
      case 8u:
        v58 = objc_alloc_init(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals);
        v90 = 0;
        v91 = 0;
        if (PBReaderPlaceMark() && INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignalsReadFrom(v58, a2))
        {
          PBReaderRecallMark();
          [a1 setContactDependentSignals:v58];
LABEL_102:

LABEL_151:
          v88 = [a2 position];
          if (v88 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_154:

        return 0;
      case 9u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v90 & 0x7F) << v80;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v86 = 0;
            goto LABEL_148;
          }
        }

        v86 = (v82 != 0) & ~[a2 hasError];
LABEL_148:
        [a1 setIsFirstPartyApp:v86];
        goto LABEL_151;
      case 0xAu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v90 & 0x7F) << v41;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v47 = 0;
            goto LABEL_134;
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

LABEL_134:
        [a1 setAppTimeSpentInSec:v47];
        goto LABEL_151;
      case 0xBu:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v90 & 0x7F) << v73;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v11 = v74++ >= 9;
          if (v11)
          {
            v79 = 0;
            goto LABEL_146;
          }
        }

        if ([a2 hasError])
        {
          v79 = 0;
        }

        else
        {
          v79 = v75;
        }

LABEL_146:
        [a1 setTimeSinceAppContactLastLaunchedInSec:v79];
        goto LABEL_151;
      case 0xCu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v90 & 0x7F) << v20;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_124;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_124:
        [a1 setIsDefaultApp:v26];
        goto LABEL_151;
      case 0xDu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v90 & 0x7F) << v34;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v40 = 0;
            goto LABEL_130;
          }
        }

        v40 = (v36 != 0) & ~[a2 hasError];
LABEL_130:
        [a1 setIsRequestByLabel:v40];
        goto LABEL_151;
      case 0xEu:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        while (1)
        {
          LOBYTE(v90) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v90 & 0x7F) << v66;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v11 = v67++ >= 9;
          if (v11)
          {
            v72 = 0;
            goto LABEL_142;
          }
        }

        v72 = (v68 != 0) & ~[a2 hasError];
LABEL_142:
        [a1 setIsRequestByHandleType:v72];
        goto LABEL_151;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_151;
    }
  }
}

uint64_t INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignalsReadFrom(void *a1, void *a2)
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
      v51 = 0;
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

      v8 |= (v51 & 0x7F) << v6;
      if ((v51 & 0x80) == 0)
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
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          v54 = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v54 & 0x7F) << v43;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_82;
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

LABEL_82:
        [a1 setRequestOriginLocale:v49];
        continue;
      }

      if (v14 == 2)
      {
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
            goto LABEL_90;
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

LABEL_90:
        [a1 setRequestOriginLanguage:v28];
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
              goto LABEL_74;
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

LABEL_74:
          [a1 setCommunicationType:v35];
          continue;
        case 4:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v56 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v56 & 0x7F) << v36;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_78;
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

LABEL_78:
          [a1 setAppResolutionType:v42];
          continue;
        case 5:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v55 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v55 & 0x7F) << v15;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
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
            v21 = v17;
          }

LABEL_86:
          [a1 setUserPersona:v21];
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