uint64_t _SFPBImageOptionReadFrom(void *a1, void *a2)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(_SFPBStringDictionary);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBStringDictionaryReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setOptions:v14];
        goto LABEL_25;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        [a1 setName:v14];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    [a1 setDefaultValue:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBDynamicURLImageResourceReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(_SFPBGraphicalFloat);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v21, a2))
          {
LABEL_51:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setPixelWidth:v21];
          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_SFPBGraphicalFloat);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v21, a2))
          {
            goto LABEL_51;
          }

          PBReaderRecallMark();
          [a1 setPixelHeight:v21];
          goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            [a1 setFormatURL:v21];
LABEL_43:

            goto LABEL_48;
          case 5:
            v21 = objc_alloc_init(_SFPBImageOption);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageOptionReadFrom(v21, a2))
            {
              goto LABEL_51;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addImageOptions:v21];
            }

            goto LABEL_43;
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
                goto LABEL_47;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_47:
            [a1 setSupportsResizing:v20];
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

uint64_t _SFPBSpotlightEmbeddingStateReadFrom(void *a1, void *a2)
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
        v40 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v40 & 0x7F) << v29;
        if ((v40 & 0x80) == 0)
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
      [a1 setEmbeddedPhotosAssetsCount:v35];
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
      [a1 setTotalPhotosAssetsCount:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v38 = 0;
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
      [a1 setEmbeddedPhotosAssetsPercentage:v21];
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

uint64_t _SFPBEmbeddingStateReadFrom(void *a1, void *a2)
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
        LOBYTE(v73[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73[0] & 0x7F) << v5;
        if ((v73[0] & 0x80) == 0)
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
        switch(v13)
        {
          case 7:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
              v59 = [a2 position] + 1;
              if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
              {
                v61 = [a2 data];
                [v61 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v58 |= (v73[0] & 0x7F) << v56;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v11 = v57++ >= 9;
              if (v11)
              {
                v62 = 0;
                goto LABEL_119;
              }
            }

            v62 = (v58 != 0) & ~[a2 hasError];
LABEL_119:
            [a1 setHasKeywordResults:v62];
            goto LABEL_124;
          case 8:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v73[0] & 0x7F) << v64;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v70 = 0;
                goto LABEL_123;
              }
            }

            v70 = (v66 != 0) & ~[a2 hasError];
LABEL_123:
            [a1 setHasHybridResults:v70];
            goto LABEL_124;
          case 9:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v73[0] & 0x7F) << v14;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_121;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_121:
            [a1 setHasMetadataResults:v20];
            goto LABEL_124;
        }

        goto LABEL_104;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v73[0] & 0x7F) << v35;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v41 = 0;
              goto LABEL_111;
            }
          }

          v41 = (v37 != 0) & ~[a2 hasError];
LABEL_111:
          [a1 setHasSuppressedResults:v41];
          goto LABEL_124;
        }

        goto LABEL_104;
      }

      v63 = objc_alloc_init(_SFPBSpotlightEmbeddingState);
      v73[0] = 0;
      v73[1] = 0;
      if (!PBReaderPlaceMark() || !_SFPBSpotlightEmbeddingStateReadFrom(v63, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setSpotlightEmbeddingState:v63];

LABEL_124:
      v71 = [a2 position];
      if (v71 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v73[0] & 0x7F) << v49;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v55 = 0;
            goto LABEL_117;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_117:
        [a1 setHasEmbeddingResults:v55];
        goto LABEL_124;
      }

      if (v13 == 4)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v73[0] & 0x7F) << v28;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_109;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_109:
        [a1 setHasResults:v34];
        goto LABEL_124;
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
          LOBYTE(v73[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v73[0] & 0x7F) << v42;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_115;
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

LABEL_115:
        [a1 setQueryStatus:v48];
        goto LABEL_124;
      }

      if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v73[0] & 0x7F) << v21;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_107;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_107:
        [a1 setHasQueryEmbedding:v27];
        goto LABEL_124;
      }
    }

LABEL_104:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_124;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBEngagementSignalReadFrom(void *a1, void *a2)
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
        LOBYTE(v46[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46[0] & 0x7F) << v5;
        if ((v46[0] & 0x80) == 0)
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

      if (v13 == 4)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          LOBYTE(v46[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v46[0] & 0x7F) << v31;
          if ((v46[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_71;
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

LABEL_71:
        [a1 setServerScoreConfidence:v37];
        goto LABEL_80;
      }

      if (v13 != 6)
      {
        if (v13 == 5)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v46[0]) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v46[0] & 0x7F) << v17;
            if ((v46[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_75;
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

LABEL_75:
          [a1 setLocalScoreConfidence:v23];
          goto LABEL_80;
        }

LABEL_54:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      }

      v41 = objc_alloc_init(_SFPBDomainEngagementScore);
      v46[0] = 0;
      v46[1] = 0;
      if (!PBReaderPlaceMark() || !_SFPBDomainEngagementScoreReadFrom(v41, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      if (v41)
      {
        [a1 addDomainEngagementScores:v41];
      }

LABEL_80:
      v44 = [a2 position];
      if (v44 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          LOBYTE(v46[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v46[0] & 0x7F) << v24;
          if ((v46[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_67;
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

LABEL_67:
        [a1 setVersion:v30];
        goto LABEL_80;
      case 2:
        LODWORD(v46[0]) = 0;
        v38 = [a2 position] + 4;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 4, v39 <= objc_msgSend(a2, "length")))
        {
          v43 = [a2 data];
          [v43 getBytes:v46 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v40) = v46[0];
        [a1 setServerScore:v40];
        goto LABEL_80;
      case 3:
        LODWORD(v46[0]) = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:v46 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v16) = v46[0];
        [a1 setLocalScore:v16];
        goto LABEL_80;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBHashBucketDetail_HashDetailReadFrom(void *a1, void *a2)
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
    if ((v13 >> 3) <= 2)
    {
      if (v14 == 1)
      {
        v36 = PBReaderReadString();
        [a1 setFull_hash:v36];
        goto LABEL_53;
      }

      if (v14 == 2)
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
            goto LABEL_63;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_63:
        [a1 setHas_summary:v28];
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
            v39 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v39 & 0x7F) << v29;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_59;
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

LABEL_59:
          [a1 addSba_entity_types:v35];
          continue;
        case 5:
          v36 = PBReaderReadString();
          [a1 setMatched_url_variant:v36];
LABEL_53:

          continue;
        case 4:
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

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_61:
          [a1 setHas_table_of_contents:v21];
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

uint64_t _SFPBHashBucketDetailReadFrom(void *a1, void *a2)
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
        v13 = PBReaderReadString();
        [a1 setHash_prefix:v13];
LABEL_24:

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

    v13 = objc_alloc_init(_SFPBHashBucketDetail_HashDetail);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_SFPBHashBucketDetail_HashDetailReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addHash_details:v13];
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBIndexStateReadFrom(void *a1, void *a2)
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
            v72 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v72 & 0x7F) << v36;
            if ((v72 & 0x80) == 0)
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
          [a1 setPercentMessagesIndexed:v42];
          continue;
        case 2:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          while (1)
          {
            v71 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v71 & 0x7F) << v58;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v12 = v59++ >= 9;
            if (v12)
            {
              v64 = 0;
              goto LABEL_119;
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

LABEL_119:
          [a1 setPercentAttachmentsIndexed:v64];
          continue;
        case 3:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v70 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v70 & 0x7F) << v22;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_115;
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

LABEL_115:
          [a1 setSearchIndex:v28];
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
          v67 = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v67 & 0x7F) << v51;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            v57 = 0;
            goto LABEL_103;
          }
        }

        if ([a2 hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }

LABEL_103:
        [a1 setEmbeddedMessageCount:v57];
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
            goto LABEL_111;
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

LABEL_111:
        [a1 setEmbeddedMessagePercentage:v35];
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
          v69 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v69 & 0x7F) << v44;
          if ((v69 & 0x80) == 0)
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
        [a1 setTotalMessageCount:v50];
        continue;
      }

      if (v14 == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v68 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v68 & 0x7F) << v15;
          if ((v68 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_107;
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

LABEL_107:
        [a1 setIndexedMessageCount:v21];
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

uint64_t _SFPBLocationTypeInfoReadFrom(void *a1, void *a2)
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

    if ((v13 >> 3) == 10)
    {
      v14 = PBReaderReadString();
      [a1 setAddress:v14];
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

uint64_t _SFPBMailRankingSignalsReadFrom(void *a1, void *a2)
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
      LOBYTE(v493) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v493 & 0x7F) << v6;
      if ((v493 & 0x80) == 0)
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
          LOBYTE(v493) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v493 & 0x7F) << v14;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_748:
            [a1 setWasReorderedByRecency:v20];
            goto LABEL_889;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
        goto LABEL_748;
      case 2u:
        v247 = 0;
        v248 = 0;
        v249 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v250 = [a2 position] + 1;
          if (v250 >= [a2 position] && (v251 = objc_msgSend(a2, "position") + 1, v251 <= objc_msgSend(a2, "length")))
          {
            v252 = [a2 data];
            [v252 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v249 |= (v493 & 0x7F) << v247;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v247 += 7;
          v12 = v248++ >= 9;
          if (v12)
          {
            v253 = 0;
            goto LABEL_752;
          }
        }

        if ([a2 hasError])
        {
          v253 = 0;
        }

        else
        {
          v253 = v249;
        }

LABEL_752:
        [a1 setNumEngagements:v253];
        continue;
      case 3u:
        v216 = 0;
        v217 = 0;
        v218 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v219 = [a2 position] + 1;
          if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
          {
            v221 = [a2 data];
            [v221 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v218 |= (v493 & 0x7F) << v216;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v216 += 7;
          v12 = v217++ >= 9;
          if (v12)
          {
            v222 = 0;
            goto LABEL_734;
          }
        }

        if ([a2 hasError])
        {
          v222 = 0;
        }

        else
        {
          v222 = v218;
        }

LABEL_734:
        [a1 setNumDaysEngagedLast30Days:v222];
        continue;
      case 4u:
        v233 = 0;
        v234 = 0;
        v235 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v236 = [a2 position] + 1;
          if (v236 >= [a2 position] && (v237 = objc_msgSend(a2, "position") + 1, v237 <= objc_msgSend(a2, "length")))
          {
            v238 = [a2 data];
            [v238 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v235 |= (v493 & 0x7F) << v233;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v12 = v234++ >= 9;
          if (v12)
          {
            v239 = 0;
            goto LABEL_742;
          }
        }

        if ([a2 hasError])
        {
          v239 = 0;
        }

        else
        {
          v239 = v235;
        }

LABEL_742:
        [a1 setAverageEngagementAgeLast7Days:v239];
        continue;
      case 5u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v493 & 0x7F) << v164;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            v170 = 0;
            goto LABEL_708;
          }
        }

        if ([a2 hasError])
        {
          v170 = 0;
        }

        else
        {
          v170 = v166;
        }

LABEL_708:
        [a1 setAverageEngagementAgeLast14Days:v170];
        continue;
      case 6u:
        v289 = 0;
        v290 = 0;
        v291 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v292 = [a2 position] + 1;
          if (v292 >= [a2 position] && (v293 = objc_msgSend(a2, "position") + 1, v293 <= objc_msgSend(a2, "length")))
          {
            v294 = [a2 data];
            [v294 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v291 |= (v493 & 0x7F) << v289;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v289 += 7;
          v12 = v290++ >= 9;
          if (v12)
          {
            v295 = 0;
            goto LABEL_776;
          }
        }

        if ([a2 hasError])
        {
          v295 = 0;
        }

        else
        {
          v295 = v291;
        }

LABEL_776:
        [a1 setAverageEngagementAgeLast21Days:v295];
        continue;
      case 7u:
        v324 = 0;
        v325 = 0;
        v326 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v327 = [a2 position] + 1;
          if (v327 >= [a2 position] && (v328 = objc_msgSend(a2, "position") + 1, v328 <= objc_msgSend(a2, "length")))
          {
            v329 = [a2 data];
            [v329 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v326 |= (v493 & 0x7F) << v324;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v324 += 7;
          v12 = v325++ >= 9;
          if (v12)
          {
            v330 = 0;
            goto LABEL_794;
          }
        }

        if ([a2 hasError])
        {
          v330 = 0;
        }

        else
        {
          v330 = v326;
        }

LABEL_794:
        [a1 setAverageEngagementAgeLast30Days:v330];
        continue;
      case 8u:
        v240 = 0;
        v241 = 0;
        v242 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v243 = [a2 position] + 1;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 1, v244 <= objc_msgSend(a2, "length")))
          {
            v245 = [a2 data];
            [v245 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v242 |= (v493 & 0x7F) << v240;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v240 += 7;
          v12 = v241++ >= 9;
          if (v12)
          {
            v246 = 0;
            goto LABEL_746;
          }
        }

        if ([a2 hasError])
        {
          v246 = 0;
        }

        else
        {
          v246 = v242;
        }

LABEL_746:
        [a1 setDaysSinceReceipt:v246];
        continue;
      case 9u:
        v493 = 0;
        v345 = [a2 position] + 4;
        if (v345 >= [a2 position] && (v346 = objc_msgSend(a2, "position") + 4, v346 <= objc_msgSend(a2, "length")))
        {
          v492 = [a2 data];
          [v492 getBytes:&v493 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v347) = v493;
        [a1 setL1Score:v347];
        continue;
      case 0xAu:
        v493 = 0;
        v199 = [a2 position] + 4;
        if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 4, v200 <= objc_msgSend(a2, "length")))
        {
          v490 = [a2 data];
          [v490 getBytes:&v493 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v201) = v493;
        [a1 setL2Score:v201];
        continue;
      case 0xBu:
        v338 = 0;
        v339 = 0;
        v340 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v341 = [a2 position] + 1;
          if (v341 >= [a2 position] && (v342 = objc_msgSend(a2, "position") + 1, v342 <= objc_msgSend(a2, "length")))
          {
            v343 = [a2 data];
            [v343 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v340 |= (v493 & 0x7F) << v338;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v338 += 7;
          v12 = v339++ >= 9;
          if (v12)
          {
            v344 = 0;
            goto LABEL_800;
          }
        }

        v344 = (v340 != 0) & ~[a2 hasError];
LABEL_800:
        [a1 setIsFlagged:v344];
        continue;
      case 0xCu:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v153 = [a2 position] + 1;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 1, v154 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v152 |= (v493 & 0x7F) << v150;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v150 += 7;
          v12 = v151++ >= 9;
          if (v12)
          {
            v156 = 0;
            goto LABEL_700;
          }
        }

        v156 = (v152 != 0) & ~[a2 hasError];
LABEL_700:
        [a1 setIsRepliedTo:v156];
        continue;
      case 0xDu:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v195 = [a2 position] + 1;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
          {
            v197 = [a2 data];
            [v197 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v194 |= (v493 & 0x7F) << v192;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v192 += 7;
          v12 = v193++ >= 9;
          if (v12)
          {
            v198 = 0;
            goto LABEL_722;
          }
        }

        v198 = (v194 != 0) & ~[a2 hasError];
LABEL_722:
        [a1 setIsSemanticMatch:v198];
        continue;
      case 0xEu:
        v317 = 0;
        v318 = 0;
        v319 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v320 = [a2 position] + 1;
          if (v320 >= [a2 position] && (v321 = objc_msgSend(a2, "position") + 1, v321 <= objc_msgSend(a2, "length")))
          {
            v322 = [a2 data];
            [v322 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v319 |= (v493 & 0x7F) << v317;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v317 += 7;
          v12 = v318++ >= 9;
          if (v12)
          {
            v323 = 0;
            goto LABEL_790;
          }
        }

        v323 = (v319 != 0) & ~[a2 hasError];
LABEL_790:
        [a1 setIsSyntacticMatch:v323];
        continue;
      case 0xFu:
        v493 = 0;
        v126 = [a2 position] + 4;
        if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 4, v127 <= objc_msgSend(a2, "length")))
        {
          v489 = [a2 data];
          [v489 getBytes:&v493 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v128) = v493;
        [a1 setSemanticScore:v128];
        continue;
      case 0x10u:
        v493 = 0;
        v223 = [a2 position] + 4;
        if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 4, v224 <= objc_msgSend(a2, "length")))
        {
          v491 = [a2 data];
          [v491 getBytes:&v493 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v225) = v493;
        [a1 setSyntacticScore:v225];
        continue;
      case 0x11u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v493 & 0x7F) << v105;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_678;
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

LABEL_678:
        [a1 setCountUnigramMatchInAuthors:v111];
        continue;
      case 0x12u:
        v261 = 0;
        v262 = 0;
        v263 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v264 = [a2 position] + 1;
          if (v264 >= [a2 position] && (v265 = objc_msgSend(a2, "position") + 1, v265 <= objc_msgSend(a2, "length")))
          {
            v266 = [a2 data];
            [v266 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v263 |= (v493 & 0x7F) << v261;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v261 += 7;
          v12 = v262++ >= 9;
          if (v12)
          {
            v267 = 0;
            goto LABEL_760;
          }
        }

        if ([a2 hasError])
        {
          v267 = 0;
        }

        else
        {
          v267 = v263;
        }

LABEL_760:
        [a1 setCountBigramMatchInAuthors:v267];
        continue;
      case 0x13u:
        v331 = 0;
        v332 = 0;
        v333 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v334 = [a2 position] + 1;
          if (v334 >= [a2 position] && (v335 = objc_msgSend(a2, "position") + 1, v335 <= objc_msgSend(a2, "length")))
          {
            v336 = [a2 data];
            [v336 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v333 |= (v493 & 0x7F) << v331;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v331 += 7;
          v12 = v332++ >= 9;
          if (v12)
          {
            v337 = 0;
            goto LABEL_798;
          }
        }

        if ([a2 hasError])
        {
          v337 = 0;
        }

        else
        {
          v337 = v333;
        }

LABEL_798:
        [a1 setCountNgramMatchInAuthors:v337];
        continue;
      case 0x14u:
        v383 = 0;
        v384 = 0;
        v385 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v386 = [a2 position] + 1;
          if (v386 >= [a2 position] && (v387 = objc_msgSend(a2, "position") + 1, v387 <= objc_msgSend(a2, "length")))
          {
            v388 = [a2 data];
            [v388 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v385 |= (v493 & 0x7F) << v383;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v383 += 7;
          v12 = v384++ >= 9;
          if (v12)
          {
            v389 = 0;
            goto LABEL_824;
          }
        }

        if ([a2 hasError])
        {
          v389 = 0;
        }

        else
        {
          v389 = v385;
        }

LABEL_824:
        [a1 setCountUnigramPrefixMatchInAuthors:v389];
        continue;
      case 0x15u:
        v275 = 0;
        v276 = 0;
        v277 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v278 = [a2 position] + 1;
          if (v278 >= [a2 position] && (v279 = objc_msgSend(a2, "position") + 1, v279 <= objc_msgSend(a2, "length")))
          {
            v280 = [a2 data];
            [v280 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v277 |= (v493 & 0x7F) << v275;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v275 += 7;
          v12 = v276++ >= 9;
          if (v12)
          {
            v281 = 0;
            goto LABEL_768;
          }
        }

        if ([a2 hasError])
        {
          v281 = 0;
        }

        else
        {
          v281 = v277;
        }

LABEL_768:
        [a1 setCountBigramPrefixMatchInAuthors:v281];
        continue;
      case 0x16u:
        v310 = 0;
        v311 = 0;
        v312 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v313 = [a2 position] + 1;
          if (v313 >= [a2 position] && (v314 = objc_msgSend(a2, "position") + 1, v314 <= objc_msgSend(a2, "length")))
          {
            v315 = [a2 data];
            [v315 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v312 |= (v493 & 0x7F) << v310;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v310 += 7;
          v12 = v311++ >= 9;
          if (v12)
          {
            v316 = 0;
            goto LABEL_788;
          }
        }

        if ([a2 hasError])
        {
          v316 = 0;
        }

        else
        {
          v316 = v312;
        }

LABEL_788:
        [a1 setCountNgramPrefixMatchInAuthors:v316];
        continue;
      case 0x17u:
        v369 = 0;
        v370 = 0;
        v371 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v372 = [a2 position] + 1;
          if (v372 >= [a2 position] && (v373 = objc_msgSend(a2, "position") + 1, v373 <= objc_msgSend(a2, "length")))
          {
            v374 = [a2 data];
            [v374 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v371 |= (v493 & 0x7F) << v369;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v369 += 7;
          v12 = v370++ >= 9;
          if (v12)
          {
            v375 = 0;
            goto LABEL_816;
          }
        }

        if ([a2 hasError])
        {
          v375 = 0;
        }

        else
        {
          v375 = v371;
        }

LABEL_816:
        [a1 setCountUnigramMatchInAuthorEmailAddresses:v375];
        continue;
      case 0x18u:
        v411 = 0;
        v412 = 0;
        v413 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v414 = [a2 position] + 1;
          if (v414 >= [a2 position] && (v415 = objc_msgSend(a2, "position") + 1, v415 <= objc_msgSend(a2, "length")))
          {
            v416 = [a2 data];
            [v416 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v413 |= (v493 & 0x7F) << v411;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v411 += 7;
          v12 = v412++ >= 9;
          if (v12)
          {
            v417 = 0;
            goto LABEL_840;
          }
        }

        if ([a2 hasError])
        {
          v417 = 0;
        }

        else
        {
          v417 = v413;
        }

LABEL_840:
        [a1 setCountBigramMatchInAuthorEmailAddresses:v417];
        continue;
      case 0x19u:
        v209 = 0;
        v210 = 0;
        v211 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v212 = [a2 position] + 1;
          if (v212 >= [a2 position] && (v213 = objc_msgSend(a2, "position") + 1, v213 <= objc_msgSend(a2, "length")))
          {
            v214 = [a2 data];
            [v214 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v211 |= (v493 & 0x7F) << v209;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v12 = v210++ >= 9;
          if (v12)
          {
            v215 = 0;
            goto LABEL_730;
          }
        }

        if ([a2 hasError])
        {
          v215 = 0;
        }

        else
        {
          v215 = v211;
        }

LABEL_730:
        [a1 setCountNgramMatchInAuthorEmailAddresses:v215];
        continue;
      case 0x1Au:
        v202 = 0;
        v203 = 0;
        v204 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v205 = [a2 position] + 1;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
          {
            v207 = [a2 data];
            [v207 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v204 |= (v493 & 0x7F) << v202;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v202 += 7;
          v12 = v203++ >= 9;
          if (v12)
          {
            v208 = 0;
            goto LABEL_726;
          }
        }

        if ([a2 hasError])
        {
          v208 = 0;
        }

        else
        {
          v208 = v204;
        }

LABEL_726:
        [a1 setCountUnigramPrefixMatchInAuthorEmailAddresses:v208];
        continue;
      case 0x1Bu:
        v439 = 0;
        v440 = 0;
        v441 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v442 = [a2 position] + 1;
          if (v442 >= [a2 position] && (v443 = objc_msgSend(a2, "position") + 1, v443 <= objc_msgSend(a2, "length")))
          {
            v444 = [a2 data];
            [v444 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v441 |= (v493 & 0x7F) << v439;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v439 += 7;
          v12 = v440++ >= 9;
          if (v12)
          {
            v445 = 0;
            goto LABEL_856;
          }
        }

        if ([a2 hasError])
        {
          v445 = 0;
        }

        else
        {
          v445 = v441;
        }

LABEL_856:
        [a1 setCountBigramPrefixMatchInAuthorEmailAddresses:v445];
        continue;
      case 0x1Cu:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v493 & 0x7F) << v91;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_670;
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

LABEL_670:
        [a1 setCountNgramPrefixMatchInAuthorEmailAddresses:v97];
        continue;
      case 0x1Du:
        v418 = 0;
        v419 = 0;
        v420 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v421 = [a2 position] + 1;
          if (v421 >= [a2 position] && (v422 = objc_msgSend(a2, "position") + 1, v422 <= objc_msgSend(a2, "length")))
          {
            v423 = [a2 data];
            [v423 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v420 |= (v493 & 0x7F) << v418;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v418 += 7;
          v12 = v419++ >= 9;
          if (v12)
          {
            v424 = 0;
            goto LABEL_844;
          }
        }

        if ([a2 hasError])
        {
          v424 = 0;
        }

        else
        {
          v424 = v420;
        }

LABEL_844:
        [a1 setCountUnigramMatchInSubject:v424];
        continue;
      case 0x1Eu:
        v425 = 0;
        v426 = 0;
        v427 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v428 = [a2 position] + 1;
          if (v428 >= [a2 position] && (v429 = objc_msgSend(a2, "position") + 1, v429 <= objc_msgSend(a2, "length")))
          {
            v430 = [a2 data];
            [v430 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v427 |= (v493 & 0x7F) << v425;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v425 += 7;
          v12 = v426++ >= 9;
          if (v12)
          {
            v431 = 0;
            goto LABEL_848;
          }
        }

        if ([a2 hasError])
        {
          v431 = 0;
        }

        else
        {
          v431 = v427;
        }

LABEL_848:
        [a1 setCountBigramMatchInSubject:v431];
        continue;
      case 0x1Fu:
        v348 = 0;
        v349 = 0;
        v350 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v351 = [a2 position] + 1;
          if (v351 >= [a2 position] && (v352 = objc_msgSend(a2, "position") + 1, v352 <= objc_msgSend(a2, "length")))
          {
            v353 = [a2 data];
            [v353 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v350 |= (v493 & 0x7F) << v348;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v348 += 7;
          v12 = v349++ >= 9;
          if (v12)
          {
            v354 = 0;
            goto LABEL_804;
          }
        }

        if ([a2 hasError])
        {
          v354 = 0;
        }

        else
        {
          v354 = v350;
        }

LABEL_804:
        [a1 setCountNgramMatchInSubject:v354];
        continue;
      case 0x20u:
        v254 = 0;
        v255 = 0;
        v256 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v257 = [a2 position] + 1;
          if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 1, v258 <= objc_msgSend(a2, "length")))
          {
            v259 = [a2 data];
            [v259 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v256 |= (v493 & 0x7F) << v254;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v254 += 7;
          v12 = v255++ >= 9;
          if (v12)
          {
            v260 = 0;
            goto LABEL_756;
          }
        }

        if ([a2 hasError])
        {
          v260 = 0;
        }

        else
        {
          v260 = v256;
        }

LABEL_756:
        [a1 setCountUnigramPrefixMatchInSubject:v260];
        continue;
      case 0x21u:
        v355 = 0;
        v356 = 0;
        v357 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v358 = [a2 position] + 1;
          if (v358 >= [a2 position] && (v359 = objc_msgSend(a2, "position") + 1, v359 <= objc_msgSend(a2, "length")))
          {
            v360 = [a2 data];
            [v360 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v357 |= (v493 & 0x7F) << v355;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v355 += 7;
          v12 = v356++ >= 9;
          if (v12)
          {
            v361 = 0;
            goto LABEL_808;
          }
        }

        if ([a2 hasError])
        {
          v361 = 0;
        }

        else
        {
          v361 = v357;
        }

LABEL_808:
        [a1 setCountBigramPrefixMatchInSubject:v361];
        continue;
      case 0x22u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            v134 = [a2 data];
            [v134 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v493 & 0x7F) << v129;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v12 = v130++ >= 9;
          if (v12)
          {
            v135 = 0;
            goto LABEL_690;
          }
        }

        if ([a2 hasError])
        {
          v135 = 0;
        }

        else
        {
          v135 = v131;
        }

LABEL_690:
        [a1 setCountNgramPrefixMatchInSubject:v135];
        continue;
      case 0x23u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v493 & 0x7F) << v98;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_674;
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

LABEL_674:
        [a1 setCountUnigramMatchInTextContent:v104];
        continue;
      case 0x24u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v493 & 0x7F) << v70;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_658;
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

LABEL_658:
        [a1 setCountBigramMatchInTextContent:v76];
        continue;
      case 0x25u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v493 & 0x7F) << v77;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_662;
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

LABEL_662:
        [a1 setCountNgramMatchInTextContent:v83];
        continue;
      case 0x26u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v493 & 0x7F) << v42;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_642;
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

LABEL_642:
        [a1 setCountUnigramPrefixMatchInTextContent:v48];
        continue;
      case 0x27u:
        v432 = 0;
        v433 = 0;
        v434 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v435 = [a2 position] + 1;
          if (v435 >= [a2 position] && (v436 = objc_msgSend(a2, "position") + 1, v436 <= objc_msgSend(a2, "length")))
          {
            v437 = [a2 data];
            [v437 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v434 |= (v493 & 0x7F) << v432;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v432 += 7;
          v12 = v433++ >= 9;
          if (v12)
          {
            v438 = 0;
            goto LABEL_852;
          }
        }

        if ([a2 hasError])
        {
          v438 = 0;
        }

        else
        {
          v438 = v434;
        }

LABEL_852:
        [a1 setCountBigramPrefixMatchInTextContent:v438];
        continue;
      case 0x28u:
        v376 = 0;
        v377 = 0;
        v378 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v379 = [a2 position] + 1;
          if (v379 >= [a2 position] && (v380 = objc_msgSend(a2, "position") + 1, v380 <= objc_msgSend(a2, "length")))
          {
            v381 = [a2 data];
            [v381 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v378 |= (v493 & 0x7F) << v376;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v376 += 7;
          v12 = v377++ >= 9;
          if (v12)
          {
            v382 = 0;
            goto LABEL_820;
          }
        }

        if ([a2 hasError])
        {
          v382 = 0;
        }

        else
        {
          v382 = v378;
        }

LABEL_820:
        [a1 setCountNgramPrefixMatchInTextContent:v382];
        continue;
      case 0x29u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            v176 = [a2 data];
            [v176 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v173 |= (v493 & 0x7F) << v171;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v12 = v172++ >= 9;
          if (v12)
          {
            v177 = 0;
            goto LABEL_712;
          }
        }

        if ([a2 hasError])
        {
          v177 = 0;
        }

        else
        {
          v177 = v173;
        }

LABEL_712:
        [a1 setCountUnigramMatchInRecipients:v177];
        continue;
      case 0x2Au:
        v268 = 0;
        v269 = 0;
        v270 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v271 = [a2 position] + 1;
          if (v271 >= [a2 position] && (v272 = objc_msgSend(a2, "position") + 1, v272 <= objc_msgSend(a2, "length")))
          {
            v273 = [a2 data];
            [v273 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v270 |= (v493 & 0x7F) << v268;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v268 += 7;
          v12 = v269++ >= 9;
          if (v12)
          {
            v274 = 0;
            goto LABEL_764;
          }
        }

        if ([a2 hasError])
        {
          v274 = 0;
        }

        else
        {
          v274 = v270;
        }

LABEL_764:
        [a1 setCountBigramMatchInRecipients:v274];
        continue;
      case 0x2Bu:
        v397 = 0;
        v398 = 0;
        v399 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v400 = [a2 position] + 1;
          if (v400 >= [a2 position] && (v401 = objc_msgSend(a2, "position") + 1, v401 <= objc_msgSend(a2, "length")))
          {
            v402 = [a2 data];
            [v402 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v399 |= (v493 & 0x7F) << v397;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v397 += 7;
          v12 = v398++ >= 9;
          if (v12)
          {
            v403 = 0;
            goto LABEL_832;
          }
        }

        if ([a2 hasError])
        {
          v403 = 0;
        }

        else
        {
          v403 = v399;
        }

LABEL_832:
        [a1 setCountNgramMatchInRecipients:v403];
        continue;
      case 0x2Cu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v493 & 0x7F) << v28;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_634;
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

LABEL_634:
        [a1 setCountUnigramPrefixMatchInRecipients:v34];
        continue;
      case 0x2Du:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v493 & 0x7F) << v119;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v125 = 0;
            goto LABEL_686;
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

LABEL_686:
        [a1 setCountBigramPrefixMatchInRecipients:v125];
        continue;
      case 0x2Eu:
        v362 = 0;
        v363 = 0;
        v364 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v365 = [a2 position] + 1;
          if (v365 >= [a2 position] && (v366 = objc_msgSend(a2, "position") + 1, v366 <= objc_msgSend(a2, "length")))
          {
            v367 = [a2 data];
            [v367 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v364 |= (v493 & 0x7F) << v362;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v362 += 7;
          v12 = v363++ >= 9;
          if (v12)
          {
            v368 = 0;
            goto LABEL_812;
          }
        }

        if ([a2 hasError])
        {
          v368 = 0;
        }

        else
        {
          v368 = v364;
        }

LABEL_812:
        [a1 setCountNgramPrefixMatchInRecipients:v368];
        continue;
      case 0x2Fu:
        v467 = 0;
        v468 = 0;
        v469 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v470 = [a2 position] + 1;
          if (v470 >= [a2 position] && (v471 = objc_msgSend(a2, "position") + 1, v471 <= objc_msgSend(a2, "length")))
          {
            v472 = [a2 data];
            [v472 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v469 |= (v493 & 0x7F) << v467;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v467 += 7;
          v12 = v468++ >= 9;
          if (v12)
          {
            v473 = 0;
            goto LABEL_872;
          }
        }

        if ([a2 hasError])
        {
          v473 = 0;
        }

        else
        {
          v473 = v469;
        }

LABEL_872:
        [a1 setCountUnigramMatchInRecipientEmailAddresses:v473];
        continue;
      case 0x30u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v493 & 0x7F) << v56;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_650;
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

LABEL_650:
        [a1 setCountBigramMatchInRecipientEmailAddresses:v62];
        continue;
      case 0x31u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v493 & 0x7F) << v136;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v142 = 0;
            goto LABEL_694;
          }
        }

        if ([a2 hasError])
        {
          v142 = 0;
        }

        else
        {
          v142 = v138;
        }

LABEL_694:
        [a1 setCountNgramMatchInRecipientEmailAddresses:v142];
        continue;
      case 0x32u:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (v493 & 0x7F) << v157;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v163 = 0;
            goto LABEL_704;
          }
        }

        if ([a2 hasError])
        {
          v163 = 0;
        }

        else
        {
          v163 = v159;
        }

LABEL_704:
        [a1 setCountUnigramPrefixMatchInRecipientEmailAddresses:v163];
        continue;
      case 0x33u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v493 & 0x7F) << v21;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_630;
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

LABEL_630:
        [a1 setCountBigramPrefixMatchInRecipientEmailAddresses:v27];
        continue;
      case 0x34u:
        v474 = 0;
        v475 = 0;
        v476 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v477 = [a2 position] + 1;
          if (v477 >= [a2 position] && (v478 = objc_msgSend(a2, "position") + 1, v478 <= objc_msgSend(a2, "length")))
          {
            v479 = [a2 data];
            [v479 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v476 |= (v493 & 0x7F) << v474;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v474 += 7;
          v12 = v475++ >= 9;
          if (v12)
          {
            v480 = 0;
            goto LABEL_876;
          }
        }

        if ([a2 hasError])
        {
          v480 = 0;
        }

        else
        {
          v480 = v476;
        }

LABEL_876:
        [a1 setCountNgramPrefixMatchInRecipientEmailAddresses:v480];
        continue;
      case 0x35u:
        v460 = 0;
        v461 = 0;
        v462 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v463 = [a2 position] + 1;
          if (v463 >= [a2 position] && (v464 = objc_msgSend(a2, "position") + 1, v464 <= objc_msgSend(a2, "length")))
          {
            v465 = [a2 data];
            [v465 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v462 |= (v493 & 0x7F) << v460;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v460 += 7;
          v12 = v461++ >= 9;
          if (v12)
          {
            v466 = 0;
            goto LABEL_868;
          }
        }

        if ([a2 hasError])
        {
          v466 = 0;
        }

        else
        {
          v466 = v462;
        }

LABEL_868:
        [a1 setCountUnigramMatchInEmailAddresses:v466];
        continue;
      case 0x36u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v493 & 0x7F) << v49;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_646;
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

LABEL_646:
        [a1 setCountBigramMatchInEmailAddresses:v55];
        continue;
      case 0x37u:
        v446 = 0;
        v447 = 0;
        v448 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v449 = [a2 position] + 1;
          if (v449 >= [a2 position] && (v450 = objc_msgSend(a2, "position") + 1, v450 <= objc_msgSend(a2, "length")))
          {
            v451 = [a2 data];
            [v451 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v448 |= (v493 & 0x7F) << v446;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v446 += 7;
          v12 = v447++ >= 9;
          if (v12)
          {
            v452 = 0;
            goto LABEL_860;
          }
        }

        if ([a2 hasError])
        {
          v452 = 0;
        }

        else
        {
          v452 = v448;
        }

LABEL_860:
        [a1 setCountNgramMatchInEmailAddresses:v452];
        continue;
      case 0x38u:
        v453 = 0;
        v454 = 0;
        v455 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v456 = [a2 position] + 1;
          if (v456 >= [a2 position] && (v457 = objc_msgSend(a2, "position") + 1, v457 <= objc_msgSend(a2, "length")))
          {
            v458 = [a2 data];
            [v458 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v455 |= (v493 & 0x7F) << v453;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v453 += 7;
          v12 = v454++ >= 9;
          if (v12)
          {
            v459 = 0;
            goto LABEL_864;
          }
        }

        if ([a2 hasError])
        {
          v459 = 0;
        }

        else
        {
          v459 = v455;
        }

LABEL_864:
        [a1 setCountUnigramPrefixMatchInEmailAddresses:v459];
        continue;
      case 0x39u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v493 & 0x7F) << v63;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_654;
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

LABEL_654:
        [a1 setCountBigramPrefixMatchInEmailAddresses:v69];
        continue;
      case 0x3Au:
        v390 = 0;
        v391 = 0;
        v392 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v393 = [a2 position] + 1;
          if (v393 >= [a2 position] && (v394 = objc_msgSend(a2, "position") + 1, v394 <= objc_msgSend(a2, "length")))
          {
            v395 = [a2 data];
            [v395 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v392 |= (v493 & 0x7F) << v390;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v390 += 7;
          v12 = v391++ >= 9;
          if (v12)
          {
            v396 = 0;
            goto LABEL_828;
          }
        }

        if ([a2 hasError])
        {
          v396 = 0;
        }

        else
        {
          v396 = v392;
        }

LABEL_828:
        [a1 setCountNgramPrefixMatchInEmailAddresses:v396];
        continue;
      case 0x3Bu:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v493 & 0x7F) << v143;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            v149 = 0;
            goto LABEL_698;
          }
        }

        if ([a2 hasError])
        {
          v149 = 0;
        }

        else
        {
          v149 = v145;
        }

LABEL_698:
        [a1 setCountUnigramMatchInAttachmentTypes:v149];
        continue;
      case 0x3Cu:
        v404 = 0;
        v405 = 0;
        v406 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v407 = [a2 position] + 1;
          if (v407 >= [a2 position] && (v408 = objc_msgSend(a2, "position") + 1, v408 <= objc_msgSend(a2, "length")))
          {
            v409 = [a2 data];
            [v409 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v406 |= (v493 & 0x7F) << v404;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v404 += 7;
          v12 = v405++ >= 9;
          if (v12)
          {
            v410 = 0;
            goto LABEL_836;
          }
        }

        if ([a2 hasError])
        {
          v410 = 0;
        }

        else
        {
          v410 = v406;
        }

LABEL_836:
        [a1 setCountBigramMatchInAttachmentTypes:v410];
        continue;
      case 0x3Du:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v181 = [a2 position] + 1;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
          {
            v183 = [a2 data];
            [v183 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v180 |= (v493 & 0x7F) << v178;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v12 = v179++ >= 9;
          if (v12)
          {
            v184 = 0;
            goto LABEL_716;
          }
        }

        if ([a2 hasError])
        {
          v184 = 0;
        }

        else
        {
          v184 = v180;
        }

LABEL_716:
        [a1 setCountNgramMatchInAttachmentTypes:v184];
        continue;
      case 0x3Eu:
        v282 = 0;
        v283 = 0;
        v284 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v285 = [a2 position] + 1;
          if (v285 >= [a2 position] && (v286 = objc_msgSend(a2, "position") + 1, v286 <= objc_msgSend(a2, "length")))
          {
            v287 = [a2 data];
            [v287 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v284 |= (v493 & 0x7F) << v282;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v282 += 7;
          v12 = v283++ >= 9;
          if (v12)
          {
            v288 = 0;
            goto LABEL_772;
          }
        }

        if ([a2 hasError])
        {
          v288 = 0;
        }

        else
        {
          v288 = v284;
        }

LABEL_772:
        [a1 setCountUnigramPrefixMatchInAttachmentTypes:v288];
        continue;
      case 0x3Fu:
        v303 = 0;
        v304 = 0;
        v305 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v306 = [a2 position] + 1;
          if (v306 >= [a2 position] && (v307 = objc_msgSend(a2, "position") + 1, v307 <= objc_msgSend(a2, "length")))
          {
            v308 = [a2 data];
            [v308 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v305 |= (v493 & 0x7F) << v303;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v303 += 7;
          v12 = v304++ >= 9;
          if (v12)
          {
            v309 = 0;
            goto LABEL_784;
          }
        }

        if ([a2 hasError])
        {
          v309 = 0;
        }

        else
        {
          v309 = v305;
        }

LABEL_784:
        [a1 setCountBigramPrefixMatchInAttachmentTypes:v309];
        continue;
      case 0x40u:
        v226 = 0;
        v227 = 0;
        v228 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v229 = [a2 position] + 1;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
          {
            v231 = [a2 data];
            [v231 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v228 |= (v493 & 0x7F) << v226;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v226 += 7;
          v12 = v227++ >= 9;
          if (v12)
          {
            v232 = 0;
            goto LABEL_738;
          }
        }

        if ([a2 hasError])
        {
          v232 = 0;
        }

        else
        {
          v232 = v228;
        }

LABEL_738:
        [a1 setCountNgramPrefixMatchInAttachmentTypes:v232];
        continue;
      case 0x41u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v188 = [a2 position] + 1;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
          {
            v190 = [a2 data];
            [v190 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v187 |= (v493 & 0x7F) << v185;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v12 = v186++ >= 9;
          if (v12)
          {
            v191 = 0;
            goto LABEL_720;
          }
        }

        if ([a2 hasError])
        {
          v191 = 0;
        }

        else
        {
          v191 = v187;
        }

LABEL_720:
        [a1 setCountUnigramMatchInAttachmentNames:v191];
        continue;
      case 0x42u:
        v296 = 0;
        v297 = 0;
        v298 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v299 = [a2 position] + 1;
          if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 1, v300 <= objc_msgSend(a2, "length")))
          {
            v301 = [a2 data];
            [v301 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v298 |= (v493 & 0x7F) << v296;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v296 += 7;
          v12 = v297++ >= 9;
          if (v12)
          {
            v302 = 0;
            goto LABEL_780;
          }
        }

        if ([a2 hasError])
        {
          v302 = 0;
        }

        else
        {
          v302 = v298;
        }

LABEL_780:
        [a1 setCountBigramMatchInAttachmentNames:v302];
        continue;
      case 0x43u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v493 & 0x7F) << v35;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_638;
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

LABEL_638:
        [a1 setCountNgramMatchInAttachmentNames:v41];
        continue;
      case 0x44u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v493 & 0x7F) << v112;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v118 = 0;
            goto LABEL_682;
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

LABEL_682:
        [a1 setCountUnigramPrefixMatchInAttachmentNames:v118];
        continue;
      case 0x45u:
        v481 = 0;
        v482 = 0;
        v483 = 0;
        while (1)
        {
          LOBYTE(v493) = 0;
          v484 = [a2 position] + 1;
          if (v484 >= [a2 position] && (v485 = objc_msgSend(a2, "position") + 1, v485 <= objc_msgSend(a2, "length")))
          {
            v486 = [a2 data];
            [v486 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v483 |= (v493 & 0x7F) << v481;
          if ((v493 & 0x80) == 0)
          {
            break;
          }

          v481 += 7;
          v12 = v482++ >= 9;
          if (v12)
          {
            v487 = 0;
            goto LABEL_880;
          }
        }

        if ([a2 hasError])
        {
          v487 = 0;
        }

        else
        {
          v487 = v483;
        }

LABEL_880:
        [a1 setCountBigramPrefixMatchInAttachmentNames:v487];
        continue;
      case 0x46u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
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
      LOBYTE(v493) = 0;
      v87 = [a2 position] + 1;
      if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
      {
        v89 = [a2 data];
        [v89 getBytes:&v493 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v86 |= (v493 & 0x7F) << v84;
      if ((v493 & 0x80) == 0)
      {
        break;
      }

      v84 += 7;
      v12 = v85++ >= 9;
      if (v12)
      {
        v90 = 0;
        goto LABEL_666;
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

LABEL_666:
    [a1 setCountNgramPrefixMatchInAttachmentNames:v90];
LABEL_889:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMailResultDetailsReadFrom(void *a1, void *a2)
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
      v35 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v35 & 0x7F) << v6;
      if ((v35 & 0x80) == 0)
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
      v25 = 0;
      v26 = 0;
      v27 = 0;
      while (1)
      {
        v37 = 0;
        v28 = [a2 position] + 1;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v27 |= (v37 & 0x7F) << v25;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v12 = v26++ >= 9;
        if (v12)
        {
          v31 = 0;
          goto LABEL_47;
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

LABEL_47:
      [a1 setDataSources:v31];
    }

    else if (v14 == 2)
    {
      v34 = 0;
      v22 = [a2 position] + 4;
      if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
      {
        v33 = [a2 data];
        [v33 getBytes:&v34 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v24) = v34;
      [a1 setSuggestionScore:v24];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v36 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v36 & 0x7F) << v15;
        if ((v36 & 0x80) == 0)
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
      [a1 setSkgMegadomeSpotlightIndexEntries:v21];
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

uint64_t _SFPBMoreResultsReadFrom(void *a1, void *a2)
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
      [a1 setLabel:v14];
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

uint64_t _SFPBPhotosAggregatedInfoReadFrom(void *a1, void *a2)
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
        v40 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v40 & 0x7F) << v29;
        if ((v40 & 0x80) == 0)
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
      [a1 setTotalNumberOfAssets:v35];
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
      [a1 setTotalNumberOfEmbeddingMatchedAssets:v28];
    }

    else if (v14 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      while (1)
      {
        v38 = 0;
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
      [a1 setTotalNumberOfMetadataMatchedAssets:v21];
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

uint64_t _SFPBPhotosAttributesReadFrom(void *a1, void *a2)
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
      v58 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v58 & 0x7F) << v6;
      if ((v58 & 0x80) == 0)
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
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v61 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v61 & 0x7F) << v36;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_86;
            }
          }

          v42 = (v38 != 0) & ~[a2 hasError];
LABEL_86:
          [a1 setIsVideo:v42];
          continue;
        case 5:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          while (1)
          {
            v60 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v60 & 0x7F) << v51;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v12 = v52++ >= 9;
            if (v12)
            {
              v57 = 0;
              goto LABEL_96;
            }
          }

          v57 = (v53 != 0) & ~[a2 hasError];
LABEL_96:
          [a1 setIsFavorite:v57];
          continue;
        case 6:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v59 = 0;
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
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_92;
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

LABEL_92:
          [a1 setPhotosSuggestionType:v28];
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
            v64 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v64 & 0x7F) << v29;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_84;
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

LABEL_84:
          [a1 setPositionIndex:v35];
          continue;
        case 2:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          while (1)
          {
            v63 = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v63 & 0x7F) << v44;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v12 = v45++ >= 9;
            if (v12)
            {
              v50 = 0;
              goto LABEL_94;
            }
          }

          v50 = (v46 != 0) & ~[a2 hasError];
LABEL_94:
          [a1 setIsEmbeddingMatched:v50];
          continue;
        case 3:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v62 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v62 & 0x7F) << v15;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_88;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_88:
          [a1 setIsMetadataMatched:v21];
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

uint64_t _SFPBPhotosRankingInfoReadFrom(void *a1, void *a2)
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
      v93 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v93 & 0x7F) << v6;
      if ((v93 & 0x80) == 0)
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
    if ((v13 >> 3) <= 5)
    {
      if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            v104 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v104 & 0x7F) << v43;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v12 = v44++ >= 9;
            if (v12)
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
          [a1 setTotalNumberOfAssetsIndexed:v49];
          continue;
        }

        if (v14 == 2)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v103 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v103 & 0x7F) << v36;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_140;
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

LABEL_140:
          [a1 setTotalNumberOfAssetsInLibrary:v42];
          continue;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            v71 = 0;
            v72 = 0;
            v73 = 0;
            while (1)
            {
              v102 = 0;
              v74 = [a2 position] + 1;
              if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
              {
                v76 = [a2 data];
                [v76 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v73 |= (v102 & 0x7F) << v71;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v71 += 7;
              v12 = v72++ >= 9;
              if (v12)
              {
                v77 = 0;
                goto LABEL_160;
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

LABEL_160:
            [a1 setTotalNumberOfEmbeddingMatchedAssets:v77];
            continue;
          case 4:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              v101 = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v101 & 0x7F) << v50;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v12 = v51++ >= 9;
              if (v12)
              {
                v56 = 0;
                goto LABEL_144;
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

LABEL_144:
            [a1 setTotalNumberOfMetadataMatchedAssets:v56];
            continue;
          case 5:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v100 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v100 & 0x7F) << v22;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v12 = v23++ >= 9;
              if (v12)
              {
                v28 = 0;
                goto LABEL_156;
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

LABEL_156:
            [a1 setAssetEstimationOffAmount:v28];
            continue;
        }
      }
    }

    else if (v14 > 8)
    {
      switch(v14)
      {
        case 9:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          while (1)
          {
            v96 = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              v90 = [a2 data];
              [v90 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v96 & 0x7F) << v85;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v12 = v86++ >= 9;
            if (v12)
            {
              v91 = 0;
              goto LABEL_176;
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

LABEL_176:
          [a1 setEmbeddedAssetsPercentage:v91];
          continue;
        case 0xA:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          while (1)
          {
            v95 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v95 & 0x7F) << v64;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v12 = v65++ >= 9;
            if (v12)
            {
              v70 = 0;
              goto LABEL_152;
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

LABEL_152:
          [a1 setAssetsRetrieved:v70];
          continue;
        case 0xB:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v94 = 0;
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
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_168;
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

LABEL_168:
          [a1 setCollectionsRetrieved:v35];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 6:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          while (1)
          {
            v99 = 0;
            v81 = [a2 position] + 1;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
            {
              v83 = [a2 data];
              [v83 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v80 |= (v99 & 0x7F) << v78;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v12 = v79++ >= 9;
            if (v12)
            {
              v84 = 0;
              goto LABEL_172;
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

LABEL_172:
          [a1 setIndexedAssetsPercentage:v84];
          continue;
        case 7:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          while (1)
          {
            v98 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v98 & 0x7F) << v57;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v12 = v58++ >= 9;
            if (v12)
            {
              v63 = 0;
              goto LABEL_148;
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

LABEL_148:
          [a1 setAnalyzedAssetsPercentage:v63];
          continue;
        case 8:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v97 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v97 & 0x7F) << v15;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
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
            v21 = v17;
          }

LABEL_164:
          [a1 setAnalyzedAndIndexedAssetsPercentage:v21];
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

uint64_t _SFPBProductReadFrom(void *a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
          [a1 setIdentifier:v21];
          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          [a1 setProductIdentifier:v21];
LABEL_38:

          goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_SFPBURL);
            v24[0] = 0;
            v24[1] = 0;
            if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v21, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            [a1 setAvailabilityURL:v21];
            goto LABEL_38;
          case 4:
            v21 = PBReaderReadString();
            [a1 setDisplayName:v21];
            goto LABEL_38;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v24[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v24[0] & 0x7F) << v14;
              if ((v24[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_42;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_42:
            [a1 setBuyable:v20];
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

uint64_t _SFPBProductInventoryReadFrom(void *a1, void *a2)
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
        LOBYTE(v42[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42[0] & 0x7F) << v5;
        if ((v42[0] & 0x80) == 0)
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
            v14 = PBReaderReadString();
            [a1 setStoreName:v14];
            goto LABEL_64;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadString();
            [a1 setStoreAddress:v14];
            goto LABEL_64;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              LOBYTE(v42[0]) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v42[0] & 0x7F) << v25;
              if ((v42[0] & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v31 = 0;
                goto LABEL_74;
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

LABEL_74:
            [a1 setDistanceUnit:v31];
            goto LABEL_81;
          }

          if (v13 == 6)
          {
            v14 = objc_alloc_init(_SFPBDate);
            v42[0] = 0;
            v42[1] = 0;
            if (!PBReaderPlaceMark() || !_SFPBDateReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTimestamp:v14];
            goto LABEL_64;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v42[0] & 0x7F) << v32;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_78;
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

LABEL_78:
          [a1 setAvailabilityStatus:v38];
          goto LABEL_81;
        }

        if (v13 == 4)
        {
          LODWORD(v42[0]) = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v42 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v17) = v42[0];
          [a1 setDistance:v17];
          goto LABEL_81;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v42[0] & 0x7F) << v18;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
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
          [a1 setType:v24];
          goto LABEL_81;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setStoreId:v14];
LABEL_64:

          goto LABEL_81;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_81:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBProductInventoryResultReadFrom(void *a1, void *a2)
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
        v13 = PBReaderReadString();
        [a1 setProductIdentifier:v13];
LABEL_24:

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

    v13 = objc_alloc_init(_SFPBProductInventory);
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !_SFPBProductInventoryReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addAvailability:v13];
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBProductAvailabilityReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBProductInventoryResult);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBProductInventoryResultReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addResults:v13];
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

uint64_t _SFPBQueryUnderstandingParseReadFrom(void *a1, void *a2)
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
      v148 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v148 & 0x7F) << v6;
      if ((v148 & 0x80) == 0)
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
          v148 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v148 & 0x7F) << v14;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_217:
            [a1 setQueryIntentType:v20];
            goto LABEL_234;
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

        goto LABEL_217;
      case 2u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        while (1)
        {
          v148 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v148 & 0x7F) << v91;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_219;
          }
        }

        v97 = (v93 != 0) & ~[a2 hasError];
LABEL_219:
        [a1 setHasUnspecifiedTokens:v97];
        continue;
      case 3u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v148 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v148 & 0x7F) << v63;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v69 = 0;
            goto LABEL_207;
          }
        }

        v69 = (v65 != 0) & ~[a2 hasError];
LABEL_207:
        [a1 setHasSortCriteriaTokens:v69];
        continue;
      case 4u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        while (1)
        {
          v148 = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v148 & 0x7F) << v77;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v83 = 0;
            goto LABEL_211;
          }
        }

        v83 = (v79 != 0) & ~[a2 hasError];
LABEL_211:
        [a1 setHasLocationTokens:v83];
        continue;
      case 5u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        while (1)
        {
          v148 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v148 & 0x7F) << v42;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_201;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_201:
        [a1 setHasActionTokens:v48];
        continue;
      case 6u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        while (1)
        {
          v148 = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v148 & 0x7F) << v105;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v12 = v106++ >= 9;
          if (v12)
          {
            v111 = 0;
            goto LABEL_223;
          }
        }

        v111 = (v107 != 0) & ~[a2 hasError];
LABEL_223:
        [a1 setHasMediaTypeTokens:v111];
        continue;
      case 7u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        while (1)
        {
          v148 = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v148 & 0x7F) << v119;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            v125 = 0;
            goto LABEL_227;
          }
        }

        v125 = (v121 != 0) & ~[a2 hasError];
LABEL_227:
        [a1 setHasVisualQualityTokens:v125];
        continue;
      case 8u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (1)
        {
          v148 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v148 & 0x7F) << v84;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v90 = 0;
            goto LABEL_213;
          }
        }

        v90 = (v86 != 0) & ~[a2 hasError];
LABEL_213:
        [a1 setHasNounTokens:v90];
        continue;
      case 9u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        while (1)
        {
          v148 = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v148 & 0x7F) << v140;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            v146 = 0;
            goto LABEL_233;
          }
        }

        v146 = (v142 != 0) & ~[a2 hasError];
LABEL_233:
        [a1 setHasTimeTokens:v146];
        continue;
      case 0xAu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        while (1)
        {
          v148 = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v148 & 0x7F) << v56;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_205;
          }
        }

        v62 = (v58 != 0) & ~[a2 hasError];
LABEL_205:
        [a1 setHasEventTokens:v62];
        continue;
      case 0xBu:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        while (1)
        {
          v148 = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v148 & 0x7F) << v133;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v139 = 0;
            goto LABEL_231;
          }
        }

        v139 = (v135 != 0) & ~[a2 hasError];
LABEL_231:
        [a1 setHasGenericLocationTokens:v139];
        continue;
      case 0xCu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          v148 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v148 & 0x7F) << v35;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_199;
          }
        }

        v41 = (v37 != 0) & ~[a2 hasError];
LABEL_199:
        [a1 setHasCaptureDeviceTokens:v41];
        continue;
      case 0xDu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v148 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v148 & 0x7F) << v49;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v55 = 0;
            goto LABEL_203;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_203:
        [a1 setHasFavoritedTokens:v55];
        continue;
      case 0xEu:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          v148 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v148 & 0x7F) << v112;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v118 = 0;
            goto LABEL_225;
          }
        }

        v118 = (v114 != 0) & ~[a2 hasError];
LABEL_225:
        [a1 setHasSourceAppTokens:v118];
        continue;
      case 0xFu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v148 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v148 & 0x7F) << v28;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_197;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_197:
        [a1 setHasPersonTokens:v34];
        continue;
      case 0x10u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (1)
        {
          v148 = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v148 & 0x7F) << v70;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v76 = 0;
            goto LABEL_209;
          }
        }

        v76 = (v72 != 0) & ~[a2 hasError];
LABEL_209:
        [a1 setHasPersonSenderTokens:v76];
        continue;
      case 0x11u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v148 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v148 & 0x7F) << v21;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_195;
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

LABEL_195:
        [a1 setSpotlightQueryIntent:v27];
        continue;
      case 0x12u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        while (1)
        {
          v148 = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v148 & 0x7F) << v98;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v104 = 0;
            goto LABEL_221;
          }
        }

        v104 = (v100 != 0) & ~[a2 hasError];
LABEL_221:
        [a1 setIsUnsafeQuery:v104];
        continue;
      case 0x13u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
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
      v148 = 0;
      v129 = [a2 position] + 1;
      if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
      {
        v131 = [a2 data];
        [v131 getBytes:&v148 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v128 |= (v148 & 0x7F) << v126;
      if ((v148 & 0x80) == 0)
      {
        break;
      }

      v126 += 7;
      v12 = v127++ >= 9;
      if (v12)
      {
        v132 = 0;
        goto LABEL_229;
      }
    }

    v132 = (v128 != 0) & ~[a2 hasError];
LABEL_229:
    [a1 setIsBlocklistedQuery:v132];
LABEL_234:
    ;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFVisualPropertyWithActionReadFrom(void *a1, void *a2)
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
        v21 = objc_alloc_init(_SFPBCommandButtonItem);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !_SFPBCommandButtonItemReadFrom(v21, a2))
        {
          goto LABEL_44;
        }

        PBReaderRecallMark();
        [a1 setCommandItem:v21];
LABEL_36:

        goto LABEL_41;
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
            goto LABEL_40;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_40:
        [a1 setIs_safe_for_logging:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(_SFPBRFVisualElement);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !_SFPBRFVisualElementReadFrom(v21, a2))
    {
LABEL_44:

      return 0;
    }

    PBReaderRecallMark();
    if (v21)
    {
      [a1 addVisual_elements:v21];
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBResultEntityReadFrom(void *a1, void *a2)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 8)
      {
        v14 = objc_alloc_init(_SFPBLocationTypeInfo);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBLocationTypeInfoReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLocation_type_info:v14];
        goto LABEL_25;
      }

      if (v13 == 7)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        [a1 setName:v14];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    [a1 setMaps_encrypted_muid:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBSafariAttributesReadFrom(void *a1, void *a2)
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
      [a1 setHideReason:v20];
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

uint64_t _SFPBSearchSuggestionReadFrom(void *a1, void *a2)
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
        LOBYTE(v43) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          [a1 setIdentifier:v13];
          goto LABEL_86;
        case 2u:
          v13 = PBReaderReadString();
          [a1 setSuggestion:v13];
          goto LABEL_86;
        case 3u:
          v13 = PBReaderReadString();
          [a1 setQuery:v13];
          goto LABEL_86;
        case 4u:
          v13 = objc_alloc_init(_SFPBGraphicalFloat);
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v13, a2))
          {
            goto LABEL_89;
          }

          PBReaderRecallMark();
          [a1 setScore:v13];
          goto LABEL_86;
        case 5u:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v43) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43 & 0x7F) << v14;
            if ((v43 & 0x80) == 0)
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
          [a1 setType:v20];
          goto LABEL_87;
        case 6u:
          v13 = objc_alloc_init(_SFPBSearchSuggestion);
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark() || !_SFPBSearchSuggestionReadFrom(v13, a2))
          {
            goto LABEL_89;
          }

          PBReaderRecallMark();
          if (v13)
          {
            [a1 addDuplicateSuggestions:v13];
          }

          goto LABEL_86;
        case 7u:
          v13 = PBReaderReadString();
          [a1 setTopicIdentifier:v13];
          goto LABEL_86;
        case 8u:
          v13 = PBReaderReadString();
          [a1 setBundleIdentifier:v13];
          goto LABEL_86;
        case 9u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            LOBYTE(v43) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v43 & 0x7F) << v26;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_82;
            }
          }

          v32 = (v28 != 0) & ~[a2 hasError];
LABEL_82:
          [a1 setPreviouslyEngaged:v32];
          goto LABEL_87;
        case 0xAu:
          v13 = PBReaderReadString();
          [a1 setFbr:v13];
          goto LABEL_86;
        case 0xBu:
          v13 = PBReaderReadString();
          [a1 setScopedSearchApplicationBundleIdentifier:v13];
          goto LABEL_86;
        case 0xCu:
          v13 = PBReaderReadString();
          [a1 setUtteranceText:v13];
          goto LABEL_86;
        case 0xDu:
          v13 = PBReaderReadString();
          [a1 setDetailText:v13];
          goto LABEL_86;
        case 0xEu:
          v43 = 0;
          v44 = 0;
          PBReaderPlaceMark();
          v21 = 0;
          break;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_87;
      }

      while (1)
      {
        LOBYTE(v45) = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        if ((SLOBYTE(v45) & 0x80000000) == 0)
        {
          break;
        }

        v25 = v21++ > 8;
        if (v25)
        {
          goto LABEL_68;
        }
      }

      [a2 hasError];
LABEL_68:
      v13 = PBReaderReadString();
      v33 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        if ((SLOBYTE(v45) & 0x80000000) == 0)
        {
          break;
        }

        v25 = v33++ > 8;
        if (v25)
        {
          goto LABEL_78;
        }
      }

      [a2 hasError];
LABEL_78:
      v45 = 0.0;
      v37 = [a2 position] + 8;
      if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
      {
        v39 = [a2 data];
        [v39 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v40 = v45;
      PBReaderRecallMark();
      if ([a2 hasError])
      {
LABEL_89:

        return 0;
      }

      [a1 setServerFeatures:v13 forKey:v40];
LABEL_86:

LABEL_87:
      v41 = [a2 position];
    }

    while (v41 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}