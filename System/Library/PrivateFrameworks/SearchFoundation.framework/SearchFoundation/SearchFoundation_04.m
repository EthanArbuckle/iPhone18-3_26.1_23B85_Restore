uint64_t _SFPBWatchListCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
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
                goto LABEL_85;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_85:
            [a1 setHasBottomPadding:v35];
            goto LABEL_80;
          }

          if (v13 == 7)
          {
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_79;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x33:
              v28 = objc_alloc_init(_SFPBWatchListItem);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBWatchListItemReadFrom(v28, a2))
              {
LABEL_96:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setWatchListItem:v28];
              goto LABEL_79;
            case 9:
              v28 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
              {
                goto LABEL_96;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v28];
              goto LABEL_79;
            case 8:
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
                  goto LABEL_91;
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

LABEL_91:
              [a1 setSeparatorStyle:v27];
              goto LABEL_80;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_SFPBPunchout);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
          {
            goto LABEL_96;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addPunchoutOptions:v28];
          }

          goto LABEL_79;
        }

        if (v13 == 2)
        {
          v28 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v28];
LABEL_79:

          goto LABEL_80;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v28];
            goto LABEL_79;
          case 4:
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
                goto LABEL_93;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_93:
            [a1 setCanBeHidden:v42];
            goto LABEL_80;
          case 5:
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
                goto LABEL_87;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_87:
            [a1 setHasTopPadding:v20];
            goto LABEL_80;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_80:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMapsDetailedRowCardSectionReadFrom(void *a1, void *a2)
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
LABEL_96:

              return 0;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addPunchoutOptions:v28];
            }

            goto LABEL_79;
          }

          if (v13 == 2)
          {
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v28];
            goto LABEL_79;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v28 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v28];
              goto LABEL_79;
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
                  goto LABEL_85;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_85:
              [a1 setCanBeHidden:v35];
              goto LABEL_80;
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
                  goto LABEL_87;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_87:
              [a1 setHasTopPadding:v27];
              goto LABEL_80;
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
              goto LABEL_96;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v28];
            goto LABEL_79;
          case 0x33:
            v28 = PBReaderReadData();
            [a1 setMapsData:v28];
            goto LABEL_79;
          case 0x34:
            v28 = PBReaderReadString();
            [a1 setPinText:v28];
LABEL_79:

            goto LABEL_80;
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
                goto LABEL_93;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_93:
            [a1 setHasBottomPadding:v42];
            goto LABEL_80;
          case 7:
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_79;
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
                goto LABEL_91;
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

LABEL_91:
            [a1 setSeparatorStyle:v20];
            goto LABEL_80;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_80:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBButtonCardSectionReadFrom(void *a1, void *a2)
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
LABEL_100:

              return 0;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addPunchoutOptions:v28];
            }

            goto LABEL_83;
          }

          if (v13 == 2)
          {
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v28];
LABEL_83:

            goto LABEL_84;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v28 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v28];
              goto LABEL_83;
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
                  goto LABEL_89;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_89:
              [a1 setCanBeHidden:v35];
              goto LABEL_84;
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
                  goto LABEL_91;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_91:
              [a1 setHasTopPadding:v27];
              goto LABEL_84;
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
              goto LABEL_100;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v28];
            goto LABEL_83;
          case 0x33:
            v28 = objc_alloc_init(_SFPBRichText);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v28, a2))
            {
              goto LABEL_100;
            }

            PBReaderRecallMark();
            [a1 setTitle:v28];
            goto LABEL_83;
          case 0x34:
            v28 = objc_alloc_init(_SFPBImage);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v28, a2))
            {
              goto LABEL_100;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v28];
            goto LABEL_83;
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
                goto LABEL_97;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_97:
            [a1 setHasBottomPadding:v42];
            goto LABEL_84;
          case 7:
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_83;
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
                goto LABEL_95;
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

LABEL_95:
            [a1 setSeparatorStyle:v20];
            goto LABEL_84;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_84:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBHorizontalButtonCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
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
                goto LABEL_86;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_86:
            [a1 setHasBottomPadding:v35];
            goto LABEL_81;
          }

          if (v13 == 7)
          {
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_80;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x33:
              v28 = objc_alloc_init(_SFPBCardSection);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBCardSectionReadFrom(v28, a2))
              {
LABEL_97:

                return 0;
              }

              PBReaderRecallMark();
              if (v28)
              {
                [a1 addButtonCardSections:v28];
              }

              goto LABEL_80;
            case 9:
              v28 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
              {
                goto LABEL_97;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v28];
              goto LABEL_80;
            case 8:
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

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v23;
              }

LABEL_92:
              [a1 setSeparatorStyle:v27];
              goto LABEL_81;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_SFPBPunchout);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
          {
            goto LABEL_97;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addPunchoutOptions:v28];
          }

          goto LABEL_80;
        }

        if (v13 == 2)
        {
          v28 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v28];
LABEL_80:

          goto LABEL_81;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v28];
            goto LABEL_80;
          case 4:
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
                goto LABEL_94;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_94:
            [a1 setCanBeHidden:v42];
            goto LABEL_81;
          case 5:
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
                goto LABEL_88;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_88:
            [a1 setHasTopPadding:v20];
            goto LABEL_81;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_81:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBVerticalLayoutCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 7)
      {
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(_SFPBPunchout);
              v59 = 0;
              v60 = 0;
              if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
              {
LABEL_131:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPunchoutOptions:v14];
              }

              goto LABEL_113;
            case 2:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerTitle:v14];
              goto LABEL_113;
            case 3:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v14];
LABEL_113:

              goto LABEL_114;
          }
        }

        else
        {
          if (v13 <= 5)
          {
            if (v13 == 4)
            {
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
                  goto LABEL_123;
                }
              }

              v42 = (v38 != 0) & ~[a2 hasError];
LABEL_123:
              [a1 setCanBeHidden:v42];
            }

            else
            {
              v15 = 0;
              v16 = 0;
              v17 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v59 & 0x7F) << v15;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_117;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_117:
              [a1 setHasTopPadding:v21];
            }

            goto LABEL_114;
          }

          if (v13 == 6)
          {
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
                goto LABEL_125;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_125:
            [a1 setHasBottomPadding:v49];
            goto LABEL_114;
          }

          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            [a1 setType:v14];
            goto LABEL_113;
          }
        }
      }

      else if (v13 > 52)
      {
        if (v13 <= 54)
        {
          if (v13 != 53)
          {
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
                goto LABEL_119;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_119:
            [a1 setContentsLeading:v28];
            goto LABEL_114;
          }

          v14 = objc_alloc_init(_SFPBRichText);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
            goto LABEL_131;
          }

          PBReaderRecallMark();
          [a1 setFootnote:v14];
          goto LABEL_113;
        }

        if (v13 == 55)
        {
          v14 = objc_alloc_init(_SFPBRichText);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
            goto LABEL_131;
          }

          PBReaderRecallMark();
          [a1 setThumbnailOverlayText:v14];
          goto LABEL_113;
        }

        if (v13 == 56)
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
              goto LABEL_121;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_121:
          [a1 setUseAppIconMetrics:v35];
          goto LABEL_114;
        }
      }

      else
      {
        if (v13 > 50)
        {
          if (v13 == 51)
          {
            v14 = objc_alloc_init(_SFPBImage);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
          }

          else
          {
            v14 = objc_alloc_init(_SFPBRichText);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setTitle:v14];
          }

          goto LABEL_113;
        }

        if (v13 == 8)
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
              goto LABEL_129;
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

LABEL_129:
          [a1 setSeparatorStyle:v56];
          goto LABEL_114;
        }

        if (v13 == 9)
        {
          v14 = objc_alloc_init(_SFPBColor);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
          {
            goto LABEL_131;
          }

          PBReaderRecallMark();
          [a1 setBackgroundColor:v14];
          goto LABEL_113;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_114:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBProductCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
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
                goto LABEL_83;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_83:
            [a1 setHasBottomPadding:v35];
            goto LABEL_78;
          }

          if (v13 == 7)
          {
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_77;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x3E8:
              v28 = PBReaderReadData();
              [a1 setProductJSON:v28];
              goto LABEL_77;
            case 9:
              v28 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
              {
LABEL_94:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v28];
              goto LABEL_77;
            case 8:
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
                  goto LABEL_89;
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

LABEL_89:
              [a1 setSeparatorStyle:v27];
              goto LABEL_78;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_SFPBPunchout);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
          {
            goto LABEL_94;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addPunchoutOptions:v28];
          }

          goto LABEL_77;
        }

        if (v13 == 2)
        {
          v28 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v28];
LABEL_77:

          goto LABEL_78;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v28];
            goto LABEL_77;
          case 4:
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
                goto LABEL_91;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_91:
            [a1 setCanBeHidden:v42];
            goto LABEL_78;
          case 5:
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
                goto LABEL_85;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_85:
            [a1 setHasTopPadding:v20];
            goto LABEL_78;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_78:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBHorizontalScrollCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v35 = objc_alloc_init(_SFPBPunchout);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v35, a2))
            {
LABEL_111:

              return 0;
            }

            PBReaderRecallMark();
            if (v35)
            {
              [a1 addPunchoutOptions:v35];
            }

            goto LABEL_90;
          }

          if (v13 == 2)
          {
            v35 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v35];
LABEL_90:

            goto LABEL_91;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v35 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v35];
              goto LABEL_90;
            case 4:
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
                  goto LABEL_96;
                }
              }

              v42 = (v38 != 0) & ~[a2 hasError];
LABEL_96:
              [a1 setCanBeHidden:v42];
              goto LABEL_91;
            case 5:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v52 & 0x7F) << v21;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_98;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_98:
              [a1 setHasTopPadding:v27];
              goto LABEL_91;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v35 = objc_alloc_init(_SFPBColor);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v35, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v35];
            goto LABEL_90;
          case 0x33:
            v35 = objc_alloc_init(_SFPBCardSection);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBCardSectionReadFrom(v35, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            if (v35)
            {
              [a1 addCardSections:v35];
            }

            goto LABEL_90;
          case 0x34:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v52 & 0x7F) << v28;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v34 = 0;
                goto LABEL_106;
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

LABEL_106:
            [a1 setNumberOfRows:v34];
            goto LABEL_91;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
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
                goto LABEL_108;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_108:
            [a1 setHasBottomPadding:v49];
            goto LABEL_91;
          case 7:
            v35 = PBReaderReadString();
            [a1 setType:v35];
            goto LABEL_90;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v14;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_102;
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

LABEL_102:
            [a1 setSeparatorStyle:v20];
            goto LABEL_91;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_91:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMediaRemoteControlCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 50)
        {
          switch(v13)
          {
            case '3':
              v14 = PBReaderReadString();
              [a1 setPlaybackRouteUniqueIdentifier:v14];
              goto LABEL_89;
            case '5':
              v14 = PBReaderReadString();
              [a1 setPlaybackBundleIdentifier:v14];
              goto LABEL_89;
            case '4':
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
                  goto LABEL_97;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_97:
              [a1 setPlaybackRouteUniqueIdentifierIsEncrypted:v28];
              goto LABEL_90;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setType:v14];
              goto LABEL_89;
            case 8:
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
                  goto LABEL_103;
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

LABEL_103:
              [a1 setSeparatorStyle:v42];
              goto LABEL_90;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
LABEL_108:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              goto LABEL_89;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
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
                goto LABEL_99;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_99:
            [a1 setCanBeHidden:v35];
            goto LABEL_90;
          case 5:
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
                goto LABEL_105;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_105:
            [a1 setHasTopPadding:v49];
            goto LABEL_90;
          case 6:
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
                goto LABEL_95;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_95:
            [a1 setHasBottomPadding:v21];
            goto LABEL_90;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBPunchout);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
              goto LABEL_108;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPunchoutOptions:v14];
            }

            goto LABEL_89;
          case 2:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v14];
            goto LABEL_89;
          case 3:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v14];
LABEL_89:

            goto LABEL_90;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMapPlaceCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 50)
        {
          switch(v13)
          {
            case '3':
              v14 = PBReaderReadData();
              [a1 setMapsData:v14];
              goto LABEL_89;
            case '5':
              v14 = PBReaderReadData();
              [a1 setDetourInfoData:v14];
              goto LABEL_89;
            case '4':
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
                  goto LABEL_97;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_97:
              [a1 setShouldSearchDirectionsAlongCurrentRoute:v28];
              goto LABEL_90;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setType:v14];
              goto LABEL_89;
            case 8:
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
                  goto LABEL_103;
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

LABEL_103:
              [a1 setSeparatorStyle:v42];
              goto LABEL_90;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
LABEL_108:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              goto LABEL_89;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
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
                goto LABEL_99;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_99:
            [a1 setCanBeHidden:v35];
            goto LABEL_90;
          case 5:
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
                goto LABEL_105;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_105:
            [a1 setHasTopPadding:v49];
            goto LABEL_90;
          case 6:
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
                goto LABEL_95;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_95:
            [a1 setHasBottomPadding:v21];
            goto LABEL_90;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBPunchout);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
              goto LABEL_108;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPunchoutOptions:v14];
            }

            goto LABEL_89;
          case 2:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v14];
            goto LABEL_89;
          case 3:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v14];
LABEL_89:

            goto LABEL_90;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBCompactRowCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 6)
      {
        if (v13 > 3)
        {
          switch(v13)
          {
            case 4:
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
                  goto LABEL_109;
                }
              }

              v42 = (v38 != 0) & ~[a2 hasError];
LABEL_109:
              [a1 setCanBeHidden:v42];
              goto LABEL_89;
            case 5:
              v44 = 0;
              v45 = 0;
              v46 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  v49 = [a2 data];
                  [v49 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v52 & 0x7F) << v44;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v11 = v45++ >= 9;
                if (v11)
                {
                  v50 = 0;
                  goto LABEL_111;
                }
              }

              v50 = (v46 != 0) & ~[a2 hasError];
LABEL_111:
              [a1 setHasTopPadding:v50];
              goto LABEL_89;
            case 6:
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
                  goto LABEL_113;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_113:
              [a1 setHasBottomPadding:v21];
              goto LABEL_89;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(_SFPBPunchout);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
              {
LABEL_115:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPunchoutOptions:v14];
              }

              goto LABEL_88;
            case 2:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerTitle:v14];
              goto LABEL_88;
            case 3:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v14];
LABEL_88:

              goto LABEL_89;
          }
        }
      }

      else if (v13 <= 50)
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            [a1 setType:v14];
            goto LABEL_88;
          case 8:
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
            [a1 setSeparatorStyle:v35];
            goto LABEL_89;
          case 9:
            v14 = objc_alloc_init(_SFPBColor);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
            {
              goto LABEL_115;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v14];
            goto LABEL_88;
        }
      }

      else
      {
        if (v13 <= 52)
        {
          if (v13 == 51)
          {
            v14 = objc_alloc_init(_SFPBRichText);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_115;
            }

            PBReaderRecallMark();
            [a1 setTitle:v14];
          }

          else
          {
            v14 = objc_alloc_init(_SFPBRichText);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_115;
            }

            PBReaderRecallMark();
            [a1 setSubtitle:v14];
          }

          goto LABEL_88;
        }

        if (v13 == 54)
        {
          v14 = objc_alloc_init(_SFPBImage);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
          {
            goto LABEL_115;
          }

          PBReaderRecallMark();
          [a1 setImage:v14];
          goto LABEL_88;
        }

        if (v13 == 53)
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
              goto LABEL_103;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_103:
          [a1 setIsSubtitleDetatched:v28];
          goto LABEL_89;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_89:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBWorldMapCardSectionReadFrom(void *a1, void *a2)
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
LABEL_98:

              return 0;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addPunchoutOptions:v28];
            }

            goto LABEL_81;
          }

          if (v13 == 2)
          {
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v28];
            goto LABEL_81;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v28 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v28];
              goto LABEL_81;
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
                  goto LABEL_87;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_87:
              [a1 setCanBeHidden:v35];
              goto LABEL_82;
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
                  goto LABEL_89;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_89:
              [a1 setHasTopPadding:v27];
              goto LABEL_82;
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
              goto LABEL_98;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v28];
            goto LABEL_81;
          case 0x33:
            v28 = objc_alloc_init(_SFPBLatLng);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBLatLngReadFrom(v28, a2))
            {
              goto LABEL_98;
            }

            PBReaderRecallMark();
            [a1 setPinLocation:v28];
            goto LABEL_81;
          case 0x34:
            v28 = PBReaderReadString();
            [a1 setHighlightedTimeZoneName:v28];
LABEL_81:

            goto LABEL_82;
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
                goto LABEL_95;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_95:
            [a1 setHasBottomPadding:v42];
            goto LABEL_82;
          case 7:
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_81;
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
                goto LABEL_93;
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

LABEL_93:
            [a1 setSeparatorStyle:v20];
            goto LABEL_82;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBAttributionFooterCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 7)
      {
        if (v13 <= 51)
        {
          switch(v13)
          {
            case 8:
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
                  goto LABEL_107;
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

LABEL_107:
              [a1 setSeparatorStyle:v42];
              goto LABEL_96;
            case 9:
              v21 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v21, a2))
              {
LABEL_111:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v21];
              goto LABEL_95;
            case 0x33:
              v21 = objc_alloc_init(_SFPBRichText);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v21, a2))
              {
                goto LABEL_111;
              }

              PBReaderRecallMark();
              [a1 setLeadingAttribution:v21];
              goto LABEL_95;
          }
        }

        else
        {
          if (v13 <= 53)
          {
            if (v13 == 52)
            {
              v21 = objc_alloc_init(_SFPBPunchout);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v21, a2))
              {
                goto LABEL_111;
              }

              PBReaderRecallMark();
              [a1 setLeadingAttributionPunchout:v21];
            }

            else
            {
              v21 = objc_alloc_init(_SFPBRichText);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v21, a2))
              {
                goto LABEL_111;
              }

              PBReaderRecallMark();
              [a1 setTrailingAttribution:v21];
            }

            goto LABEL_95;
          }

          if (v13 == 54)
          {
            v21 = objc_alloc_init(_SFPBPunchout);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v21, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setTrailingAttributionPunchout:v21];
            goto LABEL_95;
          }

          if (v13 == 55)
          {
            v21 = objc_alloc_init(_SFPBCommand);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBCommandReadFrom(v21, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setTrailingAttributionCommand:v21];
            goto LABEL_95;
          }
        }
      }

      else if (v13 <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_SFPBPunchout);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v21, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addPunchoutOptions:v21];
            }

            goto LABEL_95;
          case 2:
            v21 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v21];
            goto LABEL_95;
          case 3:
            v21 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v21];
LABEL_95:

            goto LABEL_96;
        }
      }

      else
      {
        if (v13 <= 5)
        {
          if (v13 == 4)
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

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_101:
            [a1 setCanBeHidden:v28];
          }

          else
          {
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
                goto LABEL_109;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_109:
            [a1 setHasTopPadding:v20];
          }

          goto LABEL_96;
        }

        if (v13 == 6)
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
              goto LABEL_103;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_103:
          [a1 setHasBottomPadding:v35];
          goto LABEL_96;
        }

        if (v13 == 7)
        {
          v21 = PBReaderReadString();
          [a1 setType:v21];
          goto LABEL_95;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_96:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBGridCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
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
                goto LABEL_86;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_86:
            [a1 setHasBottomPadding:v35];
            goto LABEL_81;
          }

          if (v13 == 7)
          {
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_80;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x33:
              v28 = objc_alloc_init(_SFPBCardSection);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBCardSectionReadFrom(v28, a2))
              {
LABEL_97:

                return 0;
              }

              PBReaderRecallMark();
              if (v28)
              {
                [a1 addCardSections:v28];
              }

              goto LABEL_80;
            case 9:
              v28 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
              {
                goto LABEL_97;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v28];
              goto LABEL_80;
            case 8:
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

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v23;
              }

LABEL_92:
              [a1 setSeparatorStyle:v27];
              goto LABEL_81;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_SFPBPunchout);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
          {
            goto LABEL_97;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addPunchoutOptions:v28];
          }

          goto LABEL_80;
        }

        if (v13 == 2)
        {
          v28 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v28];
LABEL_80:

          goto LABEL_81;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v28];
            goto LABEL_80;
          case 4:
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
                goto LABEL_94;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_94:
            [a1 setCanBeHidden:v42];
            goto LABEL_81;
          case 5:
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
                goto LABEL_88;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_88:
            [a1 setHasTopPadding:v20];
            goto LABEL_81;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_81:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBPersonHeaderCardSectionReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 51)
      {
        v13 = objc_alloc_init(_SFPBPerson);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBPersonReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPerson:v13];
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

uint64_t _SFPBColorBarCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 52)
      {
        if (v13 == 53)
        {
          v14 = objc_alloc_init(_SFPBRichText);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
LABEL_40:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setTitle:v14];
          goto LABEL_36;
        }

        if (v13 == 54)
        {
          v14 = objc_alloc_init(_SFPBRichText);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setSubtitle:v14];
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 51)
        {
          v14 = objc_alloc_init(_SFPBColor);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setBarColor:v14];
          goto LABEL_36;
        }

        if (v13 == 52)
        {
          v14 = objc_alloc_init(_SFPBRichText);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
            goto LABEL_40;
          }

          PBReaderRecallMark();
          [a1 setTopText:v14];
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

uint64_t _SFPBSplitCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 53)
      {
        switch(v13)
        {
          case '3':
            v14 = objc_alloc_init(_SFPBRichText);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
LABEL_48:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setTopTitle:v14];
            goto LABEL_44;
          case '4':
            v14 = objc_alloc_init(_SFPBRichText);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setSecondaryTopTitle:v14];
            goto LABEL_44;
          case '5':
            v14 = PBReaderReadString();
            [a1 setListPrefix:v14];
            goto LABEL_44;
        }
      }

      else if (v13 > 55)
      {
        if (v13 == 56)
        {
          v14 = objc_alloc_init(_SFPBRichText);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setBottomTitle:v14];
          goto LABEL_44;
        }

        if (v13 == 57)
        {
          v14 = objc_alloc_init(_SFPBRichText);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setBody:v14];
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 54)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addListItems:v14];
          }

          goto LABEL_44;
        }

        if (v13 == 55)
        {
          v14 = PBReaderReadString();
          [a1 setListMoreString:v14];
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

uint64_t _SFPBLinkPresentationCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 52)
      {
        if (v13 == 53)
        {
          v14 = objc_alloc_init(_SFPBPerson);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !_SFPBPersonReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addPeopleToBadge:v14];
          }

          goto LABEL_39;
        }

        if (v13 == 54)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_41;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_41:
          [a1 setIsHighlighted:v21];
          goto LABEL_42;
        }
      }

      else
      {
        if (v13 == 51)
        {
          v14 = PBReaderReadString();
          [a1 setCoreSpotlightIdentifier:v14];
          goto LABEL_39;
        }

        if (v13 == 52)
        {
          v14 = PBReaderReadString();
          [a1 setUrl:v14];
LABEL_39:

          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBFindMyCardSectionReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 51)
      {
        v13 = objc_alloc_init(_SFPBPerson);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBPersonReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPerson:v13];
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

uint64_t _SFPBHeroCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 7)
      {
        if (v13 <= 51)
        {
          switch(v13)
          {
            case 8:
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
                  goto LABEL_114;
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

LABEL_114:
              [a1 setSeparatorStyle:v49];
              goto LABEL_103;
            case 9:
              v21 = objc_alloc_init(_SFPBColor);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v21, a2))
              {
LABEL_122:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v21];
              goto LABEL_102;
            case 0x33:
              v21 = objc_alloc_init(_SFPBRichText);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v21, a2))
              {
                goto LABEL_122;
              }

              PBReaderRecallMark();
              [a1 setTitle:v21];
              goto LABEL_102;
          }
        }

        else
        {
          if (v13 <= 53)
          {
            if (v13 == 52)
            {
              v21 = objc_alloc_init(_SFPBRichText);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v21, a2))
              {
                goto LABEL_122;
              }

              PBReaderRecallMark();
              [a1 setSubtitle:v21];
            }

            else
            {
              v21 = objc_alloc_init(_SFPBButtonItem);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v21, a2))
              {
                goto LABEL_122;
              }

              PBReaderRecallMark();
              if (v21)
              {
                [a1 addButtonItems:v21];
              }
            }

            goto LABEL_102;
          }

          if (v13 == 54)
          {
            v21 = objc_alloc_init(_SFPBImage);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v21, a2))
            {
              goto LABEL_122;
            }

            PBReaderRecallMark();
            [a1 setImage:v21];
            goto LABEL_102;
          }

          if (v13 == 55)
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
                goto LABEL_120;
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

LABEL_120:
            [a1 setImageAlign:v28];
            goto LABEL_103;
          }
        }
      }

      else if (v13 <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_SFPBPunchout);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v21, a2))
            {
              goto LABEL_122;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addPunchoutOptions:v21];
            }

            goto LABEL_102;
          case 2:
            v21 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v21];
            goto LABEL_102;
          case 3:
            v21 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v21];
LABEL_102:

            goto LABEL_103;
        }
      }

      else
      {
        if (v13 <= 5)
        {
          if (v13 == 4)
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
                goto LABEL_108;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_108:
            [a1 setCanBeHidden:v35];
          }

          else
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v14;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_116;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_116:
            [a1 setHasTopPadding:v20];
          }

          goto LABEL_103;
        }

        if (v13 == 6)
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
              goto LABEL_110;
            }
          }

          v42 = (v38 != 0) & ~[a2 hasError];
LABEL_110:
          [a1 setHasBottomPadding:v42];
          goto LABEL_103;
        }

        if (v13 == 7)
        {
          v21 = PBReaderReadString();
          [a1 setType:v21];
          goto LABEL_102;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_103:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBNewsCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 7)
      {
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(_SFPBPunchout);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
              {
LABEL_123:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPunchoutOptions:v14];
              }

              goto LABEL_107;
            case 2:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerTitle:v14];
              goto LABEL_107;
            case 3:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v14];
LABEL_107:

              goto LABEL_108;
          }
        }

        else
        {
          if (v13 <= 5)
          {
            if (v13 == 4)
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
                  goto LABEL_115;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_115:
              [a1 setCanBeHidden:v35];
            }

            else
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
                  goto LABEL_111;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_111:
              [a1 setHasTopPadding:v21];
            }

            goto LABEL_108;
          }

          if (v13 == 6)
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
                goto LABEL_117;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_117:
            [a1 setHasBottomPadding:v42];
            goto LABEL_108;
          }

          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            [a1 setType:v14];
            goto LABEL_107;
          }
        }
      }

      else if (v13 > 52)
      {
        if (v13 <= 54)
        {
          if (v13 == 53)
          {
            v14 = objc_alloc_init(_SFPBImage);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_123;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
          }

          else
          {
            v14 = objc_alloc_init(_SFPBImage);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_123;
            }

            PBReaderRecallMark();
            [a1 setProviderImage:v14];
          }

          goto LABEL_107;
        }

        if (v13 == 55)
        {
          v14 = objc_alloc_init(_SFPBRichText);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
            goto LABEL_123;
          }

          PBReaderRecallMark();
          [a1 setProviderTitle:v14];
          goto LABEL_107;
        }

        if (v13 == 56)
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
              goto LABEL_113;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_113:
          [a1 setOverlayTextInImage:v28];
          goto LABEL_108;
        }
      }

      else
      {
        if (v13 > 50)
        {
          if (v13 == 51)
          {
            v14 = objc_alloc_init(_SFPBRichText);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_123;
            }

            PBReaderRecallMark();
            [a1 setTitle:v14];
          }

          else
          {
            v14 = objc_alloc_init(_SFPBRichText);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_123;
            }

            PBReaderRecallMark();
            [a1 setSubtitle:v14];
          }

          goto LABEL_107;
        }

        if (v13 == 8)
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
              goto LABEL_121;
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

LABEL_121:
          [a1 setSeparatorStyle:v49];
          goto LABEL_108;
        }

        if (v13 == 9)
        {
          v14 = objc_alloc_init(_SFPBColor);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
          {
            goto LABEL_123;
          }

          PBReaderRecallMark();
          [a1 setBackgroundColor:v14];
          goto LABEL_107;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_108:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBMiniCardSectionReadFrom(void *a1, void *a2)
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
              v14 = objc_alloc_init(_SFPBRichText);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
              {
LABEL_104:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setTitle:v14];
              goto LABEL_87;
            case '4':
              v14 = objc_alloc_init(_SFPBRichText);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
              {
                goto LABEL_104;
              }

              PBReaderRecallMark();
              [a1 setSubtitle:v14];
              goto LABEL_87;
            case '5':
              v14 = objc_alloc_init(_SFPBImage);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
              {
                goto LABEL_104;
              }

              PBReaderRecallMark();
              [a1 setImage:v14];
              goto LABEL_87;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setType:v14];
              goto LABEL_87;
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
                  goto LABEL_99;
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

LABEL_99:
              [a1 setSeparatorStyle:v35];
              goto LABEL_88;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
                goto LABEL_104;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              goto LABEL_87;
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
                goto LABEL_95;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_95:
            [a1 setCanBeHidden:v28];
            goto LABEL_88;
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
                goto LABEL_101;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_101:
            [a1 setHasTopPadding:v42];
            goto LABEL_88;
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
                goto LABEL_93;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_93:
            [a1 setHasBottomPadding:v21];
            goto LABEL_88;
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
              goto LABEL_104;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPunchoutOptions:v14];
            }

            goto LABEL_87;
          case 2:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v14];
            goto LABEL_87;
          case 3:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v14];
LABEL_87:

            goto LABEL_88;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_88:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBInfoCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v35 = objc_alloc_init(_SFPBPunchout);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v35, a2))
            {
LABEL_111:

              return 0;
            }

            PBReaderRecallMark();
            if (v35)
            {
              [a1 addPunchoutOptions:v35];
            }

            goto LABEL_90;
          }

          if (v13 == 2)
          {
            v35 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v35];
LABEL_90:

            goto LABEL_91;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v35 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v35];
              goto LABEL_90;
            case 4:
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
                  goto LABEL_96;
                }
              }

              v42 = (v38 != 0) & ~[a2 hasError];
LABEL_96:
              [a1 setCanBeHidden:v42];
              goto LABEL_91;
            case 5:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v52) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v52 & 0x7F) << v21;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_98;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_98:
              [a1 setHasTopPadding:v27];
              goto LABEL_91;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v35 = objc_alloc_init(_SFPBColor);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v35, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v35];
            goto LABEL_90;
          case 0x33:
            v35 = objc_alloc_init(_SFPBInfoTuple);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBInfoTupleReadFrom(v35, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            if (v35)
            {
              [a1 addInfoTuples:v35];
            }

            goto LABEL_90;
          case 0x34:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v52 & 0x7F) << v28;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v34 = 0;
                goto LABEL_106;
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

LABEL_106:
            [a1 setInitiallyVisibleTuples:v34];
            goto LABEL_91;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
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
                goto LABEL_108;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_108:
            [a1 setHasBottomPadding:v49];
            goto LABEL_91;
          case 7:
            v35 = PBReaderReadString();
            [a1 setType:v35];
            goto LABEL_90;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v14;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_102;
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

LABEL_102:
            [a1 setSeparatorStyle:v20];
            goto LABEL_91;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_91:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBCollectionCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 7)
      {
        if (v13 <= 51)
        {
          switch(v13)
          {
            case 8:
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
                  goto LABEL_108;
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

LABEL_108:
              [a1 setSeparatorStyle:v42];
              goto LABEL_97;
            case 9:
              v21 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v21, a2))
              {
LABEL_112:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v21];
              goto LABEL_96;
            case 0x33:
              v21 = objc_alloc_init(_SFPBCardSection);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBCardSectionReadFrom(v21, a2))
              {
                goto LABEL_112;
              }

              PBReaderRecallMark();
              if (v21)
              {
                [a1 addCardSections:v21];
              }

              goto LABEL_96;
          }
        }

        else
        {
          if (v13 <= 53)
          {
            if (v13 == 52)
            {
              v21 = objc_alloc_init(_SFPBRichText);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v21, a2))
              {
                goto LABEL_112;
              }

              PBReaderRecallMark();
              [a1 setTitle:v21];
            }

            else
            {
              v21 = objc_alloc_init(_SFPBCommandButtonItem);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBCommandButtonItemReadFrom(v21, a2))
              {
                goto LABEL_112;
              }

              PBReaderRecallMark();
              [a1 setButtonItem:v21];
            }

            goto LABEL_96;
          }

          if (v13 == 54)
          {
            v21 = objc_alloc_init(_SFPBCollectionStyle);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBCollectionStyleReadFrom(v21, a2))
            {
              goto LABEL_112;
            }

            PBReaderRecallMark();
            [a1 setCollectionStyle:v21];
            goto LABEL_96;
          }

          if (v13 == 55)
          {
            v21 = objc_alloc_init(_SFPBCommandButtonItem);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBCommandButtonItemReadFrom(v21, a2))
            {
              goto LABEL_112;
            }

            PBReaderRecallMark();
            [a1 setTitleButtonItem:v21];
            goto LABEL_96;
          }
        }
      }

      else if (v13 <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_SFPBPunchout);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v21, a2))
            {
              goto LABEL_112;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addPunchoutOptions:v21];
            }

            goto LABEL_96;
          case 2:
            v21 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v21];
            goto LABEL_96;
          case 3:
            v21 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v21];
LABEL_96:

            goto LABEL_97;
        }
      }

      else
      {
        if (v13 <= 5)
        {
          if (v13 == 4)
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
                goto LABEL_102;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_102:
            [a1 setCanBeHidden:v28];
          }

          else
          {
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
                goto LABEL_110;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_110:
            [a1 setHasTopPadding:v20];
          }

          goto LABEL_97;
        }

        if (v13 == 6)
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
              goto LABEL_104;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_104:
          [a1 setHasBottomPadding:v35];
          goto LABEL_97;
        }

        if (v13 == 7)
        {
          v21 = PBReaderReadString();
          [a1 setType:v21];
          goto LABEL_96;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_97:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBCombinedCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
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
                goto LABEL_86;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_86:
            [a1 setHasBottomPadding:v35];
            goto LABEL_81;
          }

          if (v13 == 7)
          {
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_80;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x33:
              v28 = objc_alloc_init(_SFPBCardSection);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBCardSectionReadFrom(v28, a2))
              {
LABEL_97:

                return 0;
              }

              PBReaderRecallMark();
              if (v28)
              {
                [a1 addCardSections:v28];
              }

              goto LABEL_80;
            case 9:
              v28 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
              {
                goto LABEL_97;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v28];
              goto LABEL_80;
            case 8:
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

              if ([a2 hasError])
              {
                v27 = 0;
              }

              else
              {
                v27 = v23;
              }

LABEL_92:
              [a1 setSeparatorStyle:v27];
              goto LABEL_81;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_SFPBPunchout);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
          {
            goto LABEL_97;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addPunchoutOptions:v28];
          }

          goto LABEL_80;
        }

        if (v13 == 2)
        {
          v28 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v28];
LABEL_80:

          goto LABEL_81;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v28];
            goto LABEL_80;
          case 4:
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
                goto LABEL_94;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_94:
            [a1 setCanBeHidden:v42];
            goto LABEL_81;
          case 5:
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
                goto LABEL_88;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_88:
            [a1 setHasTopPadding:v20];
            goto LABEL_81;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_81:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBResponseWrapperCardSectionReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBPatternModel);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPatternModelReadFrom(v14, a2))
          {
LABEL_39:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setPattern_model:v14];
          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_SFPBPatternModel);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPatternModelReadFrom(v14, a2))
          {
            goto LABEL_39;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addPattern_models:v14];
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBCATModel);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBCATModelReadFrom(v14, a2))
          {
            goto LABEL_39;
          }

          PBReaderRecallMark();
          [a1 setCatModel:v14];
          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          [a1 setVisualCATOutput:v14];
LABEL_35:

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBListenToCardSectionReadFrom(void *a1, void *a2)
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
LABEL_100:

              return 0;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addPunchoutOptions:v28];
            }

            goto LABEL_83;
          }

          if (v13 == 2)
          {
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v28];
LABEL_83:

            goto LABEL_84;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v28 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v28];
              goto LABEL_83;
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
                  goto LABEL_89;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_89:
              [a1 setCanBeHidden:v35];
              goto LABEL_84;
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
                  goto LABEL_91;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_91:
              [a1 setHasTopPadding:v27];
              goto LABEL_84;
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
              goto LABEL_100;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v28];
            goto LABEL_83;
          case 0x33:
            v28 = objc_alloc_init(_SFPBMediaMetadata);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBMediaMetadataReadFrom(v28, a2))
            {
              goto LABEL_100;
            }

            PBReaderRecallMark();
            [a1 setMediaMetadata:v28];
            goto LABEL_83;
          case 0x34:
            v28 = objc_alloc_init(_SFPBCardSection);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBCardSectionReadFrom(v28, a2))
            {
              goto LABEL_100;
            }

            PBReaderRecallMark();
            [a1 setFallbackCardSection:v28];
            goto LABEL_83;
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
                goto LABEL_97;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_97:
            [a1 setHasBottomPadding:v42];
            goto LABEL_84;
          case 7:
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_83;
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
                goto LABEL_95;
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

LABEL_95:
            [a1 setSeparatorStyle:v20];
            goto LABEL_84;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_84:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBWatchNowCardSectionReadFrom(void *a1, void *a2)
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
LABEL_98:

              return 0;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addPunchoutOptions:v28];
            }

            goto LABEL_81;
          }

          if (v13 == 2)
          {
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v28];
LABEL_81:

            goto LABEL_82;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v28 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v28];
              goto LABEL_81;
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
                  goto LABEL_87;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_87:
              [a1 setCanBeHidden:v35];
              goto LABEL_82;
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
                  goto LABEL_89;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_89:
              [a1 setHasTopPadding:v27];
              goto LABEL_82;
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
              goto LABEL_98;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v28];
            goto LABEL_81;
          case 0x33:
            v28 = PBReaderReadString();
            [a1 setSectionTitle:v28];
            goto LABEL_81;
          case 0x34:
            v28 = objc_alloc_init(_SFPBWatchListItem);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBWatchListItemReadFrom(v28, a2))
            {
              goto LABEL_98;
            }

            PBReaderRecallMark();
            [a1 setWatchListItem:v28];
            goto LABEL_81;
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
                goto LABEL_95;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_95:
            [a1 setHasBottomPadding:v42];
            goto LABEL_82;
          case 7:
            v28 = PBReaderReadString();
            [a1 setType:v28];
            goto LABEL_81;
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
                goto LABEL_93;
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

LABEL_93:
            [a1 setSeparatorStyle:v20];
            goto LABEL_82;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_82:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBStrokeAnimationCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 6)
      {
        if (v13 > 3)
        {
          switch(v13)
          {
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
                  goto LABEL_96;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_96:
              [a1 setCanBeHidden:v35];
              goto LABEL_78;
            case 5:
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
                  goto LABEL_98;
                }
              }

              v43 = (v39 != 0) & ~[a2 hasError];
LABEL_98:
              [a1 setHasTopPadding:v43];
              goto LABEL_78;
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
                  goto LABEL_100;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_100:
              [a1 setHasBottomPadding:v21];
              goto LABEL_78;
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
LABEL_102:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPunchoutOptions:v14];
              }

              goto LABEL_77;
            case 2:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerTitle:v14];
              goto LABEL_77;
            case 3:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v14];
LABEL_77:

              goto LABEL_78;
          }
        }
      }

      else if (v13 <= 50)
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            [a1 setType:v14];
            goto LABEL_77;
          case 8:
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
                goto LABEL_94;
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

LABEL_94:
            [a1 setSeparatorStyle:v28];
            goto LABEL_78;
          case 9:
            v14 = objc_alloc_init(_SFPBColor);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
            {
              goto LABEL_102;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v14];
            goto LABEL_77;
        }
      }

      else
      {
        if (v13 <= 52)
        {
          if (v13 == 51)
          {
            v14 = PBReaderReadString();
            [a1 setStrokeAnimationRepresentation:v14];
          }

          else
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addStrokeNames:v14];
            }
          }

          goto LABEL_77;
        }

        if (v13 == 53)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addCharacters:v14];
          }

          goto LABEL_77;
        }

        if (v13 == 54)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addPronunciations:v14];
          }

          goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_78:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBButtonListCardSectionReadFrom(void *a1, void *a2)
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
        if (v13 > 49)
        {
          switch(v13)
          {
            case '2':
              v14 = PBReaderReadString();
              [a1 setSectionTitle:v14];
              goto LABEL_84;
            case '3':
              v14 = objc_alloc_init(_SFPBButtonItem);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
              {
LABEL_101:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addButtons:v14];
              }

              goto LABEL_84;
            case '4':
              v14 = PBReaderReadString();
              [a1 setShowMoreButtonTitle:v14];
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

uint64_t _SFPBCommandRowCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 7)
      {
        if (v13 <= 51)
        {
          switch(v13)
          {
            case 8:
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
                  goto LABEL_107;
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

LABEL_107:
              [a1 setSeparatorStyle:v42];
              goto LABEL_96;
            case 9:
              v21 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v21, a2))
              {
LABEL_111:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v21];
              goto LABEL_95;
            case 0x33:
              v21 = objc_alloc_init(_SFPBImage);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v21, a2))
              {
                goto LABEL_111;
              }

              PBReaderRecallMark();
              [a1 setImage:v21];
              goto LABEL_95;
          }
        }

        else
        {
          if (v13 <= 53)
          {
            if (v13 == 52)
            {
              v21 = objc_alloc_init(_SFPBImage);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v21, a2))
              {
                goto LABEL_111;
              }

              PBReaderRecallMark();
              [a1 setToggledImage:v21];
            }

            else
            {
              v21 = objc_alloc_init(_SFPBRichText);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v21, a2))
              {
                goto LABEL_111;
              }

              PBReaderRecallMark();
              [a1 setTitle:v21];
            }

            goto LABEL_95;
          }

          if (v13 == 54)
          {
            v21 = objc_alloc_init(_SFPBRichText);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v21, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setToggledTitle:v21];
            goto LABEL_95;
          }

          if (v13 == 55)
          {
            v21 = objc_alloc_init(_SFPBRichText);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v21, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            [a1 setSubtitle:v21];
            goto LABEL_95;
          }
        }
      }

      else if (v13 <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_SFPBPunchout);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v21, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addPunchoutOptions:v21];
            }

            goto LABEL_95;
          case 2:
            v21 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v21];
            goto LABEL_95;
          case 3:
            v21 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v21];
LABEL_95:

            goto LABEL_96;
        }
      }

      else
      {
        if (v13 <= 5)
        {
          if (v13 == 4)
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

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_101:
            [a1 setCanBeHidden:v28];
          }

          else
          {
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
                goto LABEL_109;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_109:
            [a1 setHasTopPadding:v20];
          }

          goto LABEL_96;
        }

        if (v13 == 6)
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
              goto LABEL_103;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_103:
          [a1 setHasBottomPadding:v35];
          goto LABEL_96;
        }

        if (v13 == 7)
        {
          v21 = PBReaderReadString();
          [a1 setType:v21];
          goto LABEL_95;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_96:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}