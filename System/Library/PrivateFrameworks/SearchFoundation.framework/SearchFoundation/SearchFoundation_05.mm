uint64_t _SFPBLeadingTrailingCardSectionReadFrom(void *a1, void *a2)
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
              v14 = objc_alloc_init(_SFPBCardSection);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBCardSectionReadFrom(v14, a2))
              {
LABEL_106:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addLeadingCardSections:v14];
              }

              goto LABEL_89;
            case '4':
              v14 = objc_alloc_init(_SFPBCardSection);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBCardSectionReadFrom(v14, a2))
              {
                goto LABEL_106;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addTrailingCardSections:v14];
              }

              goto LABEL_89;
            case '5':
              v14 = objc_alloc_init(_SFPBGraphicalFloat);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBGraphicalFloatReadFrom(v14, a2))
              {
                goto LABEL_106;
              }

              PBReaderRecallMark();
              [a1 setLeadingToTrailingRatio:v14];
              goto LABEL_89;
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
                  goto LABEL_101;
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

LABEL_101:
              [a1 setSeparatorStyle:v35];
              goto LABEL_90;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
                goto LABEL_106;
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
                goto LABEL_97;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_97:
            [a1 setCanBeHidden:v28];
            goto LABEL_90;
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
                goto LABEL_103;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_103:
            [a1 setHasTopPadding:v42];
            goto LABEL_90;
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
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
              goto LABEL_106;
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
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBHeroTitleCardSectionReadFrom(void *a1, void *a2)
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
                  goto LABEL_112;
                }
              }

              v42 = (v38 != 0) & ~[a2 hasError];
LABEL_112:
              [a1 setCanBeHidden:v42];
              goto LABEL_90;
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
                  goto LABEL_114;
                }
              }

              v50 = (v46 != 0) & ~[a2 hasError];
LABEL_114:
              [a1 setHasTopPadding:v50];
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
                  goto LABEL_116;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_116:
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
LABEL_118:

                return 0;
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
      }

      else if (v13 <= 50)
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            [a1 setType:v14];
            goto LABEL_89;
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
            [a1 setSeparatorStyle:v35];
            goto LABEL_90;
          case 9:
            v14 = objc_alloc_init(_SFPBColor);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
            {
              goto LABEL_118;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v14];
            goto LABEL_89;
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
              goto LABEL_118;
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
              goto LABEL_118;
            }

            PBReaderRecallMark();
            [a1 setSubtitle:v14];
          }

          goto LABEL_89;
        }

        if (v13 == 53)
        {
          v14 = objc_alloc_init(_SFPBButtonItem);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
          {
            goto LABEL_118;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addButtonItems:v14];
          }

          goto LABEL_89;
        }

        if (v13 == 54)
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
          [a1 setMaxVisibleButtonItems:v28];
          goto LABEL_90;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBLargeTitleDetailedRowCardSectionReadFrom(void *a1, void *a2)
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
LABEL_105:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setTitle:v14];
              goto LABEL_88;
            case '4':
              v14 = objc_alloc_init(_SFPBButtonItem);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
              {
                goto LABEL_105;
              }

              PBReaderRecallMark();
              [a1 setSubtitleButtonItem:v14];
              goto LABEL_88;
            case '5':
              v14 = objc_alloc_init(_SFPBButtonItem);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
              {
                goto LABEL_105;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addTrailingButtonItems:v14];
              }

              goto LABEL_88;
          }
        }

        else
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
              [a1 setSeparatorStyle:v35];
              goto LABEL_89;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
                goto LABEL_105;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              goto LABEL_88;
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
                goto LABEL_96;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_96:
            [a1 setCanBeHidden:v28];
            goto LABEL_89;
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
                goto LABEL_102;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_102:
            [a1 setHasTopPadding:v42];
            goto LABEL_89;
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
                goto LABEL_94;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_94:
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
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
              goto LABEL_105;
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

uint64_t _SFPBSafariTableOfContentsCardSectionReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(_SFPBSafariTableOfContentsItem);
          v31[0] = 0;
          v31[1] = 0;
          if (!PBReaderPlaceMark() || !_SFPBSafariTableOfContentsItemReadFrom(v21, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addTableOfContentsItems:v21];
          }

          goto LABEL_47;
        }

        if (v13 == 4)
        {
          v21 = PBReaderReadString();
          [a1 setAlgorithmVersion:v21];
LABEL_47:

          goto LABEL_56;
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
              goto LABEL_55;
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

LABEL_55:
          [a1 setTableOfContentsType:v28];
          goto LABEL_56;
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
              goto LABEL_51;
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

LABEL_51:
          [a1 setTableOfContentsSource:v20];
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

uint64_t _SFPBRFSummaryItemShortNumberCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_61:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_6:v14];
            goto LABEL_54;
          }

          if (v13 == 8)
          {
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_61;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
            goto LABEL_54;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_61;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_4:v14];
            }

            goto LABEL_54;
          }

          if (v13 == 6)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_61;
            }

            PBReaderRecallMark();
            [a1 setText_5:v14];
            goto LABEL_54;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_61;
          }

          PBReaderRecallMark();
          [a1 setText_1:v14];
          goto LABEL_54;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_61;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addText_3:v14];
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_61;
          }

          PBReaderRecallMark();
          [a1 setNumber:v14];
          goto LABEL_54;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_61;
          }

          PBReaderRecallMark();
          [a1 setText_2:v14];
LABEL_54:

          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSummaryItemTextCardSectionReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
LABEL_46:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setText_2:v14];
          goto LABEL_39;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

          PBReaderRecallMark();
          [a1 setText_1:v14];
          goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

            goto LABEL_39;
          case 4:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_39;
          case 5:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setText_5:v14];
LABEL_39:

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSummaryItemStandardCardSectionReadFrom(void *a1, void *a2)
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
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_59:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_52;
          case 5:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
            goto LABEL_52;
          case 6:
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

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_56:
            [a1 setSuppress_text_2_if_text_1_exceeds_a_single_line:v21];
            goto LABEL_53;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_52;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_2:v14];
            }

            goto LABEL_52;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_59;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

LABEL_52:

            goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFFactItemShortNumberCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_55:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setNumber:v14];
            goto LABEL_51;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_51;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_2:v14];
            }

            goto LABEL_51;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setText_4:v14];
          goto LABEL_51;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(_SFPBRFVisualProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setThumbnail:v14];
          goto LABEL_51;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addText_3:v14];
          }

          goto LABEL_51;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setUnit:v14];
LABEL_51:

          goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFFactItemStandardCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_55:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_51;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
            goto LABEL_51;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            [a1 setText_3:v14];
            goto LABEL_51;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_SFPBRFVisualProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setThumbnail:v14];
          goto LABEL_51;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(_SFPBRFVisualProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setThumbnail2:v14];
          goto LABEL_51;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addText_4:v14];
          }

          goto LABEL_51;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addText_5:v14];
          }

LABEL_51:

          goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFLongItemStandardCardSectionReadFrom(void *a1, void *a2)
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
              goto LABEL_55;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_55:
          [a1 setIs_quote:v20];
          goto LABEL_60;
        }

        goto LABEL_40;
      }

      v28 = objc_alloc_init(_SFPBRFTextProperty);
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();
      [a1 setText_1:v28];

LABEL_60:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38[0] & 0x7F) << v29;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_59;
        }
      }

      v35 = (v31 != 0) & ~[a2 hasError];
LABEL_59:
      [a1 setHas_background_platter:v35];
      goto LABEL_60;
    }

    if (v13 == 4)
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
          goto LABEL_57;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_57:
      [a1 setIs_fresh:v27];
      goto LABEL_60;
    }

LABEL_40:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFPrimaryHeaderRichCardSectionReadFrom(void *a1, void *a2)
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
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_57:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_50;
          case 5:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
            goto LABEL_50;
          case 6:
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
                goto LABEL_54;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_54:
            [a1 setAddTint:v21];
            goto LABEL_51;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_50;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
            goto LABEL_50;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setText_3:v14];
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

uint64_t _SFPBRFPrimaryHeaderStandardCardSectionReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setText_3:v14];
          goto LABEL_42;
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
              goto LABEL_44;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_44:
          [a1 setAddTint:v21];
          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setText_1:v14];
          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setText_2:v14];
LABEL_42:

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

uint64_t _SFPBRFReferenceFootnoteCardSectionReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
          {
LABEL_52:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setText_1:v21];
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
          {
            goto LABEL_52;
          }

          PBReaderRecallMark();
          [a1 setText_2:v21];
          goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
            {
              goto LABEL_52;
            }

            PBReaderRecallMark();
            [a1 setText_3:v21];
            goto LABEL_44;
          case 4:
            v21 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
            {
              goto LABEL_52;
            }

            PBReaderRecallMark();
            [a1 setText_4:v21];
LABEL_44:

            goto LABEL_49;
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
                goto LABEL_48;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_48:
            [a1 setAddTint:v20];
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

uint64_t _SFPBRFReferenceRichCardSectionReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBRFVisualProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setThumbnail:v14];
          goto LABEL_42;
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
              goto LABEL_44;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_44:
          [a1 setAddTint:v21];
          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setText_1:v14];
          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setText_2:v14];
LABEL_42:

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

uint64_t _SFPBRFSimpleItemRichCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_65:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

            goto LABEL_58;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_58;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_58;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
            goto LABEL_58;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_65;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addText_5:v14];
          }

          goto LABEL_58;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_65;
          }

          PBReaderRecallMark();
          [a1 setText_6:v14];
          goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_7:v14];
            goto LABEL_58;
          case 8:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_8:v14];
            goto LABEL_58;
          case 9:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
LABEL_58:

            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSimpleItemStandardCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_50:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_4:v14];
            }

            goto LABEL_46;
          case 5:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setText_5:v14];
            goto LABEL_46;
          case 6:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setText_6:v14];
            goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_46;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
            goto LABEL_46;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

LABEL_46:

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSummaryItemAlignedTextCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_55:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_51;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
            goto LABEL_51;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

            goto LABEL_51;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addText_6:v14];
          }

          goto LABEL_51;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(_SFPBRFVisualProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setThumbnail:v14];
          goto LABEL_51;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setText_4:v14];
          goto LABEL_51;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setText_5:v14];
LABEL_51:

          goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFExpandableStandardCardSectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBRFSummaryItemStandardCardSection);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFSummaryItemStandardCardSectionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setSummary_item_standard_card_section:v13];
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

    v13 = objc_alloc_init(_SFPBRFExpandingComponentContent);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_SFPBRFExpandingComponentContentReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addExpanding_component_content:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFFactItemButtonCardSectionReadFrom(void *a1, void *a2)
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
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_80:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_71;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(_SFPBButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            PBReaderRecallMark();
            [a1 setButton_1:v14];
            goto LABEL_71;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(_SFPBButtonItem);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
              {
                goto LABEL_80;
              }

              PBReaderRecallMark();
              [a1 setButton_2:v14];
              goto LABEL_71;
            case 4:
              v14 = objc_alloc_init(_SFPBButtonItem);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
              {
                goto LABEL_80;
              }

              PBReaderRecallMark();
              [a1 setButton_3:v14];
              goto LABEL_71;
            case 5:
              v14 = objc_alloc_init(_SFPBRFTextProperty);
              v24 = 0;
              v25 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
              {
                goto LABEL_80;
              }

              PBReaderRecallMark();
              [a1 setText_2:v14];
              goto LABEL_71;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
            goto LABEL_71;
          case 0xA:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            PBReaderRecallMark();
            [a1 setThumbnail2:v14];
            goto LABEL_71;
          case 0xB:
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
                goto LABEL_77;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_77:
            [a1 setButtonItemsAreBottom:v21];
            goto LABEL_72;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            PBReaderRecallMark();
            [a1 setText_3:v14];
            goto LABEL_71;
          case 7:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_4:v14];
            }

            goto LABEL_71;
          case 8:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            PBReaderRecallMark();
            [a1 setText_5:v14];
LABEL_71:

            goto LABEL_72;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_72:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFFactItemHeroNumberCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_50:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

            goto LABEL_46;
          case 5:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_46;
          case 6:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setText_5:v14];
            goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setNumber:v14];
            goto LABEL_46;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setUnit:v14];
            goto LABEL_46;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_2:v14];
            }

LABEL_46:

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFPrimaryHeaderMarqueeCardSectionReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBRFVisualProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setThumbnail:v14];
          goto LABEL_42;
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
              goto LABEL_44;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_44:
          [a1 setAddTint:v21];
          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setText_1:v14];
          goto LABEL_42;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setText_2:v14];
LABEL_42:

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

uint64_t _SFPBRFSummaryItemDetailedTextCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_53:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_49;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_53;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
            goto LABEL_49;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_53;
            }

            PBReaderRecallMark();
            [a1 setText_3:v14];
            goto LABEL_49;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_53;
          }

          PBReaderRecallMark();
          [a1 setText_6:v14];
          goto LABEL_49;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(_SFPBRFVisualProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
          {
            goto LABEL_53;
          }

          PBReaderRecallMark();
          [a1 setThumbnail:v14];
          goto LABEL_49;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_53;
          }

          PBReaderRecallMark();
          [a1 setText_4:v14];
          goto LABEL_49;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_53;
          }

          PBReaderRecallMark();
          [a1 setText_5:v14];
LABEL_49:

          goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSimpleItemPlayerCardSectionReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
LABEL_46:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setText_1:v14];
          goto LABEL_39;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

          PBReaderRecallMark();
          [a1 setText_2:v14];
          goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

            goto LABEL_39;
          case 4:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_39;
          case 5:
            v14 = objc_alloc_init(_SFPBButtonItem);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setPlayer:v14];
LABEL_39:

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSummaryItemPairCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_60;
          }

          if (v13 == 7)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setText_5:v14];
            goto LABEL_60;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v14 = objc_alloc_init(_SFPBRFTextProperty);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
              {
                goto LABEL_67;
              }

              PBReaderRecallMark();
              [a1 setText_6:v14];
              goto LABEL_60;
            case 9:
              v14 = objc_alloc_init(_SFPBRFTextProperty);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
              {
                goto LABEL_67;
              }

              PBReaderRecallMark();
              [a1 setText_7:v14];
              goto LABEL_60;
            case 0xA:
              v14 = objc_alloc_init(_SFPBRFTextProperty);
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
              {
                goto LABEL_67;
              }

              PBReaderRecallMark();
              [a1 setText_8:v14];
              goto LABEL_60;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

          PBReaderRecallMark();
          [a1 setText_1:v14];
          goto LABEL_60;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

          PBReaderRecallMark();
          [a1 setText_2:v14];
          goto LABEL_60;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setText_3:v14];
            goto LABEL_60;
          case 4:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setThumbnail_1:v14];
            goto LABEL_60;
          case 5:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            [a1 setThumbnail_2:v14];
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

uint64_t _SFPBRFSummaryItemPairNumberCardSectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setNumber_1:v13];
        goto LABEL_66;
      case 2u:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setNumber_2:v13];
        goto LABEL_66;
      case 3u:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setText_1:v13];
        goto LABEL_66;
      case 4u:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setText_2:v13];
        goto LABEL_66;
      case 5u:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setText_3:v13];
        goto LABEL_66;
      case 6u:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setText_4:v13];
        goto LABEL_66;
      case 7u:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addText_5:v13];
        }

        goto LABEL_66;
      case 8u:
        v13 = objc_alloc_init(_SFPBRFVisualProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setThumbnail_1:v13];
        goto LABEL_66;
      case 9u:
        v13 = objc_alloc_init(_SFPBRFVisualProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setThumbnail_2:v13];
        goto LABEL_66;
      case 0xAu:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setText_6:v13];
        goto LABEL_66;
      case 0xBu:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setText_7:v13];
        goto LABEL_66;
      case 0xCu:
        v13 = objc_alloc_init(_SFPBButtonItem);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setButton_1:v13];
        goto LABEL_66;
      case 0xDu:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setText_8:v13];
        goto LABEL_66;
      case 0xEu:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_70;
        }

        PBReaderRecallMark();
        [a1 setText_9:v13];
        goto LABEL_66;
      case 0xFu:
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (PBReaderPlaceMark() && _SFPBRFTextPropertyReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          [a1 setText_10:v13];
LABEL_66:

LABEL_67:
          v14 = [a2 position];
          if (v14 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_70:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_67;
    }
  }
}

uint64_t _SFPBRFFactItemShortHeroNumberCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_55:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setNumber:v14];
            goto LABEL_51;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_51;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_55;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_2:v14];
            }

            goto LABEL_51;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setText_4:v14];
          goto LABEL_51;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(_SFPBRFVisualProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setThumbnail:v14];
          goto LABEL_51;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addText_3:v14];
          }

          goto LABEL_51;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

          PBReaderRecallMark();
          [a1 setUnit:v14];
LABEL_51:

          goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFFactItemDetailedNumberCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_48:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_3:v14];
            goto LABEL_44;
          case 5:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
            goto LABEL_44;
          case 6:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setNumber:v14];
            goto LABEL_44;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_44;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
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

uint64_t _SFPBRFFactItemHeroButtonCardSectionReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_SFPBButtonItem);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setButton:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_SFPBRFTextProperty);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setNumber:v14];
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

    v14 = objc_alloc_init(_SFPBRFTextProperty);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setText_1:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFFactItemImageRightCardSectionReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_SFPBRFVisualProperty);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setThumbnail:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_SFPBRFTextProperty);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setNumber:v14];
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

    v14 = objc_alloc_init(_SFPBRFTextProperty);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setText_1:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSummaryItemSwitchV2CardSectionReadFrom(void *a1, void *a2)
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
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_57:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_3:v14];
            goto LABEL_50;
          case 5:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_50;
          case 6:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
            goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
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
                goto LABEL_54;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_54:
            [a1 setIs_on:v21];
            goto LABEL_51;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_50;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_57;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
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

uint64_t _SFPBRFTableHeaderCardSectionReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(_SFPBRFTableColumnDefinition);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTableColumnDefinitionReadFrom(v21, a2))
          {
LABEL_67:

            return 0;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addColumns:v21];
          }

          goto LABEL_53;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_SFPBRFTableCell);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTableCellReadFrom(v21, a2))
          {
            goto LABEL_67;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addCells:v21];
          }

          goto LABEL_53;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_SFPBRFTableCell);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTableCellReadFrom(v21, a2))
            {
              goto LABEL_67;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addCompact_cells:v21];
            }

LABEL_53:

            goto LABEL_64;
          case 4:
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
                goto LABEL_59;
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

LABEL_59:
            [a1 setShould_repeat_header_in_flow_layout:v28];
            goto LABEL_64;
          case 5:
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
            [a1 setVertical_alignment:v20];
            goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_64:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFTableRowCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 4)
        {
          v28 = objc_alloc_init(_SFPBRFTableCell);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTableCellReadFrom(v28, a2))
          {
LABEL_60:

            return 0;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addCompact_cells:v28];
          }

          goto LABEL_50;
        }

        if (v13 == 3)
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
              goto LABEL_56;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_56:
          [a1 setScale_to_fit:v27];
          goto LABEL_57;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = objc_alloc_init(_SFPBRFTableCell);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTableCellReadFrom(v28, a2))
          {
            goto LABEL_60;
          }

          PBReaderRecallMark();
          if (v28)
          {
            [a1 addCells:v28];
          }

LABEL_50:

          goto LABEL_57;
        }

        if (v13 == 2)
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
              goto LABEL_54;
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

LABEL_54:
          [a1 setVertical_alignment:v20];
          goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSimpleItemVisualElementCardSectionReadFrom(void *a1, void *a2)
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
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_68:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setFootnote:v14];
            goto LABEL_47;
          case 5:
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
                goto LABEL_64;
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

LABEL_64:
            [a1 setHorizontal_alignment:v28];
            goto LABEL_65;
          case 6:
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
            [a1 setAttribution_style:v21];
            goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setImage:v14];
            goto LABEL_47;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_47;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_68;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
LABEL_47:

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

uint64_t _SFPBRFSummaryItemPlayerCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_48:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_44;
          case 5:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
            goto LABEL_44;
          case 6:
            v14 = objc_alloc_init(_SFPBButtonItem);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setPlayer:v14];
            goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_44;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
            goto LABEL_44;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_48;
            }

            PBReaderRecallMark();
            [a1 setText_3:v14];
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

uint64_t _SFPBRFSummaryItemImageRightCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_50:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_46;
          case 5:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setThumbnail_1:v14];
            goto LABEL_46;
          case 6:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setThumbnail_2:v14];
            goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_46;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_2:v14];
            }

            goto LABEL_46;
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

LABEL_46:

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSummaryItemButtonCardSectionReadFrom(void *a1, void *a2)
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
            v21 = objc_alloc_init(_SFPBButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v21, a2))
            {
LABEL_73:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setButton_2:v21];
            goto LABEL_64;
          }

          if (v13 == 4)
          {
            v21 = objc_alloc_init(_SFPBButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v21, a2))
            {
              goto LABEL_73;
            }

            PBReaderRecallMark();
            [a1 setButton_3:v21];
            goto LABEL_64;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v21 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
            {
              goto LABEL_73;
            }

            PBReaderRecallMark();
            [a1 setText_1:v21];
            goto LABEL_64;
          }

          if (v13 == 2)
          {
            v21 = objc_alloc_init(_SFPBButtonItem);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v21, a2))
            {
              goto LABEL_73;
            }

            PBReaderRecallMark();
            [a1 setButton_1:v21];
            goto LABEL_64;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v21 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
          {
            goto LABEL_73;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addText_2:v21];
          }

          goto LABEL_64;
        }

        if (v13 == 6)
        {
          v21 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
          {
            goto LABEL_73;
          }

          PBReaderRecallMark();
          if (v21)
          {
            [a1 addText_3:v21];
          }

          goto LABEL_64;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v21 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
            {
              goto LABEL_73;
            }

            PBReaderRecallMark();
            [a1 setText_4:v21];
            goto LABEL_64;
          case 8:
            v21 = objc_alloc_init(_SFPBRFVisualProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v21, a2))
            {
              goto LABEL_73;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v21];
LABEL_64:

            goto LABEL_65;
          case 9:
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
                goto LABEL_70;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_70:
            [a1 setButtonItemsAreTrailing:v20];
            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSimpleItemReverseRichCardSectionReadFrom(void *a1, void *a2)
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
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
LABEL_46:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setText_1:v14];
          goto LABEL_39;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_46;
          }

          PBReaderRecallMark();
          [a1 setText_2:v14];
          goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

            goto LABEL_39;
          case 4:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_39;
          case 5:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_46;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
LABEL_39:

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSimpleItemRichSearchResultCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_65:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addText_3:v14];
            }

            goto LABEL_58;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_4:v14];
            goto LABEL_58;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_58;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
            goto LABEL_58;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_65;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addText_5:v14];
          }

          goto LABEL_58;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_65;
          }

          PBReaderRecallMark();
          [a1 setText_6:v14];
          goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_7:v14];
            goto LABEL_58;
          case 8:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setText_8:v14];
            goto LABEL_58;
          case 9:
            v14 = objc_alloc_init(_SFPBRFVisualProperty);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
            {
              goto LABEL_65;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
LABEL_58:

            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFPrimaryHeaderStackedImageCardSectionReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_SFPBRFVisualProperty);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
        {
LABEL_35:

          return 0;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addImages:v14];
        }

        goto LABEL_30;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_SFPBRFTextProperty);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
        {
          goto LABEL_35;
        }

        PBReaderRecallMark();
        [a1 setText_1:v14];
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

    v14 = objc_alloc_init(_SFPBRFTextProperty);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
    {
      goto LABEL_35;
    }

    PBReaderRecallMark();
    [a1 setText_2:v14];
    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFReferenceItemLogoCardSectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBRFVisualProperty);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setThumbnail:v13];
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

uint64_t _SFPBRFReferenceItemButtonCardSectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBButtonItem);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setButton_1:v13];
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

uint64_t _SFPBRFButtonCardSectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBButtonItem);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setButton:v13];
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

uint64_t _SFPBRFBinaryButtonCardSectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBButtonItem);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setPrimary_button:v13];
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

    v13 = objc_alloc_init(_SFPBButtonItem);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setSecondary_button:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFReferenceCenteredCardSectionReadFrom(void *a1, void *a2)
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
          v21 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
          {
LABEL_52:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setText_1:v21];
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
          {
            goto LABEL_52;
          }

          PBReaderRecallMark();
          [a1 setText_2:v21];
          goto LABEL_44;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
            {
              goto LABEL_52;
            }

            PBReaderRecallMark();
            [a1 setText_3:v21];
            goto LABEL_44;
          case 4:
            v21 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v21, a2))
            {
              goto LABEL_52;
            }

            PBReaderRecallMark();
            [a1 setText_4:v21];
LABEL_44:

            goto LABEL_49;
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
                goto LABEL_48;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_48:
            [a1 setAdd_tint:v20];
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

uint64_t _SFPBRFSecondaryHeaderStandardCardSectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setText_1:v13];
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

uint64_t _SFPBRFSecondaryHeaderEmphasizedCardSectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setText_1:v13];
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

uint64_t _SFPBRFMapCardSectionReadFrom(void *a1, void *a2)
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

        v7 |= (LOBYTE(v34) & 0x7F) << v5;
        if ((LOBYTE(v34) & 0x80) == 0)
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
            v14 = objc_alloc_init(_SFPBLatLng);
            v34 = 0.0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_SFPBLatLngReadFrom(v14, a2))
            {
LABEL_71:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPolyline:v14];
            }

            goto LABEL_56;
          case 5:
            v34 = 0.0;
            v29 = [a2 position] + 8;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            [a1 setCameraDistance:v34];
            goto LABEL_68;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (LOBYTE(v34) & 0x7F) << v15;
              if ((LOBYTE(v34) & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_65;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_65:
            [a1 setShowsUserLocation:v21];
            goto LABEL_68;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              LOBYTE(v34) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (LOBYTE(v34) & 0x7F) << v22;
              if ((LOBYTE(v34) & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_63;
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

LABEL_63:
            [a1 setSizeFormat:v28];
            goto LABEL_68;
          case 2:
            v14 = objc_alloc_init(_SFPBRFMapMarker);
            v34 = 0.0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFMapMarkerReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addMarkers:v14];
            }

            goto LABEL_56;
          case 3:
            v14 = objc_alloc_init(_SFPBRFMapAnnotation);
            v34 = 0.0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFMapAnnotationReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addAnnotations:v14];
            }

LABEL_56:

            goto LABEL_68;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFReferenceStandardCardSectionReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(_SFPBRFTextProperty);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setText_1:v20];
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
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        [a1 setAddTint:v19];
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

uint64_t _SFPBRFMultiButtonCardSectionReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(_SFPBButtonItem);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addButtons:v20];
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
        [a1 setLayoutType:v19];
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

uint64_t _SFPBRFDisambiguationTitleCardSectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBRFTextProperty);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setText_1:v13];
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

    v13 = objc_alloc_init(_SFPBRFVisualProperty);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setThumbnail:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSummaryItemExpandableCardSectionReadFrom(void *a1, void *a2)
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
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
LABEL_63:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setText_1:v14];
            goto LABEL_56;
          case 2:
            v14 = objc_alloc_init(_SFPBRFTextProperty);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setText_2:v14];
            goto LABEL_56;
          case 3:
            v14 = objc_alloc_init(_SFPBRFSummaryItemAttribution);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRFSummaryItemAttributionReadFrom(v14, a2))
            {
              goto LABEL_63;
            }

            PBReaderRecallMark();
            [a1 setAttribution:v14];
            goto LABEL_56;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(_SFPBRFVisualProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFVisualPropertyReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setThumbnail:v14];
          goto LABEL_56;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(_SFPBRFTextProperty);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          [a1 setAttribution_caveat:v14];
          goto LABEL_56;
        }
      }

      else
      {
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
              goto LABEL_60;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_60:
          [a1 setAttribution_ignores_expansion:v21];
          goto LABEL_57;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_SFPBRFSummaryItemExpandableContent);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRFSummaryItemExpandableContentReadFrom(v14, a2))
          {
            goto LABEL_63;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addExpanding_component_content:v14];
          }

LABEL_56:

          goto LABEL_57;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_57:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFTextPropertyReadFrom(void *a1, void *a2)
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
        v20 = objc_alloc_init(_SFPBRFTextElement);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextElementReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v20)
        {
          [a1 addText_elements:v20];
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
            goto LABEL_36;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_36:
        [a1 setIs_safe_for_logging:v19];
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

uint64_t _SFPBRFSummaryItemAttributionReadFrom(void *a1, void *a2)
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
        v14 = objc_alloc_init(_SFPBRFTextProperty);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setText_minimal:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_SFPBRFTextProperty);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setText:v14];
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

    v14 = objc_alloc_init(_SFPBRFTextProperty);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !_SFPBRFTextPropertyReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setText_compact:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRFSummaryItemExpandableContentReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(_SFPBRFSimpleItemRichCardSection);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRFSimpleItemRichCardSectionReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setSimple_item_rich_card_section:v13];
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

    v13 = objc_alloc_init(_SFPBCommandReference);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_SFPBCommandReferenceReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setCommand_reference:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}