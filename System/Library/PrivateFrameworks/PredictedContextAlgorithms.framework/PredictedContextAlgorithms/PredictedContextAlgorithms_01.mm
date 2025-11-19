uint64_t PCPClusterEmbeddingReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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
          v14 = objc_alloc_init(PCPClusterEmbeddingLocation);
          objc_storeStrong((a1 + 24), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !PCPClusterEmbeddingLocationReadFrom(v14, a2))
          {
LABEL_37:

            return 0;
          }

LABEL_33:
          PBReaderRecallMark();
LABEL_34:

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(PCPClusterEmbeddingTime);
          objc_storeStrong((a1 + 32), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !PCPClusterEmbeddingTimeReadFrom(v14, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v14 = *(a1 + 16);
          *(a1 + 16) = v15;
          goto LABEL_34;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(PCPClusterEmbeddingActivity);
          objc_storeStrong((a1 + 8), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !PCPClusterEmbeddingActivityReadFrom(v14, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPClusterEmbeddingActivityReadFrom(uint64_t a1, void *a2)
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
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v16 = PBReaderReadString();
        v17 = 16;
LABEL_30:
        v19 = *(a1 + v17);
        *(a1 + v17) = v16;

        goto LABEL_33;
      }

      if (v13 != 2)
      {
        goto LABEL_26;
      }

      *(a1 + 40) |= 1u;
      v22 = 0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v22;
LABEL_33:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v16 = PBReaderReadData();
      v17 = 24;
    }

    else
    {
      if (v13 != 4)
      {
LABEL_26:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_33;
      }

      v16 = PBReaderReadString();
      v17 = 32;
    }

    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPClusterEmbeddingTimeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v47) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

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
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          *(a1 + 56) |= 1u;
          v47 = 0;
          v28 = [a2 position] + 8;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v47;
          v41 = 8;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_44;
          }

          *(a1 + 56) |= 2u;
          v47 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v47;
          v41 = 16;
        }

LABEL_77:
        *(a1 + v41) = v40;
        goto LABEL_78;
      }

      if (v13 == 6)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 56) |= 0x40u;
        while (1)
        {
          LOBYTE(v47) = 0;
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
          v11 = v31++ >= 9;
          if (v11)
          {
            LOBYTE(v36) = 0;
            goto LABEL_62;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_62:
        *(a1 + 52) = v36;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_44:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_78;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 56) |= 0x20u;
        while (1)
        {
          LOBYTE(v47) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v47 & 0x7F) << v18;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_66;
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

LABEL_66:
        *(a1 + 48) = v24;
      }

LABEL_78:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        *(a1 + 56) |= 4u;
        v47 = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v40 = v47;
        v41 = 24;
        break;
      case 2:
        *(a1 + 56) |= 8u;
        v47 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v45 = [a2 data];
          [v45 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v40 = v47;
        v41 = 32;
        break;
      case 3:
        *(a1 + 56) |= 0x10u;
        v47 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v44 = [a2 data];
          [v44 getBytes:&v47 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v40 = v47;
        v41 = 40;
        break;
      default:
        goto LABEL_44;
    }

    goto LABEL_77;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPClusterEmbeddingLocationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(PCPLocation);
    objc_storeStrong((a1 + 8), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextWorkoutReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
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
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v33[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v33[0] & 0x7F) << v14;
            if ((v33[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_49;
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

LABEL_49:
          *(a1 + 8) = v20;
          goto LABEL_54;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_54;
      }

      v28 = objc_alloc_init(PCPPredictedContext);
      objc_storeStrong((a1 + 16), v28);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !PCPPredictedContextReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_54:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = PBReaderReadString();
      v30 = *(a1 + 24);
      *(a1 + 24) = v29;

      goto LABEL_54;
    }

    if (v13 == 4)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v33[0] & 0x7F) << v21;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_53;
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

LABEL_53:
      *(a1 + 32) = v27;
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPHomeKitHomeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
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
        v23 = objc_alloc_init(PCPLocation);
        objc_storeStrong((a1 + 16), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextTransitionReadFrom(id *a1, void *a2)
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
        v13 = objc_alloc_init(PCPPredictedContext);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PCPPredictedContextReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PCPPredictedContextTransport);
    [a1 addPredictedContextTransport:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PCPPredictedContextTransportReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPWorkoutReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v49[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49[0] & 0x7F) << v5;
        if ((v49[0] & 0x80) == 0)
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
        break;
      }

      if (v13 > 6)
      {
        if (v13 == 7)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            LOBYTE(v49[0]) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v49[0] & 0x7F) << v36;
            if ((v49[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_76;
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

LABEL_76:
          v42 = 40;
          goto LABEL_81;
        }

        if (v13 == 8)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 72) |= 0x10u;
          while (1)
          {
            LOBYTE(v49[0]) = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v49[0] & 0x7F) << v19;
            if ((v49[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v11 = v20++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_80;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_80:
          v42 = 56;
LABEL_81:
          *(a1 + v42) = v25;
          goto LABEL_87;
        }

LABEL_67:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_87;
      }

      if (v13 == 5)
      {
        v17 = PBReaderReadString();
        v18 = 48;
        goto LABEL_54;
      }

      if (v13 != 6)
      {
        goto LABEL_67;
      }

      v16 = objc_alloc_init(PCPLocation);
      objc_storeStrong((a1 + 64), v16);
      v49[0] = 0;
      v49[1] = 0;
      if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_87:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        *(a1 + 72) |= 1u;
        v49[0] = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v43 = [a2 data];
          [v43 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v44 = v49[0];
        v45 = 8;
        goto LABEL_86;
      }

      if (v13 == 4)
      {
        v17 = PBReaderReadData();
        v18 = 32;
LABEL_54:
        v33 = *(a1 + v18);
        *(a1 + v18) = v17;

        goto LABEL_87;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 72) |= 4u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v49[0] & 0x7F) << v26;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v32 = 0;
            goto LABEL_72;
          }
        }

        if ([a2 hasError])
        {
          v32 = 0;
        }

        else
        {
          v32 = v28;
        }

LABEL_72:
        *(a1 + 24) = v32;
        goto LABEL_87;
      }

      if (v13 == 2)
      {
        *(a1 + 72) |= 2u;
        v49[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v46 = [a2 data];
          [v46 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v44 = v49[0];
        v45 = 16;
LABEL_86:
        *(a1 + v45) = v44;
        goto LABEL_87;
      }
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPVisitReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = 24;
        goto LABEL_34;
      }

      if (v13 != 2)
      {
        goto LABEL_35;
      }

      v16 = objc_alloc_init(PCPLocation);
      objc_storeStrong((a1 + 32), v16);
      v28[0] = 0;
      v28[1] = 0;
      if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_42:
      v26 = [a2 position];
      if (v26 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        *(a1 + 48) |= 1u;
        v28[0] = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v23 = v28[0];
        v24 = 8;
        goto LABEL_41;
      case 4:
        *(a1 + 48) |= 2u;
        v28[0] = 0;
        v19 = [a2 position] + 8;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v23 = v28[0];
        v24 = 16;
LABEL_41:
        *(a1 + v24) = v23;
        goto LABEL_42;
      case 5:
        v14 = PBReaderReadData();
        v15 = 40;
LABEL_34:
        v21 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_42;
    }

LABEL_35:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_42;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPLocationHistoryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PCPLocation);
        objc_storeStrong((a1 + 16), v13);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCAdler32(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *a1++;
    v3 = (v3 + v4) % 0xFFF1;
    v2 = (v3 + v2) % 0xFFF1;
    --a2;
  }

  while (a2);
  return v3 | (v2 << 16);
}

id PCEncodeVarint(unsigned int a1)
{
  v2 = [MEMORY[0x1E695DF88] data];
  do
  {
    v5 = a1 & 0x7F | ((a1 > 0x7F) << 7);
    [v2 appendBytes:&v5 length:1];
    v3 = a1 > 0x7F;
    a1 >>= 7;
  }

  while (v3);

  return v2;
}

id PCEncodeLittleEndianUInt32(int a1)
{
  v3 = a1;
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:&v3 length:4];

  return v1;
}

uint64_t PCDecodeVarintFromData(void *a1, _DWORD *a2, void *a3)
{
  v5 = a1;
  v6 = [v5 bytes];
  v7 = [v5 length];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (v7 == v8)
    {
LABEL_5:
      v13 = 0;
      goto LABEL_11;
    }

    v11 = v8 + 1;
    v12 = *(v6 + v8);
    v10 |= (v12 & 0x7F) << v9;
    if ((v12 & 0x80) == 0)
    {
      break;
    }

    v9 += 7;
    v8 = v11;
    if (v11 == 10)
    {
      goto LABEL_5;
    }
  }

  if (a2)
  {
    *a2 = v10;
  }

  if (a3)
  {
    *a3 = v11;
  }

  v13 = 1;
LABEL_11:

  return v13;
}

uint64_t PCDecodeLittleEndianUInt32(void *a1)
{
  v1 = a1;
  if ([v1 length] == 4)
  {
    v2 = *[v1 bytes];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PCFindData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 bytes];
  v6 = [v3 bytes];
  v7 = [v4 length];
  v8 = [v3 length];
  if (v8 - 1 >= v7)
  {
LABEL_5:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    v10 = 0;
    v11 = v7 - v8;
    while (memcmp((v5 + v10), v6, v9))
    {
      if (++v10 > v11)
      {
        goto LABEL_5;
      }
    }
  }

  return v10;
}

uint64_t PCPPredictRequestReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(PCPInputSignals);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PCPInputSignalsReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PCPPredictedContextResult);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PCPPredictedContextResultReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextAnalyticsReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(PCPRolledLoiKeyValuePair);
        [a1 addRolledLoiAnalyticsDictionary:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !PCPRolledLoiKeyValuePairReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

uint64_t PCPRolledLoiKeyValuePairReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(PCPRolledLoiAnalytics);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !PCPRolledLoiAnalyticsReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPRolledLoiAnalyticsReadFrom(uint64_t a1, void *a2)
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
        v35 = 0;
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
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 12) |= 2u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            LOBYTE(v21) = 0;
            v22 = &OBJC_IVAR___PCPRolledLoiAnalytics__isWork;
            goto LABEL_53;
          }
        }

        v22 = &OBJC_IVAR___PCPRolledLoiAnalytics__isWork;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 12) |= 4u;
        while (1)
        {
          v38 = 0;
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
          v20 = v15++ > 8;
          if (v20)
          {
            LOBYTE(v21) = 0;
            v22 = &OBJC_IVAR___PCPRolledLoiAnalytics__loiIsMissingFromCurrentVisitHistory;
            goto LABEL_53;
          }
        }

        v22 = &OBJC_IVAR___PCPRolledLoiAnalytics__loiIsMissingFromCurrentVisitHistory;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 12) |= 1u;
    while (1)
    {
      v37 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v37 & 0x7F) << v23;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        LOBYTE(v21) = 0;
        v22 = &OBJC_IVAR___PCPRolledLoiAnalytics__isHome;
        goto LABEL_53;
      }
    }

    v22 = &OBJC_IVAR___PCPRolledLoiAnalytics__isHome;
LABEL_52:
    v21 = (v16 != 0) & ~[a2 hasError];
LABEL_53:
    *(a1 + *v22) = v21;
    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

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
          v16 = objc_alloc_init(PCPPredictedContextDateInterval);
          objc_storeStrong((a1 + 24), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !PCPPredictedContextDateIntervalReadFrom(v16, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(PCPSource);
          [a1 addSources:v16];
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !PCPSourceReadFrom(v16, a2))
          {
            goto LABEL_50;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_45;
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

LABEL_45:
          *(a1 + 16) = v23;
          goto LABEL_48;
        }

        if (v13 == 2)
        {
          *(a1 + 40) |= 1u;
          v27 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v27;
          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPCalendarEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
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
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          *(a1 + 72) |= 2u;
          v35[0] = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v35[0];
          v31 = 16;
          goto LABEL_61;
        }

        if (v13 == 6)
        {
          *(a1 + 72) |= 1u;
          v35[0] = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v35[0];
          v31 = 8;
LABEL_61:
          *(a1 + v31) = v30;
          goto LABEL_62;
        }

LABEL_51:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
      }

      if (v13 == 7)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 72) |= 4u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v35[0] & 0x7F) << v22;
          if ((v35[0] & 0x80) == 0)
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
        *(a1 + 56) = v28;
        goto LABEL_62;
      }

      if (v13 != 8)
      {
        goto LABEL_51;
      }

      v18 = objc_alloc_init(PCPLocation);
      objc_storeStrong((a1 + 40), v18);
      v35[0] = 0;
      v35[1] = 0;
      if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v18, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_62:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_41;
      }

      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_41;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_41;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        v15 = 64;
LABEL_41:
        v21 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_62;
      }
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPMapsActiveNavigationReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 48) |= 1u;
          v28[0] = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v28[0];
          v24 = 8;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_35;
        }

        v16 = objc_alloc_init(PCPLocation);
        v17 = 40;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 4)
          {
            *(a1 + 48) |= 2u;
            v28[0] = 0;
            v18 = [a2 position] + 8;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v23 = v28[0];
            v24 = 16;
LABEL_41:
            *(a1 + v24) = v23;
            goto LABEL_42;
          }

          if (v13 == 5)
          {
            v14 = PBReaderReadData();
            v15 = *(a1 + 32);
            *(a1 + 32) = v14;

            goto LABEL_42;
          }

LABEL_35:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_42;
        }

        v16 = objc_alloc_init(PCPLocation);
        v17 = 24;
      }

      objc_storeStrong((a1 + v17), v16);
      v28[0] = 0;
      v28[1] = 0;
      if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_42:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextDateIntervalReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(PCPPredictedContextDate);
        v14 = 8;
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(PCPPredictedContextDate);
        v14 = 16;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !PCPPredictedContextDateReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextLocationReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(PCPPredictedContext);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PCPPredictedContextReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PCPLocationOfInterest);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PCPLocationOfInterestReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPSourceReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(PCPPredictedContextSource);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !PCPPredictedContextSourceReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPLocationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

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

      if (v13 == 3)
      {
        *(a1 + 36) |= 1u;
        v34 = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v29 = v34;
        v30 = 8;
LABEL_52:
        *(a1 + v30) = v29;
        goto LABEL_53;
      }

      if (v13 != 4)
      {
LABEL_34:
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
      *(a1 + 36) |= 8u;
      while (1)
      {
        LOBYTE(v34) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v34 & 0x7F) << v16;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_45;
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

LABEL_45:
      *(a1 + 32) = v22;
LABEL_53:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      *(a1 + 36) |= 2u;
      v34 = 0;
      v24 = [a2 position] + 8;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
      {
        v31 = [a2 data];
        [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v29 = v34;
      v30 = 16;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_34;
      }

      *(a1 + 36) |= 4u;
      v34 = 0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v29 = v34;
      v30 = 24;
    }

    goto LABEL_52;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPAlgorithmStateReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___PCPAlgorithmState__algorithmStateWorkouts;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___PCPAlgorithmState__algorithmState;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPComputeRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 28) |= 2u;
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
            LOBYTE(v28) = 0;
            goto LABEL_48;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_48:
        *(a1 + 24) = v28;
      }

      else if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 28) |= 1u;
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
        *(a1 + 8) = v21;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(PCPInputSignals);
        objc_storeStrong((a1 + 16), v14);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !PCPInputSignalsReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

uint64_t PCPLifecycleEventReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPPredictedContextDateReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        *(a1 + 24) |= 2u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___PCPPredictedContextDate__date;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 1u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___PCPPredictedContextDate__confidenceInterval;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPParkedCarReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v22[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22[0] & 0x7F) << v5;
        if ((v22[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v22[0] = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v22 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v22[0];
      }

      else if (v13 == 2)
      {
        v16 = objc_alloc_init(PCPLocation);
        objc_storeStrong((a1 + 24), v16);
        v22[0] = 0;
        v22[1] = 0;
        if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v16, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
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

uint64_t PCPRetrieveStateReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(PCPAlgorithmState);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !PCPAlgorithmStateReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

uint64_t PCPTransitionReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if (v13 == 3)
      {
        *(a1 + 48) |= 1u;
        v28[0] = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v23 = v28[0];
        v24 = 8;
        goto LABEL_41;
      }

      if (v13 == 4)
      {
        *(a1 + 48) |= 2u;
        v28[0] = 0;
        v19 = [a2 position] + 8;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v23 = v28[0];
        v24 = 16;
LABEL_41:
        *(a1 + v24) = v23;
        goto LABEL_42;
      }

      if (v13 != 5)
      {
        goto LABEL_35;
      }

      v14 = objc_alloc_init(PCPMotionActivity);
      objc_storeStrong((a1 + 24), v14);
      v28[0] = 0;
      v28[1] = 0;
      if (!PBReaderPlaceMark() || !PCPMotionActivityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_42:
      v26 = [a2 position];
      if (v26 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v15 = PBReaderReadData();
      v16 = 40;
      goto LABEL_34;
    }

    if (v13 == 2)
    {
      v15 = PBReaderReadData();
      v16 = 32;
LABEL_34:
      v21 = *(a1 + v16);
      *(a1 + v16) = v15;

      goto LABEL_42;
    }

LABEL_35:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_42;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPInputSignalsReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v21) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

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
        *(a1 + 128) |= 1u;
        v21 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v21 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v21;
        goto LABEL_63;
      case 2u:
        v17 = objc_alloc_init(PCPVisit);
        [a1 addVisit:v17];
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPVisitReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 3u:
        v17 = objc_alloc_init(PCPTransition);
        [a1 addTransitions:v17];
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPTransitionReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 4u:
        v17 = objc_alloc_init(PCPLocationOfInterest);
        [a1 addLocationOfInterests:v17];
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPLocationOfInterestReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 5u:
        v17 = objc_alloc_init(PCPLocationHistory);
        [a1 addLocationHistory:v17];
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPLocationHistoryReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 6u:
        v17 = objc_alloc_init(PCPCalendarEvent);
        [a1 addCalendarEvents:v17];
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPCalendarEventReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 7u:
        v17 = objc_alloc_init(PCPMapsActiveNavigation);
        objc_storeStrong((a1 + 56), v17);
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPMapsActiveNavigationReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 8u:
        v17 = objc_alloc_init(PCPMapsHistoricalNavigation);
        [a1 addMapsHistoricalNavigation:v17];
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPMapsHistoricalNavigationReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 9u:
        v17 = objc_alloc_init(PCPMapsViewedPlace);
        [a1 addMapsViewedPlaces:v17];
        v21 = 0;
        v22 = 0;
        if (PBReaderPlaceMark() && PCPMapsViewedPlaceReadFrom(v17, a2))
        {
          goto LABEL_62;
        }

        goto LABEL_68;
      case 0xAu:
        v17 = objc_alloc_init(PCPParkedCar);
        objc_storeStrong((a1 + 88), v17);
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPParkedCarReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 0xBu:
        v17 = objc_alloc_init(PCPMotionActivity);
        [a1 addMotionActivity:v17];
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPMotionActivityReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 0xCu:
        v17 = objc_alloc_init(PCPHomeKitHome);
        [a1 addHomeKitHomes:v17];
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPHomeKitHomeReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 0xDu:
        v17 = objc_alloc_init(PCPWorkout);
        [a1 addWorkouts:v17];
        v21 = 0;
        v22 = 0;
        if (!PBReaderPlaceMark() || !PCPWorkoutReadFrom(v17, a2))
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      case 0xEu:
        v17 = objc_alloc_init(PCPLocationWithTimestamp);
        [a1 addPropagatedLocations:v17];
        v21 = 0;
        v22 = 0;
        if (PBReaderPlaceMark() && PCPLocationWithTimestampReadFrom(v17, a2))
        {
LABEL_62:
          PBReaderRecallMark();

LABEL_63:
          v18 = [a2 position];
          if (v18 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_68:

        return 0;
      case 0xFu:
        v15 = PBReaderReadString();
        v16 = *(a1 + 24);
        *(a1 + 24) = v15;

        goto LABEL_63;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_63;
    }
  }
}

uint64_t PCPMapsHistoricalNavigationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v21[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v21 range:{objc_msgSend(a2, "position"), 1}];

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
        v16 = objc_alloc_init(PCPLocation);
        v17 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            *(a1 + 32) |= 1u;
            v21[0] = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:v21 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v21[0];
          }

          else if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_32;
        }

        v16 = objc_alloc_init(PCPLocation);
        v17 = 24;
      }

      objc_storeStrong((a1 + v17), v16);
      v21[0] = 0;
      v21[1] = 0;
      if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_32:
      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _plc_log_get_normal_handle(dispatch_once_t *predicate)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___plc_log_get_normal_handle_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = predicate;
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  v2 = predicate[1];

  return v2;
}

uint64_t ___plc_log_get_normal_handle_block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.plcAlgorithm", *(*(a1 + 32) + 32));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8]();
}

id _plc_log_get_replay_handle(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = (a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___plc_log_get_replay_handle_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (v3 != -1)
  {
    dispatch_once(v2, block);
  }

  v4 = *(a1 + 24);

  return v4;
}

uint64_t ___plc_log_get_replay_handle_block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.plcAlgorithmReplay", *(*(a1 + 32) + 32));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PCPPredictedContextSourceReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            [a1 clearOneofValuesForPredictedContextSource];
            *(a1 + 72) |= 1u;
            *(a1 + 56) = 6;
            v14 = objc_alloc_init(PCPParkedCar);
            objc_storeStrong((a1 + 48), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !PCPParkedCarReadFrom(v14, a2))
            {
LABEL_64:

              return 0;
            }

            goto LABEL_57;
          }

          if (v13 == 7)
          {
            [a1 clearOneofValuesForPredictedContextSource];
            *(a1 + 72) |= 1u;
            *(a1 + 56) = 7;
            v14 = objc_alloc_init(PCPLocationWithTimestamp);
            objc_storeStrong((a1 + 64), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !PCPLocationWithTimestampReadFrom(v14, a2))
            {
              goto LABEL_64;
            }

            goto LABEL_57;
          }
        }

        else
        {
          if (v13 == 4)
          {
            [a1 clearOneofValuesForPredictedContextSource];
            *(a1 + 72) |= 1u;
            *(a1 + 56) = 4;
            v14 = objc_alloc_init(PCPHomeKitHome);
            objc_storeStrong((a1 + 24), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !PCPHomeKitHomeReadFrom(v14, a2))
            {
              goto LABEL_64;
            }

            goto LABEL_57;
          }

          if (v13 == 5)
          {
            [a1 clearOneofValuesForPredictedContextSource];
            *(a1 + 72) |= 1u;
            *(a1 + 56) = 5;
            v14 = objc_alloc_init(PCPHealthKitWorkout);
            objc_storeStrong((a1 + 16), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !PCPHealthKitWorkoutReadFrom(v14, a2))
            {
              goto LABEL_64;
            }

            goto LABEL_57;
          }
        }
      }

      else if (v13 > 1)
      {
        if (v13 == 2)
        {
          [a1 clearOneofValuesForPredictedContextSource];
          *(a1 + 72) |= 1u;
          *(a1 + 56) = 2;
          v14 = objc_alloc_init(PCPMapsActiveNavigation);
          objc_storeStrong((a1 + 32), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPMapsActiveNavigationReadFrom(v14, a2))
          {
            goto LABEL_64;
          }

          goto LABEL_57;
        }

        if (v13 == 3)
        {
          [a1 clearOneofValuesForPredictedContextSource];
          *(a1 + 72) |= 1u;
          *(a1 + 56) = 3;
          v14 = objc_alloc_init(PCPCalendarEvent);
          objc_storeStrong((a1 + 8), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPCalendarEventReadFrom(v14, a2))
          {
            goto LABEL_64;
          }

          goto LABEL_57;
        }
      }

      else
      {
        if (!v13)
        {
          v15 = 0;
          while (1)
          {
            LOBYTE(v22) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v22 & 0x80000000) == 0)
            {
              break;
            }

            if (v15++ > 8)
            {
              goto LABEL_58;
            }
          }

          [a2 hasError];
          goto LABEL_58;
        }

        if (v13 == 1)
        {
          [a1 clearOneofValuesForPredictedContextSource];
          *(a1 + 72) |= 1u;
          *(a1 + 56) = 1;
          v14 = objc_alloc_init(PCPMapsViewedPlace);
          objc_storeStrong((a1 + 40), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !PCPMapsViewedPlaceReadFrom(v14, a2))
          {
            goto LABEL_64;
          }

LABEL_57:
          PBReaderRecallMark();

          goto LABEL_58;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_58:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PCPComputeInterruptRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1CEEE9D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PCPMapItemReadFrom(uint64_t a1, void *a2)
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
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

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
          v21 = PBReaderReadString();
          v22 = 32;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_53:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_68;
          }

          v21 = PBReaderReadString();
          v22 = 24;
        }

        v36 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else if (v13 == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v41 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v41 & 0x7F) << v23;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_58;
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

LABEL_58:
        *(a1 + 40) = v29;
      }

      else
      {
        if (v13 == 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v43 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v43 & 0x7F) << v30;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_62;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v32;
          }

LABEL_62:
          v38 = 16;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_53;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v42 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v14;
            if ((v42 & 0x80) == 0)
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
          v38 = 8;
        }

        *(a1 + v38) = v20;
      }

LABEL_68:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PCPLocationWithTimestampReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PCPLocation);
        objc_storeStrong((a1 + 16), v13);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !PCPLocationReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

double ManhattanDistance::computeDistance(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1] - *a2;
  if (!v3)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = v3 >> 3;
  result = 0.0;
  v7 = 1;
  do
  {
    if ((a3[1] - *a3) >> 3 <= v4)
    {
      break;
    }

    result = result + vabdd_f64(*(*a2 + 8 * v4), *(*a3 + 8 * v4));
    v4 = v7;
  }

  while (v5 > v7++);
  return result;
}

void Hdbscan::loadDataSet(uint64_t a1, char ***a2)
{
  v2 = (a1 + 80);
  if (v2 != a2)
  {
    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }
}

void Hdbscan::loadDistanceMatrix(uint64_t a1, char ***a2)
{
  v2 = (a1 + 104);
  if (v2 != a2)
  {
    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }
}

void Hdbscan::execute(char ***a1, unsigned int a2, unsigned int a3, std::string *__str)
{
  v23 = 0;
  v24 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(&v20, 0, sizeof(v20));
  v22 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15[2] = v16;
  v15[0] = 0;
  v15[1] = 0;
  v14[17] = v15;
  memset(&v14[14], 0, 24);
  if ((&v18 + 8) != a1 + 10)
  {
    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(&v18 + 1, a1[10], a1[11], 0xAAAAAAAAAAAAAAABLL * (a1[11] - a1[10]));
  }

  v21 = __PAIR64__(a3, a2);
  std::string::operator=(&v20, __str);
  v8 = a1[13];
  if (&v17 != (a1 + 13))
  {
    v9 = a1[14];
    if (v9 != v8)
    {
      std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(&v17, v8, v9, 0xAAAAAAAAAAAAAAABLL * (v9 - v8));
    }
  }

  memset(v10, 0, sizeof(v10));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v10, v17, *(&v17 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v17 + 1) - v17) >> 3));
  memset(v11, 0, sizeof(v11));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v11, *(&v18 + 1), v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - *(&v18 + 1)) >> 3));
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v20;
  }

  v13 = v21;
  memset(v14, 0, 24);
  std::vector<hdbscanConstraint>::__init_with_size[abi:ne200100]<hdbscanConstraint*,hdbscanConstraint*>(v14, v22, v23, 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 2));
  hdbscanRunner::run(v10);
}

void sub_1CEEFA60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  *(v42 - 104) = v41;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100]((v42 - 104));
  *(v42 - 104) = &a10;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100]((v42 - 104));
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(a41);
  std::__tree<int>::destroy(v42 - 232, *(v42 - 224));
  hdbscanParameters::~hdbscanParameters((v42 - 208));
  _Unwind_Resume(a1);
}

void hdbscanParameters::~hdbscanParameters(hdbscanParameters *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  v3 = (this + 24);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void Hdbscan::displayResult(Hdbscan *this)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *this, *(this + 1), (*(this + 1) - *this) >> 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<outlierScore>::__init_with_size[abi:ne200100]<outlierScore*,outlierScore*>(&v21, *(this + 3), *(this + 4), 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - *(this + 3)) >> 3));
  __p = 0;
  v25 = 0;
  v26 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *(this + 6), *(this + 7), (*(this + 7) - *(this + 6)) >> 3);
  v27 = *(this + 72);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "HDBSCAN clustering for ", 23);
  v2 = MEMORY[0x1E69E5310];
  v3 = MEMORY[0x1D3865800](MEMORY[0x1E69E5310], 0xAAAAAAAAAAAAAAABLL * ((*(this + 14) - *(this + 13)) >> 3));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " objects.", 9);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v28, MEMORY[0x1E69E5318]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  v5 = v18;
  if (v19 != v18)
  {
    v6 = 0;
    v7 = 1;
    v8 = MEMORY[0x1E69E5310];
    do
    {
      v9 = MEMORY[0x1D38657E0](v8, v5[v6]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
      v6 = v7;
      v5 = v18;
      ++v7;
    }

    while (v6 < (v19 - v18) >> 2);
  }

  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v10 = std::locale::use_facet(&v28, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  v11 = MEMORY[0x1E69E5310];
  std::ostream::flush();
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v28, MEMORY[0x1E69E5318]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5310], "The Clustering contains ", 24);
  v14 = MEMORY[0x1D38657F0](v13, *(this + 57));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " clusters with ", 15);
  v16 = MEMORY[0x1D38657F0](v15, *(this + 56));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " noise Points.", 14);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v28, MEMORY[0x1E69E5318]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v28);
  std::ostream::put();
  std::ostream::flush();
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_1CEEFAADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<double>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<double>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<double>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<double>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::vector<hdbscanConstraint>::__init_with_size[abi:ne200100]<hdbscanConstraint*,hdbscanConstraint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<hdbscanConstraint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1CEEFAE84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<hdbscanConstraint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<hdbscanConstraint>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<hdbscanConstraint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void hdbscanResult::~hdbscanResult(hdbscanResult *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<outlierScore>::__assign_with_size[abi:ne200100]<outlierScore*,outlierScore*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<outlierScore>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

void std::vector<outlierScore>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<outlierScore>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<outlierScore>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1CEEFB4D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<outlierScore>::__init_with_size[abi:ne200100]<outlierScore*,outlierScore*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<outlierScore>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1CEEFB554(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(*a1);
    std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1D38657C0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1D38657D0](v20);
  return a1;
}

void sub_1CEEFBC58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1D38657D0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1CEEFBC2CLL);
}

void hdbscanStar::hdbscanAlgorithm::calculateCoreDistances(void *a1@<X0>, int a2@<W1>, void **a3@<X8>)
{
  v5 = -1431655765 * ((a1[1] - *a1) >> 3);
  std::vector<double>::vector[abi:ne200100](a3, v5);
  v6 = a2 - 1;
  if (a2 == 1)
  {
    if (v5 >= 1)
    {
      v7 = *a3;

      bzero(v7, 8 * (v5 & 0x7FFFFFFF));
    }
  }

  else if (v5 >= 1)
  {
    v8 = 0;
    v9 = a2 - 2;
    v10 = v5 & 0x7FFFFFFF;
    __len = 8 * (a2 - 1);
    do
    {
      std::vector<double>::vector[abi:ne200100](__b, v6);
      if (a2 >= 2)
      {
        memset_pattern16(__b[0], &unk_1CEF0C0F0, __len);
      }

      v11 = 0;
      v12 = __b[0];
      v13 = __b[0] + 8 * v9;
      do
      {
        if (v8 != v11)
        {
          v14 = *(*(*a1 + 24 * v8) + 8 * v11);
          v15 = (__b[0] + __len - 8);
          v16 = a2;
          while (--v16 >= 1)
          {
            v17 = *v15--;
            if (v14 >= v17)
            {
              goto LABEL_17;
            }
          }

          v16 = v6 & (v6 >> 31);
LABEL_17:
          if (v16 < v6)
          {
            v18 = v13;
            v19 = a2 - 2;
            if (v9 > v16)
            {
              do
              {
                --v19;
                *v18 = *(v18 - 1);
                --v18;
              }

              while (v19 > v16);
            }

            v12[v16] = v14;
          }
        }

        ++v11;
      }

      while (v11 != v10);
      *(*a3 + v8) = v12[a2 - 2];
      __b[1] = v12;
      operator delete(v12);
      ++v8;
    }

    while (v8 != v10);
  }
}

void sub_1CEEFBEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void hdbscanStar::hdbscanAlgorithm::constructMst(void *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  if (a3)
  {
    v9 = -1431655765 * ((a1[1] - *a1) >> 3);
  }

  else
  {
    v9 = 0;
  }

  v76 = 0;
  v77 = 0;
  v78 = 0;
  v10 = (v8 - 1);
  v11 = v10 + v9;
  std::vector<int>::vector[abi:ne200100](&v74, v11);
  std::vector<double>::vector[abi:ne200100](&__b, v11);
  if (v8 >= 2)
  {
    memset_pattern16(__b, &unk_1CEF0C0F0, 8 * (v8 - 1));
  }

  bitSet::set(&v76, v8 - 1);
  if (v8 >= 2)
  {
    v12 = 1;
    v13 = v8 - 1;
    do
    {
      v14 = 0;
      v15 = 0;
      v16 = v13;
      v17 = v13;
      v19 = v76;
      v18 = v77;
      v20 = __b;
      v13 = -1;
      v21 = v74;
      v22 = 1.79769313e308;
      do
      {
        if (v17 != v15 && (v18 <= v14 >> 32 || ((*&v19[((v14 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8] >> v15) & 1) == 0))
        {
          v23 = *(*(*a1 + 24 * v16) + 8 * v15);
          if (*(*a2 + 8 * v16) > v23)
          {
            v23 = *(*a2 + 8 * v16);
          }

          if (*(*a2 + 8 * v15) <= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = *(*a2 + 8 * v15);
          }

          v25 = v20[v15];
          if (v24 < v25)
          {
            v20[v15] = v24;
            v21[v15] = v17;
            v25 = v24;
          }

          if (v25 <= v22)
          {
            v13 = v15;
            v22 = v25;
          }
        }

        ++v15;
        v14 += 0x100000000;
      }

      while ((v8 & 0x7FFFFFFF) != v15);
      bitSet::set(&v76, v13);
      ++v12;
    }

    while (v12 != v8);
  }

  std::vector<int>::vector[abi:ne200100](&v70, v11);
  if (v8 >= 2)
  {
    v26 = 0;
    v27 = vdupq_n_s64(v10 - 1);
    v28 = xmmword_1CEF0C0E0;
    v29 = xmmword_1CEF0B440;
    v30 = v70 + 8;
    v31 = vdupq_n_s64(4uLL);
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v27, v29));
      if (vuzp1_s16(v32, *v27.i8).u8[0])
      {
        *(v30 - 2) = v26;
      }

      if (vuzp1_s16(v32, *&v27).i8[2])
      {
        *(v30 - 1) = v26 + 1;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v28))).i32[1])
      {
        *v30 = v26 + 2;
        v30[1] = v26 + 3;
      }

      v26 += 4;
      v28 = vaddq_s64(v28, v31);
      v29 = vaddq_s64(v29, v31);
      v30 += 4;
    }

    while (((v8 + 2) & 0xFFFFFFFC) != v26);
  }

  if (v4)
  {
    v33 = v74;
    if (2 * v8 > v8)
    {
      v34 = 0;
      v35 = 2 * v8 - 1;
      v36 = *a2;
      if (v35 <= v8)
      {
        v35 = v8;
      }

      v37 = v35 - v8 + 1;
      v38 = __b + 8 * v8 - 8;
      v39 = 4 * v8 - 4;
      v40 = v70 + v39;
      v41 = v74 + v39;
      do
      {
        *&v41[4 * v34] = v34;
        *&v40[4 * v34] = v34;
        *&v38[8 * v34] = *(v36 + 8 * v34);
        ++v34;
      }

      while (v37 != v34);
    }
  }

  else
  {
    v33 = v74;
  }

  v67 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v67, v33, v75, (v75 - v33) >> 2);
  v64 = 0;
  v65 = 0;
  v66 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v64, v70, v71, (v71 - v70) >> 2);
  __p = 0;
  v62 = 0;
  v63 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, __b, v73, (v73 - __b) >> 3);
  *(a4 + 8) = 0u;
  v42 = (a4 + 8);
  *(a4 + 56) = 0u;
  *(a4 + 88) = 0u;
  v43 = (a4 + 32);
  v44 = (a4 + 80);
  *(a4 + 72) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *a4 = v8;
  if ((a4 + 8) != &v67)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 8), v67, v68, (v68 - v67) >> 2);
  }

  if (v43 != &v64)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a4 + 32), v64, v65, (v65 - v64) >> 2);
  }

  if ((a4 + 56) != &__p)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a4 + 56), __p, v62, (v62 - __p) >> 3);
  }

  v45 = *(a4 + 80);
  v46 = *(a4 + 88);
  v47 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3);
  v48 = v8 - v47;
  if (v8 <= v47)
  {
    if (v8 < v47)
    {
      v53 = v45 + 24 * v8;
      if (v46 != v53)
      {
        v54 = *(a4 + 88);
        do
        {
          v56 = *(v54 - 24);
          v54 -= 24;
          v55 = v56;
          if (v56)
          {
            *(v46 - 16) = v55;
            operator delete(v55);
          }

          v46 = v54;
        }

        while (v54 != v53);
      }

      *(a4 + 88) = v53;
    }
  }

  else
  {
    v49 = *(a4 + 96);
    if (0xAAAAAAAAAAAAAAABLL * ((v49 - v46) >> 3) < v48)
    {
      if ((v8 & 0x80000000) == 0)
      {
        v50 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v45) >> 3);
        v51 = 2 * v50;
        if (2 * v50 <= v8)
        {
          v51 = v8;
        }

        if (v50 >= 0x555555555555555)
        {
          v52 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v52 = v51;
        }

        v79 = a4 + 80;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(v52);
      }

      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a4 + 88), 24 * ((24 * v48 - 24) / 0x18) + 24);
    *(a4 + 88) = v46 + 24 * ((24 * v48 - 24) / 0x18) + 24;
  }

  v57 = *(a4 + 64) - *(a4 + 56);
  if ((v57 >> 3) >= 1)
  {
    v58 = 0;
    v59 = (v57 >> 3) & 0x7FFFFFFF;
    do
    {
      std::vector<int>::push_back[abi:ne200100]((*v44 + 24 * *(*v42 + v58)), *v43 + v58);
      v60 = *(*v43 + v58);
      if (*(*v42 + v58) != v60)
      {
        std::vector<int>::push_back[abi:ne200100]((*v44 + 24 * v60), (*v42 + v58));
      }

      v58 += 4;
      --v59;
    }

    while (v59);
  }

  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (__b)
  {
    v73 = __b;
    operator delete(__b);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v76)
  {
    operator delete(v76);
  }
}

void sub_1CEEFC4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void hdbscanStar::hdbscanAlgorithm::computeHierarchyAndClusterTree(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, cluster_factory *a8)
{
  v10 = *(a1 + 7);
  v9 = *(a1 + 8);
  std::vector<int>::vector[abi:ne200100](&v20, *a1);
  std::vector<int>::vector[abi:ne200100](&v18, *a1);
  v11 = v18;
  if (v19 != v18)
  {
    v12 = v19 - v18;
    v13 = v20;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    do
    {
      *v11++ = 1;
      *v13++ = 1;
      --v12;
    }

    while (v12);
  }

  v17 = 0;
  std::vector<cluster *>::push_back[abi:ne200100](a7, &v17);
  v14 = *a1;
  cluster_factory::createNewCluster(a8, 1, 0, NAN);
}

void sub_1CEEFD49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  v42 = *(v40 - 248);
  if (v42)
  {
    *(v40 - 240) = v42;
    operator delete(v42);
  }

  std::__tree<int>::destroy(v40 - 224, *(v40 - 216));
  std::__tree<int>::destroy(v40 - 200, *(v40 - 192));
  std::__tree<int>::destroy(v40 - 176, *(v40 - 168));
  v43 = *(v40 - 152);
  if (v43)
  {
    *(v40 - 144) = v43;
    operator delete(v43);
  }

  v44 = *(v40 - 128);
  if (v44)
  {
    *(v40 - 120) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

void std::vector<cluster *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void hdbscanStar::hdbscanAlgorithm::calculateNumConstraintsSatisfied(void *a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  if (v5 != *a3)
  {
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v6 = a1 + 1;
    v7 = *a1;
    if (*a1 == a1 + 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = a2;
      do
      {
        v11 = *(*(*v10 + 8 * *(v7 + 7)) + 104);
        if (v11)
        {
          if (v100 == v9)
          {
            goto LABEL_11;
          }

          v12 = v100;
          while (*v12 != *v11)
          {
            v12 += 136;
            if (v12 == v9)
            {
              goto LABEL_11;
            }
          }

          if (v12 == v9)
          {
LABEL_11:
            if (v9 >= v102)
            {
              v17 = 0xF0F0F0F0F0F0F0F1 * ((v9 - v100) >> 3);
              if (v17 + 1 > 0x1E1E1E1E1E1E1E1)
              {
                std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
              }

              v18 = 0xE1E1E1E1E1E1E1E2 * ((v102 - v100) >> 3);
              if (v18 <= v17 + 1)
              {
                v18 = v17 + 1;
              }

              if (0xF0F0F0F0F0F0F0F1 * ((v102 - v100) >> 3) >= 0xF0F0F0F0F0F0F0)
              {
                v19 = 0x1E1E1E1E1E1E1E1;
              }

              else
              {
                v19 = v18;
              }

              *&v91 = &v100;
              if (v19)
              {
                if (v19 <= 0x1E1E1E1E1E1E1E1)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v20 = 8 * ((v9 - v100) >> 3);
              *&v89 = 0;
              *(&v89 + 1) = v20;
              v90 = v20;
              v21 = *v11;
              v22 = v11[2];
              *(v20 + 16) = v11[1];
              *(v20 + 32) = v22;
              *v20 = v21;
              std::set<int>::set[abi:ne200100]((136 * v17 + 48), v11 + 6);
              *(v20 + 72) = 0;
              *(v20 + 80) = 0;
              *(v20 + 88) = 0;
              std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(136 * v17 + 72, *(v11 + 9), *(v11 + 10), (*(v11 + 10) - *(v11 + 9)) >> 3);
              v23 = v11[6];
              v24 = v11[7];
              *(v20 + 128) = *(v11 + 32);
              *(v20 + 96) = v23;
              *(v20 + 112) = v24;
              v9 = (v90 + 136);
              *&v90 = v90 + 136;
              v26 = v100;
              v25 = v101;
              v27 = (*(&v89 + 1) + v100 - v101);
              if (v100 != v101)
              {
                v28 = 0;
                do
                {
                  v29 = &v27[v28];
                  v30 = *&v26[v28];
                  v31 = *&v26[v28 + 32];
                  *(v29 + 1) = *&v26[v28 + 16];
                  *(v29 + 2) = v31;
                  *v29 = v30;
                  *(v29 + 6) = *&v26[v28 + 48];
                  v32 = &v26[v28 + 56];
                  v33 = *v32;
                  *&v27[v28 + 56] = *v32;
                  v34 = &v27[v28 + 56];
                  v35 = *&v26[v28 + 64];
                  *(v29 + 8) = v35;
                  if (v35)
                  {
                    *(v33 + 16) = v34;
                    *&v26[v28 + 48] = v32;
                    *v32 = 0;
                    *&v26[v28 + 64] = 0;
                  }

                  else
                  {
                    *(v29 + 6) = v34;
                  }

                  v36 = &v27[v28];
                  v37 = &v26[v28];
                  *(v36 + 9) = 0;
                  *(v36 + 10) = 0;
                  *(v36 + 11) = 0;
                  *(v36 + 72) = *&v26[v28 + 72];
                  *(v36 + 11) = *&v26[v28 + 88];
                  *(v37 + 9) = 0;
                  *(v37 + 10) = 0;
                  *(v37 + 11) = 0;
                  v38 = *&v26[v28 + 96];
                  v39 = *&v26[v28 + 112];
                  *(v36 + 32) = *&v26[v28 + 128];
                  *(v36 + 6) = v38;
                  *(v36 + 7) = v39;
                  v28 += 136;
                }

                while (&v26[v28] != v25);
                do
                {
                  std::__destroy_at[abi:ne200100]<cluster,0>(v26);
                  v26 += 136;
                }

                while (v26 != v25);
                v26 = v100;
                v9 = v90;
              }

              v100 = v27;
              v101 = v9;
              v40 = v102;
              v102 = *(&v90 + 1);
              *&v90 = v26;
              *(&v90 + 1) = v40;
              *&v89 = v26;
              *(&v89 + 1) = v26;
              std::__split_buffer<cluster>::~__split_buffer(&v89);
              v10 = a2;
            }

            else
            {
              v13 = *v11;
              v14 = v11[2];
              *(v9 + 1) = v11[1];
              *(v9 + 2) = v14;
              *v9 = v13;
              std::set<int>::set[abi:ne200100](v9 + 6, v11 + 6);
              *(v9 + 9) = 0;
              *(v9 + 10) = 0;
              *(v9 + 11) = 0;
              std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>((v9 + 72), *(v11 + 9), *(v11 + 10), (*(v11 + 10) - *(v11 + 9)) >> 3);
              v15 = v11[6];
              v16 = v11[7];
              *(v9 + 32) = *(v11 + 32);
              *(v9 + 6) = v15;
              *(v9 + 7) = v16;
              v9 += 136;
            }

            v101 = v9;
          }
        }

        v41 = v7[1];
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = v7[2];
            v48 = *v42 == v7;
            v7 = v42;
          }

          while (!v48);
        }

        v7 = v42;
      }

      while (v42 != v6);
      v4 = *a3;
      v5 = *(a3 + 8);
    }

    if (v4 != v5)
    {
      do
      {
        v43 = v4[1];
        v44 = *(*a4 + 4 * v43);
        v45 = v4[2];
        v46 = v44;
        v47 = *(*a4 + 4 * v45);
        if (*v4)
        {
          v48 = 0;
        }

        else
        {
          v48 = v44 == v47;
        }

        if (v48)
        {
          v56 = *a1;
          if (*a1 != v6)
          {
            while (*(v56 + 7) != v46)
            {
              v57 = v56[1];
              if (v57)
              {
                do
                {
                  v58 = v57;
                  v57 = *v57;
                }

                while (v57);
              }

              else
              {
                do
                {
                  v58 = v56[2];
                  v48 = *v58 == v56;
                  v56 = v58;
                }

                while (!v48);
              }

              v56 = v58;
              if (v58 == v6)
              {
                goto LABEL_90;
              }
            }

            if (v56 != v6)
            {
              *(*(*a2 + 8 * v46) + 40) += 2;
            }
          }
        }

        else if (*v4 == 1)
        {
          v49 = v47;
          if (!v44 || v44 != v47)
          {
            v51 = *a1;
            if (v44)
            {
              v52 = v51 == v6;
            }

            else
            {
              v52 = 1;
            }

            if (!v52)
            {
              v53 = *a1;
              while (*(v53 + 7) != v46)
              {
                v54 = v53[1];
                if (v54)
                {
                  do
                  {
                    v55 = v54;
                    v54 = *v54;
                  }

                  while (v54);
                }

                else
                {
                  do
                  {
                    v55 = v53[2];
                    v48 = *v55 == v53;
                    v53 = v55;
                  }

                  while (!v48);
                }

                v53 = v55;
                if (v55 == v6)
                {
                  goto LABEL_76;
                }
              }

              if (v53 != v6)
              {
                ++*(*(*a2 + 8 * v46) + 40);
                v51 = *a1;
              }
            }

LABEL_76:
            if (v49 && v51 != v6)
            {
              while (*(v51 + 7) != v46)
              {
                v59 = v51[1];
                if (v59)
                {
                  do
                  {
                    v60 = v59;
                    v59 = *v59;
                  }

                  while (v59);
                }

                else
                {
                  do
                  {
                    v60 = v51[2];
                    v48 = *v60 == v51;
                    v51 = v60;
                  }

                  while (!v48);
                }

                v51 = v60;
                if (v60 == v6)
                {
                  goto LABEL_88;
                }
              }

              if (v51 != v6)
              {
                ++*(*(*a2 + 8 * v49) + 40);
              }
            }

LABEL_88:
            if (!v46)
            {
              v61 = v100;
              v62 = v101;
              while (v61 != v62)
              {
                v63 = *v61;
                v64 = *(v61 + 2);
                v90 = *(v61 + 1);
                v91 = v64;
                v89 = v63;
                std::set<int>::set[abi:ne200100](&v92, v61 + 6);
                __p = 0;
                v95 = 0;
                v96 = 0;
                std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(&__p, *(v61 + 9), *(v61 + 10), (*(v61 + 10) - *(v61 + 9)) >> 3);
                v65 = *(v61 + 6);
                v66 = *(v61 + 7);
                v99 = *(v61 + 32);
                v97 = v65;
                v98 = v66;
                v67 = v93[0];
                if (v93[0])
                {
                  v68 = v93;
                  v69 = v93[0];
                  do
                  {
                    if (*(v69 + 7) >= v43)
                    {
                      v68 = v69;
                    }

                    v69 = v69[*(v69 + 7) < v43];
                  }

                  while (v69);
                  if (v68 != v93 && *(v68 + 7) <= v43)
                  {
                    ++HIDWORD(v91);
                    if (__p)
                    {
                      v95 = __p;
                      operator delete(__p);
                      v67 = v93[0];
                    }

                    std::__tree<int>::destroy(&v92, v67);
                    break;
                  }
                }

                if (__p)
                {
                  v95 = __p;
                  operator delete(__p);
                  v67 = v93[0];
                }

                std::__tree<int>::destroy(&v92, v67);
                v61 += 136;
              }
            }

            if (!v49)
            {
              v70 = v100;
              v71 = v101;
              while (v70 != v71)
              {
                v72 = *v70;
                v73 = *(v70 + 2);
                v90 = *(v70 + 1);
                v91 = v73;
                v89 = v72;
                std::set<int>::set[abi:ne200100](&v92, v70 + 6);
                __p = 0;
                v95 = 0;
                v96 = 0;
                std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(&__p, *(v70 + 9), *(v70 + 10), (*(v70 + 10) - *(v70 + 9)) >> 3);
                v74 = *(v70 + 6);
                v75 = *(v70 + 7);
                v99 = *(v70 + 32);
                v97 = v74;
                v98 = v75;
                v76 = v93[0];
                if (v93[0])
                {
                  v77 = v93;
                  v78 = v93[0];
                  do
                  {
                    if (*(v78 + 7) >= v45)
                    {
                      v77 = v78;
                    }

                    v78 = v78[*(v78 + 7) < v45];
                  }

                  while (v78);
                  if (v77 != v93 && *(v77 + 7) <= v45)
                  {
                    ++HIDWORD(v91);
                    if (__p)
                    {
                      v95 = __p;
                      operator delete(__p);
                      v76 = v93[0];
                    }

                    std::__tree<int>::destroy(&v92, v76);
                    break;
                  }
                }

                if (__p)
                {
                  v95 = __p;
                  operator delete(__p);
                  v76 = v93[0];
                }

                std::__tree<int>::destroy(&v92, v76);
                v70 += 136;
              }
            }
          }
        }

LABEL_90:
        v4 += 3;
      }

      while (v4 != v5);
      v9 = v101;
    }

    if (v100 != v9)
    {
      v79 = v100 + 48;
      do
      {
        v80 = *(v79 - 3);
        v81 = *(v79 - 1);
        v90 = *(v79 - 2);
        v91 = v81;
        v89 = v80;
        std::set<int>::set[abi:ne200100](&v92, v79);
        v82 = v79 - 12;
        __p = 0;
        v95 = 0;
        v96 = 0;
        std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(&__p, *(v79 + 3), *(v79 + 4), (*(v79 + 4) - *(v79 + 3)) >> 3);
        v83 = *(v79 + 3);
        v84 = *(v79 + 4);
        v99 = v79[20];
        v97 = v83;
        v98 = v84;
        std::__tree<int>::destroy(&v92, v93[0]);
        v93[0] = 0;
        v93[1] = 0;
        v92 = v93;
        if (__p)
        {
          v95 = __p;
          operator delete(__p);
          v85 = v93[0];
        }

        else
        {
          v85 = 0;
        }

        std::__tree<int>::destroy(&v92, v85);
        v79 += 34;
      }

      while (v82 + 34 != v9);
    }

    *&v89 = &v100;
    std::vector<cluster>::__destroy_vector::operator()[abi:ne200100](&v89);
  }
}

void sub_1CEEFDE74(_Unwind_Exception *a1)
{
  *(v1 - 96) = v1 - 120;
  std::vector<cluster>::__destroy_vector::operator()[abi:ne200100]((v1 - 96));
  _Unwind_Resume(a1);
}

uint64_t hdbscanStar::hdbscanAlgorithm::createNewCluster(uint64_t a1, uint64_t *a2, cluster *this, int a4, cluster_factory *a5, double a6)
{
  v11 = *a1;
  if (*a1 != a1 + 8)
  {
    v12 = *a2;
    do
    {
      *(v12 + 4 * *(v11 + 7)) = a4;
      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v11 = v14;
    }

    while (v14 != (a1 + 8));
  }

  cluster::detachPoints(this, *(a1 + 16), a6);
  if (a4)
  {
    v16 = *(a1 + 16);

    cluster_factory::createNewCluster(a5, a4, this, a6);
  }

  std::set<int>::set[abi:ne200100](v18, a1);
  cluster::addPointsToVirtualChildCluster(this, v18);
  std::__tree<int>::destroy(v18, v18[1]);
  return 0;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v7, *a2, a2[1], (a2[1] - *a2) >> 2);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = std::__split_buffer<std::vector<int>>::~__split_buffer(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_1CEEFE180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void hdbscanStar::hdbscanAlgorithm::findProminentClusters(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *(*a1 + 8);
  v41 = 0;
  v42 = 0;
  v40 = 0;
  std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(&v40, *(v7 + 72), *(v7 + 80), (*(v7 + 80) - *(v7 + 72)) >> 3);
  std::vector<int>::vector[abi:ne200100](a4, a3);
  v38 = 0;
  v39 = 0;
  v37 = &v38;
  v8 = v40;
  if (v40 != v41)
  {
    do
    {
      v9 = *(*v8 + 128);
      LODWORD(v31) = v9;
      for (i = v38; i; i = *i)
      {
        v11 = *(i + 8);
        if (v9 >= v11)
        {
          if (v11 >= v9)
          {
            break;
          }

          ++i;
        }
      }

      __p = &v31;
      v12 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v37, v9);
      std::vector<int>::push_back[abi:ne200100](v12 + 5, (*v8 + 124));
      v8 += 8;
    }

    while (v8 != v41);
    while (v39)
    {
      v13 = v37;
      __p = 0;
      v35 = 0;
      v36 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v37[5], v37[6], (v37[6] - v37[5]) >> 2);
      v14 = *(v13 + 8);
      if (v38)
      {
        v15 = &v38;
        v16 = v38;
        do
        {
          if (*(v16 + 8) >= v14)
          {
            v15 = v16;
          }

          v16 = v16[*(v16 + 8) < v14];
        }

        while (v16);
        if (v15 != &v38 && *(v15 + 8) <= v14)
        {
          v17 = v15[1];
          v18 = v15;
          if (v17)
          {
            do
            {
              v19 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v19 = v18[2];
              v20 = *v19 == v18;
              v18 = v19;
            }

            while (!v20);
          }

          if (v37 == v15)
          {
            v37 = v19;
          }

          --v39;
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v38, v15);
          v21 = v15[5];
          if (v21)
          {
            v15[6] = v21;
            operator delete(v21);
          }

          operator delete(v15);
        }
      }

      v22 = (*a2 + 24 * v14);
      v32 = 0;
      v33 = 0;
      v31 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v31, *v22, v22[1], (v22[1] - *v22) >> 2);
      v23 = v31;
      if (v32 != v31)
      {
        v24 = 0;
        v25 = (v32 - v31) >> 2;
        v26 = __p;
        v27 = v35;
        v28 = *a4;
        if (v25 <= 1)
        {
          v25 = 1;
        }

        do
        {
          v29 = *&v23[4 * v24];
          v30 = v26;
          if (v26 != v27)
          {
            v30 = v26;
            while (*v30 != v29)
            {
              if (++v30 == v27)
              {
                goto LABEL_36;
              }
            }
          }

          if (v30 != v27)
          {
            *(v28 + 4 * v24) = v29;
          }

LABEL_36:
          ++v24;
        }

        while (v24 != v25);
      }

      if (v23)
      {
        v32 = v23;
        operator delete(v23);
      }

      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }
    }
  }

  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(v38);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_1CEEFE44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void hdbscanStar::hdbscanAlgorithm::findMembershipScore(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1] - *a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v5 << 30)
  {
    std::vector<double>::__vallocate[abi:ne200100](a3, (v5 >> 2));
  }

  v6 = v5 >> 2;
  if ((v5 >> 2) >= 1)
  {
    v7 = 0;
    while (*(*a3 + 8 * v7) != 1.79769313e308)
    {
LABEL_55:
      ++v7;
LABEL_56:
      if (v7 >= v6)
      {
        return;
      }
    }

    v8 = 0;
    v9 = a1[1];
    v10 = (*a1 + 4 * v7);
    v11 = *v10;
    __src = 0;
    v52 = 0;
    v53 = 0;
    do
    {
      if (v10 != v9)
      {
        while (*v10 != v11)
        {
          if (++v10 == v9)
          {
            goto LABEL_24;
          }
        }
      }

      if (v10 == v9)
      {
        break;
      }

      v12 = (v10 - *a1) >> 2;
      if (v8 >= v53)
      {
        v13 = __src;
        v14 = v8 - __src;
        v15 = (v8 - __src) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
        }

        v17 = v53 - __src;
        if ((v53 - __src) >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
        v19 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v19 = v16;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v19);
        }

        v20 = v15;
        v21 = (4 * v15);
        v22 = &v21[-v20];
        *v21 = v12;
        v8 = (v21 + 1);
        memcpy(v22, v13, v14);
        v23 = __src;
        __src = v22;
        v52 = v8;
        v53 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v8 = v12;
        v8 += 4;
      }

      v52 = v8;
      ++v10;
      v9 = a1[1];
    }

    while (v10 != v9);
LABEL_24:
    if (v11)
    {
      std::vector<double>::vector[abi:ne200100](&__p, (v8 - __src) >> 2);
      v24 = __src;
      v25 = __p;
      if (v52 != __src)
      {
        v26 = (v52 - __src) >> 2;
        v27 = *a2;
        if (v26 <= 1)
        {
          v26 = 1;
        }

        v28 = __p;
        do
        {
          v29 = *v27++;
          *v28++ = v29;
          --v26;
        }

        while (v26);
      }

      v30 = v25 + 1;
      v31 = v25 == v50 || v30 == v50;
      v32 = v25;
      if (!v31)
      {
        v33 = *v25;
        v32 = v25;
        v34 = v25 + 1;
        do
        {
          v35 = *v34++;
          v36 = v35;
          if (v33 < v35)
          {
            v33 = v36;
            v32 = v30;
          }

          v30 = v34;
        }

        while (v34 != v50);
      }

      if (v25 == v50)
      {
        if (!v25)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v37 = *v32;
        v38 = v50 - v25;
        v39 = *a3;
        if (v38 <= 1)
        {
          v38 = 1;
        }

        v40 = v25;
        do
        {
          v41 = *v40++;
          v42 = (v37 - v41) / v37;
          v43 = *v24;
          v24 += 4;
          *(v39 + 8 * v43) = v42;
          --v38;
        }

        while (v38);
      }

      v50 = v25;
      operator delete(v25);
      v24 = __src;
    }

    else
    {
      v24 = __src;
      if (v8 != __src)
      {
        v44 = (v8 - __src) >> 2;
        v45 = *a3;
        if (v44 <= 1)
        {
          v44 = 1;
        }

        v46 = __src;
        do
        {
          v47 = *v46++;
          *(v45 + 8 * v47) = 0;
          --v44;
        }

        while (v44);
      }

      ++v7;
    }

LABEL_52:
    if (v24)
    {
      v52 = v24;
      operator delete(v24);
    }

    if (!v11)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }
}

void sub_1CEEFE8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t hdbscanStar::hdbscanAlgorithm::propagateTree(uint64_t **a1)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = &v19;
  __p = 0;
  v16 = 0;
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    goto LABEL_18;
  }

  do
  {
    v3 = *v1;
    if (*v1 && (*(v3 + 120) & 1) == 0)
    {
      v4 = *(v3 + 124);
      std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__erase_unique<int>(&v18, v4);
      std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__emplace_unique_key_args<int,std::pair<int const,cluster *>>(&v18, v4);
      bitSet::set(&__p, v4);
    }

    ++v1;
  }

  while (v1 != v2);
  if (!v20)
  {
LABEL_18:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = v19;
      v7 = &v19;
      if (v19)
      {
        do
        {
          v8 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (v9);
      }

      v10 = v8[5];
      std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__erase_unique<int>(&v18, *(v8 + 8));
      cluster::propagate(v10);
      v11 = *(v10 + 112) == INFINITY;
      v12 = *(v10 + 104);
      if (v12)
      {
        v13 = *(v12 + 124);
        if (v16 <= v13 || ((*(__p + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__erase_unique<int>(&v18, *(v12 + 124));
          std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__emplace_unique_key_args<int,std::pair<int const,cluster *>>(&v18, v13);
          bitSet::set(&__p, v13);
        }
      }

      v5 |= v11;
    }

    while (v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(v19);
  return v5 & 1;
}

void sub_1CEEFEA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::destroy(a15);
  _Unwind_Resume(a1);
}

void hdbscanStar::hdbscanAlgorithm::calculateOutlierScores(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a2[1] - *a2;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  if ((v6 >> 3) < 1)
  {
    v11 = 0;
    v26 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = (v6 >> 3) & 0x7FFFFFFF;
    do
    {
      v14 = *(*a2 + 8 * v12);
      if (v14 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0 - *(*(*a1 + 8 * *(*a3 + 4 * v12)) + 96) / v14;
      }

      v16 = *(*a4 + 8 * v12);
      v17 = a5[2];
      if (v11 >= v17)
      {
        v18 = *a5;
        v19 = v11 - *a5;
        v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3) + 1;
        if (v20 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<outlierScore>>(a5, v22);
        }

        v23 = 8 * (v19 >> 3);
        *v23 = v16;
        *(v23 + 8) = v15;
        *(v23 + 16) = v12;
        v11 = v23 + 24;
        v24 = v23 - v19;
        memcpy((v23 - v19), v18, v19);
        v25 = *a5;
        *a5 = v24;
        a5[1] = v11;
        a5[2] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v11 = v16;
        *(v11 + 8) = v15;
        *(v11 + 16) = v12;
        v11 += 24;
      }

      a5[1] = v11;
      ++v12;
    }

    while (v13 != v12);
    v26 = *a5;
  }

  v27 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v11 - v26) >> 3));
  if (v11 == v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,false>(v26, v11, v28, 1);
}

void sub_1CEEFECA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1CEEFED28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__list_imp<int>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(result, a4);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1CEEFEF2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v5 = a2;
  v221 = (a2 - 24);
  v211 = (a2 - 72);
  v212 = (a2 - 48);
  n128_u64 = a1;
  while (1)
  {
    a1 = n128_u64;
    v7 = v5 - n128_u64;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v9 = v8 - 2;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 2)
    {
      v231.n128_u64[0] = a2 - 16;
      v231.n128_u64[1] = a2 - 24;
      v232 = (a2 - 8);
      v228 = (n128_u64 + 8);
      v229 = n128_u64;
      v230 = (n128_u64 + 16);
      v154 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
      if (v154 == -1)
      {
LABEL_177:
        v208 = *n128_u64;
        v232 = *(n128_u64 + 16);
        v231 = v208;
        v209 = *v221;
        *(n128_u64 + 16) = *(a2 - 8);
        *n128_u64 = v209;
        result = v231;
        *(a2 - 8) = v232;
        *v221 = result;
      }

      return result;
    }

LABEL_9:
    if (v7 <= 575)
    {
      v161 = n128_u64 + 24;
      v162 = n128_u64 == a2 || v161 == a2;
      v163 = v162;
      if (a4)
      {
        if ((v163 & 1) == 0)
        {
          v164 = 0;
          v165 = n128_u64;
          do
          {
            v166 = v165 + 1;
            v228 = &v165->n128_i8[8];
            v229 = v165;
            v165 = v161;
            v231.n128_u64[0] = v161 + 8;
            v231.n128_u64[1] = v161;
            v232 = (v161 + 16);
            v230 = v166;
            if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
            {
              v167 = *v165;
              v227 = v165[1].n128_u64[0];
              v226 = v167;
              v168 = v164;
              while (1)
              {
                v169 = n128_u64 + v168;
                *(v169 + 24) = *(n128_u64 + v168);
                *(v169 + 40) = *(n128_u64 + v168 + 16);
                if (!v168)
                {
                  break;
                }

                v231.n128_u64[0] = &v226.n128_u64[1];
                v231.n128_u64[1] = &v226;
                v232 = &v227;
                v228 = (v169 - 16);
                v229 = (v169 - 24);
                v230 = (v169 - 8);
                v168 -= 24;
                if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF)
                {
                  v170 = (n128_u64 + v168 + 24);
                  goto LABEL_131;
                }
              }

              v170 = n128_u64;
LABEL_131:
              result = v226;
              v170[1].n128_u32[0] = v227;
              *v170 = result;
            }

            v161 = &v165[1].n128_i64[1];
            v164 += 24;
          }

          while (&v165[1].n128_i8[8] != a2);
        }
      }

      else if ((v163 & 1) == 0)
      {
        v201 = n128_u64 - 24;
        do
        {
          v202 = (a1 + 16);
          v228 = (a1 + 8);
          v229 = a1;
          a1 = v161;
          v231.n128_u64[0] = v161 + 8;
          v231.n128_u64[1] = v161;
          v232 = (v161 + 16);
          v230 = v202;
          if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
          {
            v203 = *a1;
            v227 = *(a1 + 16);
            v226 = v203;
            v204 = v201;
            do
            {
              *(v204 + 48) = *(v204 + 24);
              *(v204 + 64) = *(v204 + 40);
              v231.n128_u64[0] = &v226.n128_u64[1];
              v231.n128_u64[1] = &v226;
              v232 = &v227;
              v228 = (v204 + 8);
              v229 = v204;
              v230 = (v204 + 16);
              v204 -= 24;
            }

            while (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF);
            result = v226;
            *(v204 + 64) = v227;
            *(v204 + 48) = result;
          }

          v161 = a1 + 24;
          v201 += 24;
        }

        while (a1 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (n128_u64 != a2)
      {
        v171 = v9 >> 1;
        v172 = v9 >> 1;
        do
        {
          v173 = v172;
          if (v171 >= v172)
          {
            v174 = (2 * v172) | 1;
            v175 = a1 + 24 * v174;
            if (2 * v172 + 2 < v8)
            {
              v231.n128_u64[0] = v175 + 8;
              v231.n128_u64[1] = a1 + 24 * v174;
              v232 = (v175 + 16);
              v228 = (v175 + 32);
              v229 = (v175 + 24);
              v230 = (v175 + 40);
              if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 255)
              {
                v175 += 24;
                v174 = 2 * v173 + 2;
              }
            }

            v231.n128_u64[0] = v175 + 8;
            v231.n128_u64[1] = v175;
            v176 = (a1 + 24 * v173);
            v232 = (v175 + 16);
            v228 = &v176->n128_i8[8];
            v229 = v176;
            v230 = v176 + 1;
            if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF)
            {
              v177 = *v176;
              v227 = v176[1].n128_u64[0];
              v226 = v177;
              do
              {
                v178 = v175;
                v179 = *v175;
                v176[1].n128_u32[0] = *(v175 + 16);
                *v176 = v179;
                if (v171 < v174)
                {
                  break;
                }

                v180 = (2 * v174) | 1;
                v175 = a1 + 24 * v180;
                v181 = 2 * v174 + 2;
                if (v181 < v8)
                {
                  v231.n128_u64[0] = v175 + 8;
                  v231.n128_u64[1] = a1 + 24 * v180;
                  v232 = (v175 + 16);
                  v228 = (v175 + 32);
                  v229 = (v175 + 24);
                  v230 = (v175 + 40);
                  if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 255)
                  {
                    v175 += 24;
                    v180 = v181;
                  }
                }

                v231.n128_u64[0] = v175 + 8;
                v231.n128_u64[1] = v175;
                v232 = (v175 + 16);
                v228 = &v226.n128_i8[8];
                v229 = &v226;
                v230 = &v227;
                v176 = v178;
                v174 = v180;
              }

              while (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF);
              v182 = v226;
              v178[1].n128_u32[0] = v227;
              *v178 = v182;
            }
          }

          v172 = v173 - 1;
        }

        while (v173);
        v183 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
        do
        {
          v184 = 0;
          v225 = *(a1 + 16);
          v224 = *a1;
          v185 = a1;
          do
          {
            v186 = (v185 + 24 * v184);
            v187 = (v186 + 24);
            v188 = (2 * v184) | 1;
            v189 = 2 * v184 + 2;
            if (v189 < v183)
            {
              v190 = v186 + 3;
              v231.n128_u64[0] = v186[2].n128_u64;
              v231.n128_u64[1] = &v186[1].n128_u64[1];
              v232 = (v186 + 40);
              v228 = &v186[3].n128_i8[8];
              v229 = v186 + 3;
              v230 = v186 + 4;
              if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 255)
              {
                v187 = v190;
                v188 = v189;
              }
            }

            v191 = *v187;
            *(v185 + 16) = v187[1].n128_u32[0];
            *v185 = v191;
            v185 = v187;
            v184 = v188;
          }

          while (v188 <= (v183 - 2) / 2);
          v192 = a2 - 24;
          v162 = v187 == (a2 - 24);
          a2 -= 24;
          if (v162)
          {
            result = v224;
            v187[1].n128_u32[0] = v225;
            *v187 = v224;
          }

          else
          {
            v193 = *v192;
            v187[1].n128_u32[0] = *(v192 + 16);
            *v187 = v193;
            result = v224;
            *(v192 + 16) = v225;
            *v192 = v224;
            v194 = &v187[1].n128_i64[1] - a1;
            if (v194 >= 25)
            {
              v195 = (-2 - 0x5555555555555555 * (v194 >> 3)) >> 1;
              v196 = (a1 + 24 * v195);
              v231.n128_u64[0] = &v196->n128_u64[1];
              v231.n128_u64[1] = v196;
              v232 = v196 + 1;
              v228 = &v187->n128_i8[8];
              v229 = v187;
              v230 = v187 + 1;
              if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
              {
                v197 = *v187;
                v227 = v187[1].n128_u64[0];
                v226 = v197;
                do
                {
                  v198 = v196;
                  v199 = *v196;
                  v187[1].n128_u32[0] = v196[1].n128_u32[0];
                  *v187 = v199;
                  if (!v195)
                  {
                    break;
                  }

                  v195 = (v195 - 1) >> 1;
                  v196 = (a1 + 24 * v195);
                  v231.n128_u64[0] = &v196->n128_u64[1];
                  v231.n128_u64[1] = v196;
                  v232 = v196 + 1;
                  v228 = &v226.n128_i8[8];
                  v229 = &v226;
                  v230 = &v227;
                  v187 = v198;
                }

                while (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF);
                result = v226;
                v198[1].n128_u32[0] = v227;
                *v198 = result;
              }
            }
          }
        }

        while (v183-- > 2);
      }

      return result;
    }

    v10 = (n128_u64 + 24 * (v8 >> 1));
    if (v7 >= 0xC01)
    {
      v218 = v8 >> 1;
      v231.n128_u64[0] = &v10->n128_u64[1];
      v231.n128_u64[1] = a1 + 24 * (v8 >> 1);
      v232 = v10 + 1;
      v228 = (a1 + 8);
      v229 = a1;
      v230 = (a1 + 16);
      v11 = ~std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
      v231.n128_u64[0] = a2 - 16;
      v231.n128_u64[1] = a2 - 24;
      v232 = (a2 - 8);
      v216 = &v10->n128_i8[8];
      v217 = v10 + 1;
      v228 = &v10->n128_i8[8];
      v229 = (a1 + 24 * (v8 >> 1));
      v230 = v10 + 1;
      v12 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
      if (v11)
      {
        v13 = v8 >> 1;
        if (v12 == -1)
        {
          v14 = *v10;
          v232 = v10[1].n128_u64[0];
          v231 = v14;
          v15 = *v221;
          v10[1].n128_u32[0] = *(a2 - 8);
          *v10 = v15;
          v16 = v231;
          *(a2 - 8) = v232;
          *v221 = v16;
          v231.n128_u64[0] = &v10->n128_u64[1];
          v231.n128_u64[1] = v10;
          v232 = v10 + 1;
          v228 = (a1 + 8);
          v229 = a1;
          v230 = (a1 + 16);
          if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
          {
            v17 = *a1;
            v232 = *(a1 + 16);
            v231 = v17;
            v18 = *v10;
            *(a1 + 16) = v10[1].n128_u32[0];
            *a1 = v18;
            v19 = v231;
            v10[1].n128_u32[0] = v232;
            *v10 = v19;
          }
        }
      }

      else if (v12 == -1)
      {
        v40 = *a1;
        v232 = *(a1 + 16);
        v231 = v40;
        v41 = *v221;
        *(a1 + 16) = *(a2 - 8);
        *a1 = v41;
        v42 = v231;
        *(a2 - 8) = v232;
        *v221 = v42;
        v13 = v8 >> 1;
      }

      else
      {
        v28 = *a1;
        v232 = *(a1 + 16);
        v231 = v28;
        v29 = *v10;
        *(a1 + 16) = v10[1].n128_u32[0];
        *a1 = v29;
        v30 = v231;
        v10[1].n128_u32[0] = v232;
        *v10 = v30;
        v231.n128_u64[0] = a2 - 16;
        v231.n128_u64[1] = a2 - 24;
        v232 = (a2 - 8);
        v228 = &v10->n128_i8[8];
        v229 = (a1 + 24 * (v8 >> 1));
        v230 = v10 + 1;
        v13 = v8 >> 1;
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
        {
          v31 = *v10;
          v232 = v10[1].n128_u64[0];
          v231 = v31;
          v32 = *v221;
          v10[1].n128_u32[0] = *(a2 - 8);
          *v10 = v32;
          v33 = v231;
          *(a2 - 8) = v232;
          *v221 = v33;
        }
      }

      v210 = v10;
      v43 = a1 + 24 * v13;
      v44 = (v43 - 24);
      v45 = (v43 - 16);
      v231.n128_u64[0] = v43 - 16;
      v231.n128_u64[1] = v43 - 24;
      v46 = (a1 + 24);
      v47 = (v43 - 8);
      v232 = (v43 - 8);
      v228 = (a1 + 32);
      v229 = (a1 + 24);
      v230 = (a1 + 40);
      v48 = ~std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
      v231.n128_u64[0] = a2 - 40;
      v231.n128_u64[1] = a2 - 48;
      v232 = (a2 - 32);
      v213 = v47;
      v214 = v45;
      v228 = v45;
      v229 = v44;
      v220 = v44;
      v230 = v47;
      v49 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
      if (v48)
      {
        v50 = v218;
        if (v49 == -1)
        {
          v51 = *v44;
          v232 = v44[1].n128_u64[0];
          v231 = v51;
          v52 = *v212;
          v44[1].n128_u32[0] = *(a2 - 32);
          *v44 = v52;
          v53 = v231;
          *(a2 - 32) = v232;
          *v212 = v53;
          v231.n128_u64[0] = v45;
          v231.n128_u64[1] = v44;
          v232 = v47;
          v228 = (a1 + 32);
          v229 = (a1 + 24);
          v230 = (a1 + 40);
          if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
          {
            v231 = *v46;
            v54 = v231;
            v232 = *(a1 + 40);
            v55 = v232;
            v56 = v44[1].n128_u32[0];
            *v46 = *v44;
            *(a1 + 40) = v56;
            v44[1].n128_u32[0] = v55;
            *v44 = v54;
          }
        }
      }

      else if (v49 == -1)
      {
        v231 = *v46;
        v66 = v231;
        v232 = *(a1 + 40);
        v67 = v232;
        v68 = *(a2 - 32);
        *v46 = *v212;
        *(a1 + 40) = v68;
        *(a2 - 32) = v67;
        *v212 = v66;
        v50 = v218;
      }

      else
      {
        v231 = *v46;
        v57 = v231;
        v232 = *(a1 + 40);
        v58 = v232;
        v59 = v44[1].n128_u32[0];
        *v46 = *v44;
        *(a1 + 40) = v59;
        v44[1].n128_u32[0] = v58;
        *v44 = v57;
        v231.n128_u64[0] = a2 - 40;
        v231.n128_u64[1] = a2 - 48;
        v232 = (a2 - 32);
        v228 = v45;
        v229 = v44;
        v230 = v47;
        v50 = v218;
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
        {
          v60 = *v44;
          v232 = v44[1].n128_u64[0];
          v231 = v60;
          v61 = *v212;
          v44[1].n128_u32[0] = *(a2 - 32);
          *v44 = v61;
          v62 = v231;
          *(a2 - 32) = v232;
          *v212 = v62;
        }
      }

      v69 = a1 + 24 * v50;
      v70 = (v69 + 24);
      v71 = (v69 + 32);
      v231.n128_u64[0] = v69 + 32;
      v231.n128_u64[1] = v69 + 24;
      v72 = (a1 + 48);
      v73 = (v69 + 40);
      v232 = (v69 + 40);
      v228 = (a1 + 56);
      v229 = (a1 + 48);
      v230 = (a1 + 64);
      v74 = ~std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
      v231.n128_u64[0] = a2 - 64;
      v231.n128_u64[1] = a2 - 72;
      v232 = (a2 - 56);
      v219 = v71;
      v228 = v71;
      v229 = v70;
      v230 = v73;
      v75 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
      if (v74)
      {
        v76 = v210;
        if (v75 == -1)
        {
          v77 = *v70;
          v232 = v70[1].n128_u64[0];
          v231 = v77;
          v78 = *v211;
          v70[1].n128_u32[0] = *(a2 - 56);
          *v70 = v78;
          v79 = v231;
          *(a2 - 56) = v232;
          *v211 = v79;
          v231.n128_u64[0] = v219;
          v231.n128_u64[1] = v70;
          v232 = v73;
          v228 = (a1 + 56);
          v229 = (a1 + 48);
          v230 = (a1 + 64);
          if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
          {
            v231 = *v72;
            v80 = v231;
            v232 = *(a1 + 64);
            v81 = v232;
            v82 = v70[1].n128_u32[0];
            *v72 = *v70;
            *(a1 + 64) = v82;
            v70[1].n128_u32[0] = v81;
            *v70 = v80;
          }
        }
      }

      else if (v75 == -1)
      {
        v231 = *v72;
        v89 = v231;
        v232 = *(a1 + 64);
        v90 = v232;
        v76 = v210;
        v91 = *(a2 - 56);
        *v72 = *v211;
        *(a1 + 64) = v91;
        *(a2 - 56) = v90;
        *v211 = v89;
      }

      else
      {
        v231 = *v72;
        v83 = v231;
        v232 = *(a1 + 64);
        v84 = v232;
        v85 = v70[1].n128_u32[0];
        *v72 = *v70;
        *(a1 + 64) = v85;
        v70[1].n128_u32[0] = v84;
        *v70 = v83;
        v231.n128_u64[0] = a2 - 64;
        v231.n128_u64[1] = a2 - 72;
        v232 = (a2 - 56);
        v228 = v71;
        v229 = v70;
        v230 = v73;
        v76 = v210;
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
        {
          v86 = *v70;
          v232 = v70[1].n128_u64[0];
          v231 = v86;
          v87 = *v211;
          v70[1].n128_u32[0] = *(a2 - 56);
          *v70 = v87;
          v88 = v231;
          *(a2 - 56) = v232;
          *v211 = v88;
        }
      }

      v231.n128_u64[0] = v216;
      v231.n128_u64[1] = v76;
      v232 = v217;
      v228 = v214;
      v229 = v220;
      v230 = v213;
      v92 = ~std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
      v231.n128_u64[0] = v219;
      v231.n128_u64[1] = v70;
      v232 = v73;
      v228 = v216;
      v229 = v76;
      v230 = v217;
      v93 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
      if (v92)
      {
        if (v93 == -1)
        {
          v94 = *v76;
          v232 = v76[1].n128_u64[0];
          v231 = v94;
          *v76 = *v70;
          v76[1].n128_u32[0] = v70[1].n128_u32[0];
          v95 = v231;
          v70[1].n128_u32[0] = v232;
          *v70 = v95;
          v231.n128_u64[0] = v216;
          v231.n128_u64[1] = v76;
          v232 = v217;
          v228 = v214;
          v229 = v220;
          v230 = v213;
          if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
          {
            v96 = *v220;
            v232 = v220[1].n128_u64[0];
            v231 = v96;
            *v220 = *v76;
            v220[1].n128_u32[0] = v76[1].n128_u32[0];
            v97 = v231;
            v76[1].n128_u32[0] = v232;
            *v76 = v97;
          }
        }

        goto LABEL_54;
      }

      if (v93 == -1)
      {
        v101 = *v220;
        v232 = v220[1].n128_u64[0];
        v231 = v101;
        *v220 = *v70;
        v220[1].n128_u32[0] = v70[1].n128_u32[0];
LABEL_53:
        v102 = v231;
        v70[1].n128_u32[0] = v232;
        *v70 = v102;
      }

      else
      {
        v98 = *v220;
        v232 = v220[1].n128_u64[0];
        v231 = v98;
        *v220 = *v76;
        v220[1].n128_u32[0] = v76[1].n128_u32[0];
        v99 = v231;
        v76[1].n128_u32[0] = v232;
        *v76 = v99;
        v231.n128_u64[0] = v219;
        v231.n128_u64[1] = v70;
        v232 = v73;
        v228 = v216;
        v229 = v76;
        v230 = v217;
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
        {
          v100 = *v76;
          v232 = v76[1].n128_u64[0];
          v231 = v100;
          *v76 = *v70;
          v76[1].n128_u32[0] = v70[1].n128_u32[0];
          goto LABEL_53;
        }
      }

LABEL_54:
      v103 = *a1;
      v232 = *(a1 + 16);
      v231 = v103;
      v104 = *v76;
      *(a1 + 16) = v76[1].n128_u32[0];
      *a1 = v104;
      v105 = v231;
      v76[1].n128_u32[0] = v232;
      *v76 = v105;
      goto LABEL_55;
    }

    v231.n128_u64[0] = a1 + 8;
    v231.n128_u64[1] = a1;
    v232 = (a1 + 16);
    v228 = &v10->n128_i8[8];
    v229 = v10;
    v230 = v10 + 1;
    v20 = ~std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
    v231.n128_u64[0] = a2 - 16;
    v231.n128_u64[1] = a2 - 24;
    v232 = (a2 - 8);
    v228 = (a1 + 8);
    v229 = a1;
    v230 = (a1 + 16);
    v21 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
    if (v20)
    {
      if (v21 == -1)
      {
        v22 = *a1;
        v232 = *(a1 + 16);
        v231 = v22;
        v23 = *v221;
        *(a1 + 16) = *(a2 - 8);
        *a1 = v23;
        v24 = v231;
        *(a2 - 8) = v232;
        *v221 = v24;
        v231.n128_u64[0] = a1 + 8;
        v231.n128_u64[1] = a1;
        v232 = (a1 + 16);
        v228 = &v10->n128_i8[8];
        v229 = v10;
        v230 = v10 + 1;
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
        {
          v25 = *v10;
          v232 = v10[1].n128_u64[0];
          v231 = v25;
          v26 = *a1;
          v10[1].n128_u32[0] = *(a1 + 16);
          *v10 = v26;
          v27 = v231;
          *(a1 + 16) = v232;
          *a1 = v27;
        }
      }

      goto LABEL_55;
    }

    if (v21 == -1)
    {
      v63 = *v10;
      v232 = v10[1].n128_u64[0];
      v231 = v63;
      v38 = a2 - 24;
      v64 = *v221;
      v10[1].n128_u32[0] = *(a2 - 8);
      *v10 = v64;
    }

    else
    {
      v34 = *v10;
      v232 = v10[1].n128_u64[0];
      v231 = v34;
      v35 = *a1;
      v10[1].n128_u32[0] = *(a1 + 16);
      *v10 = v35;
      v36 = v231;
      *(a1 + 16) = v232;
      *a1 = v36;
      v231.n128_u64[0] = a2 - 16;
      v231.n128_u64[1] = a2 - 24;
      v232 = (a2 - 8);
      v228 = (a1 + 8);
      v229 = a1;
      v230 = (a1 + 16);
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF)
      {
        goto LABEL_55;
      }

      v37 = *a1;
      v232 = *(a1 + 16);
      v231 = v37;
      v38 = a2 - 24;
      v39 = *v221;
      *(a1 + 16) = *(a2 - 8);
      *a1 = v39;
    }

    v65 = v231;
    *(v38 + 16) = v232;
    *v38 = v65;
LABEL_55:
    --a3;
    if ((a4 & 1) != 0 || (v231.n128_u64[0] = a1 - 16, v231.n128_u64[1] = a1 - 24, v232 = (a1 - 8), v228 = (a1 + 8), v229 = a1, v230 = (a1 + 16), std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF))
    {
      v106 = 0;
      v107 = *a1;
      v227 = *(a1 + 16);
      v226 = v107;
      do
      {
        v231.n128_u64[0] = a1 + v106 + 32;
        v231.n128_u64[1] = a1 + v106 + 24;
        v232 = (a1 + v106 + 40);
        v228 = &v226.n128_i8[8];
        v229 = &v226;
        v230 = &v227;
        v106 += 24;
      }

      while (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF);
      v108 = a1 + v106;
      v109 = a2;
      if (v106 == 24)
      {
        v112 = a2;
        while (v108 < v112)
        {
          v110 = v112 - 24;
          v231.n128_u64[0] = v112 - 16;
          v231.n128_u64[1] = v112 - 24;
          v232 = (v112 - 8);
          v228 = &v226.n128_i8[8];
          v229 = &v226;
          v230 = &v227;
          v113 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
          v112 = v110;
          if (v113 == -1)
          {
            goto LABEL_67;
          }
        }

        v110 = v112;
      }

      else
      {
        do
        {
          v110 = v109 - 24;
          v231.n128_u64[0] = v109 - 16;
          v231.n128_u64[1] = v109 - 24;
          v232 = (v109 - 8);
          v228 = &v226.n128_i8[8];
          v229 = &v226;
          v230 = &v227;
          v111 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
          v109 = v110;
        }

        while (v111 != -1);
      }

LABEL_67:
      if (v108 >= v110)
      {
        v123 = v108 - 24;
      }

      else
      {
        v114 = v108;
        v115 = v110;
        do
        {
          v116 = *v114;
          v232 = *(v114 + 16);
          v231 = v116;
          v117 = *v115;
          *(v114 + 16) = *(v115 + 16);
          *v114 = v117;
          v118 = v231;
          *(v115 + 16) = v232;
          *v115 = v118;
          do
          {
            v119 = v114 + 32;
            v120 = (v114 + 40);
            v114 += 24;
            v231.n128_u64[0] = v119;
            v231.n128_u64[1] = v114;
            v232 = v120;
            v228 = &v226.n128_i8[8];
            v229 = &v226;
            v230 = &v227;
          }

          while (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF);
          do
          {
            v121 = v115 - 16;
            v122 = (v115 - 8);
            v115 -= 24;
            v231.n128_u64[0] = v121;
            v231.n128_u64[1] = v115;
            v232 = v122;
            v228 = &v226.n128_i8[8];
            v229 = &v226;
            v230 = &v227;
          }

          while (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF);
        }

        while (v114 < v115);
        v123 = v114 - 24;
      }

      if (v123 != a1)
      {
        v124 = *v123;
        *(a1 + 16) = *(v123 + 16);
        *a1 = v124;
      }

      v125 = v226;
      *(v123 + 16) = v227;
      *v123 = v125;
      v126 = v108 >= v110;
      v5 = a2;
      if (!v126)
      {
        goto LABEL_81;
      }

      v127 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(a1, v123);
      n128_u64 = v123 + 24;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(v123 + 24, a2))
      {
        a2 = v123;
        if (!v127)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v127)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,false>(a1, v123, a3, a4 & 1);
        a4 = 0;
        n128_u64 = v123 + 24;
      }
    }

    else
    {
      v128 = *(a1 + 16);
      v226 = *a1;
      v231.n128_u64[0] = &v226.n128_u64[1];
      v231.n128_u64[1] = &v226;
      v232 = &v227;
      v227 = v128;
      v228 = (a2 - 16);
      v229 = (a2 - 24);
      v230 = (a2 - 8);
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
      {
        v130 = a1;
        v5 = a2;
        do
        {
          n128_u64 = v130 + 24;
          v231.n128_u64[0] = &v226.n128_u64[1];
          v231.n128_u64[1] = &v226;
          v232 = &v227;
          v228 = (v130 + 32);
          v229 = (v130 + 24);
          v230 = (v130 + 40);
          v131 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
          v130 = n128_u64;
        }

        while (v131 != -1);
      }

      else
      {
        v129 = (a1 + 40);
        v5 = a2;
        do
        {
          n128_u64 = v129[-1].n128_u64;
          if (v129[-1].n128_u64 >= a2)
          {
            break;
          }

          v231.n128_u64[0] = &v226.n128_u64[1];
          v231.n128_u64[1] = &v226;
          v232 = &v227;
          v228 = &v129[-1].n128_i8[8];
          v229 = v129 - 1;
          v230 = v129;
          v129 = (v129 + 24);
        }

        while (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF);
      }

      v132 = v5;
      if (n128_u64 < v5)
      {
        v133 = v5;
        do
        {
          v132 = (v133 - 24);
          v231.n128_u64[0] = &v226.n128_u64[1];
          v231.n128_u64[1] = &v226;
          v232 = &v227;
          v228 = (v133 - 16);
          v229 = (v133 - 24);
          v230 = (v133 - 8);
          v134 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
          v133 = v132;
        }

        while (v134 == -1);
      }

      while (n128_u64 < v132)
      {
        v135 = *n128_u64;
        v232 = *(n128_u64 + 16);
        v231 = v135;
        v136 = *v132;
        *(n128_u64 + 16) = v132[1].n128_u32[0];
        *n128_u64 = v136;
        v137 = v231;
        v132[1].n128_u32[0] = v232;
        *v132 = v137;
        do
        {
          v231.n128_u64[0] = &v226.n128_u64[1];
          v231.n128_u64[1] = &v226;
          v138 = (n128_u64 + 32);
          v139 = (n128_u64 + 40);
          n128_u64 += 24;
          v232 = &v227;
          v228 = v138;
          v229 = n128_u64;
          v230 = v139;
        }

        while (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF);
        do
        {
          v231.n128_u64[0] = &v226.n128_u64[1];
          v231.n128_u64[1] = &v226;
          v140 = v132 - 1;
          v141 = &v132[-1].n128_u64[1];
          v132 = (v132 - 24);
          v232 = &v227;
          v228 = v140;
          v229 = v132;
          v230 = v141;
        }

        while (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF);
      }

      v142 = (n128_u64 - 24);
      if (n128_u64 - 24 != a1)
      {
        v143 = *v142;
        *(a1 + 16) = *(n128_u64 - 8);
        *a1 = v143;
      }

      a4 = 0;
      result = v226;
      *(n128_u64 - 8) = v227;
      *v142 = result;
    }
  }

  if (v8 != 3)
  {
    if (v8 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(n128_u64, (n128_u64 + 24), (n128_u64 + 48), v221).n128_u64[0];
      return result;
    }

    if (v8 == 5)
    {
      v144 = (n128_u64 + 24);
      v145 = (n128_u64 + 48);
      v146 = (n128_u64 + 72);
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(n128_u64, (n128_u64 + 24), (n128_u64 + 48), (n128_u64 + 72));
      v231.n128_u64[0] = a2 - 16;
      v231.n128_u64[1] = a2 - 24;
      v232 = (a2 - 8);
      v228 = (n128_u64 + 80);
      v229 = (n128_u64 + 72);
      v230 = (n128_u64 + 88);
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF)
      {
        return result;
      }

      v231 = *v146;
      v147 = v231;
      v232 = *(n128_u64 + 88);
      v148 = v232;
      v149 = *(a2 - 8);
      *v146 = *v221;
      *(n128_u64 + 88) = v149;
      *(a2 - 8) = v148;
      *v221 = v147;
      v231.n128_u64[0] = n128_u64 + 80;
      v231.n128_u64[1] = n128_u64 + 72;
      v232 = (n128_u64 + 88);
      v228 = (n128_u64 + 56);
      v229 = (n128_u64 + 48);
      v230 = (n128_u64 + 64);
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF)
      {
        return result;
      }

      v150 = *(n128_u64 + 64);
      v151 = *v145;
      *v145 = *v146;
      *(n128_u64 + 64) = *(n128_u64 + 88);
      *v146 = v151;
      *(n128_u64 + 88) = v150;
      v231.n128_u64[0] = n128_u64 + 56;
      v231.n128_u64[1] = n128_u64 + 48;
      v232 = (n128_u64 + 64);
      v228 = (n128_u64 + 32);
      v229 = (n128_u64 + 24);
      v230 = (n128_u64 + 40);
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF)
      {
        return result;
      }

      v152 = *(n128_u64 + 40);
      v153 = *v144;
      *v144 = *v145;
      *(n128_u64 + 40) = *(n128_u64 + 64);
      *v145 = v153;
      *(n128_u64 + 64) = v152;
      if (!outlierScore::operator<(n128_u64 + 24, n128_u64))
      {
        return result;
      }

      goto LABEL_112;
    }

    goto LABEL_9;
  }

  v144 = (n128_u64 + 24);
  v231.n128_u64[0] = n128_u64 + 32;
  v231.n128_u64[1] = n128_u64 + 24;
  v232 = (n128_u64 + 40);
  v228 = (n128_u64 + 8);
  v229 = n128_u64;
  v230 = (n128_u64 + 16);
  v156 = ~std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
  v231.n128_u64[0] = a2 - 16;
  v231.n128_u64[1] = a2 - 24;
  v232 = (a2 - 8);
  v228 = (n128_u64 + 32);
  v229 = (n128_u64 + 24);
  v230 = (n128_u64 + 40);
  v157 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228);
  if (v156)
  {
    if (v157 != -1)
    {
      return result;
    }

    v231 = *v144;
    v158 = v231;
    v232 = *(n128_u64 + 40);
    v159 = v232;
    v160 = *(a2 - 8);
    *v144 = *v221;
    *(n128_u64 + 40) = v160;
    *(a2 - 8) = v159;
    *v221 = v158;
    v231.n128_u64[0] = n128_u64 + 32;
    v231.n128_u64[1] = n128_u64 + 24;
    v232 = (n128_u64 + 40);
    v228 = (n128_u64 + 8);
    v229 = n128_u64;
    v230 = (n128_u64 + 16);
    if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) != 0xFF)
    {
      return result;
    }

LABEL_112:
    result = *n128_u64;
    v232 = *(n128_u64 + 16);
    v231 = result;
    *n128_u64 = *v144;
    *(n128_u64 + 16) = v144[1].n128_u32[0];
    result.n128_u64[0] = v231.n128_u64[0];
    *v144 = v231;
    v144[1].n128_u32[0] = v232;
    return result;
  }

  if (v157 == -1)
  {
    goto LABEL_177;
  }

  v205 = *n128_u64;
  v232 = *(n128_u64 + 16);
  v231 = v205;
  *n128_u64 = *v144;
  *(n128_u64 + 16) = *(n128_u64 + 40);
  *v144 = v231;
  *(n128_u64 + 40) = v232;
  v231.n128_u64[0] = a2 - 16;
  v231.n128_u64[1] = a2 - 24;
  v232 = (a2 - 8);
  v228 = (n128_u64 + 32);
  v229 = (n128_u64 + 24);
  v230 = (n128_u64 + 40);
  if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v231, &v228) == 0xFF)
  {
    v231 = *v144;
    result = v231;
    v232 = *(n128_u64 + 40);
    v206 = v232;
    v207 = *(a2 - 8);
    *v144 = *v221;
    *(n128_u64 + 40) = v207;
    *(a2 - 8) = v206;
    *v221 = result;
  }

  return result;
}