uint64_t _SFPBNowPlayingCardSectionReadFrom(void *a1, void *a2)
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
            case 'e':
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
                [a1 addMovies:v14];
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

uint64_t _SFPBRichTitleCardSectionReadFrom(void *a1, void *a2)
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
        LOBYTE(v126) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v126 & 0x7F) << v5;
        if ((v126 & 0x80) == 0)
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
                LOBYTE(v126) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v126 & 0x7F) << v15;
                if ((v126 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_222;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_222:
              [a1 setCanBeHidden:v21];
              goto LABEL_210;
            }

            v14 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v14];
          }

          else if (v13 == 1)
          {
            v14 = objc_alloc_init(_SFPBPunchout);
            v126 = 0;
            v127 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
LABEL_266:

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
LABEL_79:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                return 0;
              }

              goto LABEL_210;
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
                LOBYTE(v126) = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v126 & 0x7F) << v36;
                if ((v126 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v42 = 0;
                  goto LABEL_228;
                }
              }

              v42 = (v38 != 0) & ~[a2 hasError];
LABEL_228:
              [a1 setHasTopPadding:v42];
            }

            else
            {
              v22 = 0;
              v23 = 0;
              v24 = 0;
              while (1)
              {
                LOBYTE(v126) = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v126 & 0x7F) << v22;
                if ((v126 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v11 = v23++ >= 9;
                if (v11)
                {
                  v28 = 0;
                  goto LABEL_230;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_230:
              [a1 setHasBottomPadding:v28];
            }

            goto LABEL_210;
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
                LOBYTE(v126) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v126 & 0x7F) << v29;
                if ((v126 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_226;
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

LABEL_226:
              [a1 setSeparatorStyle:v35];
              goto LABEL_210;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v126 = 0;
              v127 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
                goto LABEL_266;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              break;
            default:
              goto LABEL_79;
          }
        }
      }

      else
      {
        switch(v13)
        {
          case 101:
            v14 = PBReaderReadString();
            [a1 setContentAdvisory:v14];
            break;
          case 102:
            v14 = objc_alloc_init(_SFPBImage);
            v126 = 0;
            v127 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_266;
            }

            PBReaderRecallMark();
            [a1 setTitleImage:v14];
            break;
          case 103:
            v60 = 0;
            v61 = 0;
            v62 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v63 = [a2 position] + 1;
              if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v62 |= (v126 & 0x7F) << v60;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v11 = v61++ >= 9;
              if (v11)
              {
                v66 = 0;
                goto LABEL_240;
              }
            }

            v66 = (v62 != 0) & ~[a2 hasError];
LABEL_240:
            [a1 setIsCentered:v66];
            goto LABEL_210;
          case 104:
            v14 = PBReaderReadString();
            [a1 setDescriptionText:v14];
            break;
          case 105:
            LODWORD(v126) = 0;
            v57 = [a2 position] + 4;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 4, v58 <= objc_msgSend(a2, "length")))
            {
              v124 = [a2 data];
              [v124 getBytes:&v126 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            LODWORD(v59) = v126;
            [a1 setRating:v59];
            goto LABEL_210;
          case 106:
            v14 = PBReaderReadString();
            [a1 setRatingText:v14];
            break;
          case 107:
            v14 = objc_alloc_init(_SFPBImage);
            v126 = 0;
            v127 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_266;
            }

            PBReaderRecallMark();
            [a1 setReviewGlyph:v14];
            break;
          case 108:
            v14 = PBReaderReadString();
            [a1 setReviewText:v14];
            break;
          case 109:
            v95 = 0;
            v96 = 0;
            v97 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v98 = [a2 position] + 1;
              if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
              {
                v100 = [a2 data];
                [v100 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v97 |= (v126 & 0x7F) << v95;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v95 += 7;
              v11 = v96++ >= 9;
              if (v11)
              {
                v101 = 0;
                goto LABEL_254;
              }
            }

            v101 = (v97 != 0) & ~[a2 hasError];
LABEL_254:
            [a1 setReviewNewLine:v101];
            goto LABEL_210;
          case 110:
            v14 = objc_alloc_init(_SFPBImage);
            v126 = 0;
            v127 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_266;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addMoreGlyphs:v14];
            }

            break;
          case 111:
            v14 = PBReaderReadString();
            [a1 setAuxiliaryTopText:v14];
            break;
          case 112:
            v14 = PBReaderReadString();
            [a1 setAuxiliaryMiddleText:v14];
            break;
          case 113:
            v14 = PBReaderReadString();
            [a1 setAuxiliaryBottomText:v14];
            break;
          case 114:
            v81 = 0;
            v82 = 0;
            v83 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v84 = [a2 position] + 1;
              if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
              {
                v86 = [a2 data];
                [v86 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v83 |= (v126 & 0x7F) << v81;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              v11 = v82++ >= 9;
              if (v11)
              {
                v87 = 0;
                goto LABEL_250;
              }
            }

            if ([a2 hasError])
            {
              v87 = 0;
            }

            else
            {
              v87 = v83;
            }

LABEL_250:
            [a1 setAuxiliaryBottomTextColor:v87];
            goto LABEL_210;
          case 115:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v126 & 0x7F) << v50;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v56 = 0;
                goto LABEL_238;
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

LABEL_238:
            [a1 setAuxiliaryAlignment:v56];
            goto LABEL_210;
          case 116:
            v67 = 0;
            v68 = 0;
            v69 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v70 = [a2 position] + 1;
              if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
              {
                v72 = [a2 data];
                [v72 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v69 |= (v126 & 0x7F) << v67;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              v11 = v68++ >= 9;
              if (v11)
              {
                v73 = 0;
                goto LABEL_242;
              }
            }

            v73 = (v69 != 0) & ~[a2 hasError];
LABEL_242:
            [a1 setHideVerticalDivider:v73];
            goto LABEL_210;
          case 117:
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v126 & 0x7F) << v43;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                v49 = 0;
                goto LABEL_234;
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

LABEL_234:
            [a1 setTitleAlign:v49];
            goto LABEL_210;
          case 118:
            v74 = 0;
            v75 = 0;
            v76 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v77 = [a2 position] + 1;
              if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
              {
                v79 = [a2 data];
                [v79 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v76 |= (v126 & 0x7F) << v74;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              v11 = v75++ >= 9;
              if (v11)
              {
                v80 = 0;
                goto LABEL_246;
              }
            }

            if ([a2 hasError])
            {
              v80 = 0;
            }

            else
            {
              v80 = v76;
            }

LABEL_246:
            [a1 setTitleWeight:v80];
            goto LABEL_210;
          case 119:
            v88 = 0;
            v89 = 0;
            v90 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v91 = [a2 position] + 1;
              if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
              {
                v93 = [a2 data];
                [v93 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v90 |= (v126 & 0x7F) << v88;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v88 += 7;
              v11 = v89++ >= 9;
              if (v11)
              {
                v94 = 0;
                goto LABEL_252;
              }
            }

            v94 = (v90 != 0) & ~[a2 hasError];
LABEL_252:
            [a1 setTitleNoWrap:v94];
            goto LABEL_210;
          case 120:
            v109 = 0;
            v110 = 0;
            v111 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v112 = [a2 position] + 1;
              if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
              {
                v114 = [a2 data];
                [v114 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v111 |= (v126 & 0x7F) << v109;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              v11 = v110++ >= 9;
              if (v11)
              {
                v115 = 0;
                goto LABEL_260;
              }
            }

            v115 = (v111 != 0) & ~[a2 hasError];
LABEL_260:
            [a1 setThumbnailCropCircle:v115];
            goto LABEL_210;
          case 121:
            v14 = objc_alloc_init(_SFPBImage);
            v126 = 0;
            v127 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_266;
            }

            PBReaderRecallMark();
            [a1 setImageOverlay:v14];
            break;
          case 122:
            v14 = objc_alloc_init(_SFPBActionItem);
            v126 = 0;
            v127 = 0;
            if (!PBReaderPlaceMark() || !_SFPBActionItemReadFrom(v14, a2))
            {
              goto LABEL_266;
            }

            PBReaderRecallMark();
            [a1 setPlayAction:v14];
            break;
          case 123:
            v102 = 0;
            v103 = 0;
            v104 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v105 = [a2 position] + 1;
              if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
              {
                v107 = [a2 data];
                [v107 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v104 |= (v126 & 0x7F) << v102;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              v11 = v103++ >= 9;
              if (v11)
              {
                v108 = 0;
                goto LABEL_258;
              }
            }

            if ([a2 hasError])
            {
              v108 = 0;
            }

            else
            {
              v108 = v104;
            }

LABEL_258:
            [a1 setPlayActionAlign:v108];
            goto LABEL_210;
          case 124:
            v14 = objc_alloc_init(_SFPBMediaOffer);
            v126 = 0;
            v127 = 0;
            if (!PBReaderPlaceMark() || !_SFPBMediaOfferReadFrom(v14, a2))
            {
              goto LABEL_266;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addOffers:v14];
            }

            break;
          case 125:
            v14 = PBReaderReadString();
            [a1 setFootnote:v14];
            break;
          case 126:
            v14 = objc_alloc_init(_SFPBRichText);
            v126 = 0;
            v127 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_266;
            }

            PBReaderRecallMark();
            [a1 setRichSubtitle:v14];
            break;
          case 127:
            v117 = 0;
            v118 = 0;
            v119 = 0;
            while (1)
            {
              LOBYTE(v126) = 0;
              v120 = [a2 position] + 1;
              if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
              {
                v122 = [a2 data];
                [v122 getBytes:&v126 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v119 |= (v126 & 0x7F) << v117;
              if ((v126 & 0x80) == 0)
              {
                break;
              }

              v117 += 7;
              v11 = v118++ >= 9;
              if (v11)
              {
                v123 = 0;
                goto LABEL_262;
              }
            }

            v123 = (v119 != 0) & ~[a2 hasError];
LABEL_262:
            [a1 setSubtitleIsEmphasized:v123];
            goto LABEL_210;
          case 128:
            v14 = objc_alloc_init(_SFPBButtonItem);
            v126 = 0;
            v127 = 0;
            if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
            {
              goto LABEL_266;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addButtonItems:v14];
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
                goto LABEL_79;
              }

              v14 = PBReaderReadString();
              [a1 setSubtitle:v14];
            }

            break;
        }
      }

LABEL_210:
      v116 = [a2 position];
    }

    while (v116 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBRowCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 7)
      {
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(_SFPBPunchout);
              v87 = 0;
              v88 = 0;
              if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
              {
LABEL_181:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPunchoutOptions:v14];
              }

              break;
            case 2:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerTitle:v14];
              break;
            case 3:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v14];
              break;
            default:
              goto LABEL_69;
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
                  goto LABEL_155;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_155:
              [a1 setCanBeHidden:v28];
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
                  goto LABEL_159;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_159:
              [a1 setHasTopPadding:v21];
            }

            goto LABEL_134;
          }

          if (v13 == 6)
          {
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
                goto LABEL_157;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_157:
            [a1 setHasBottomPadding:v35];
            goto LABEL_134;
          }

          if (v13 != 7)
          {
LABEL_69:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_134;
          }

          v14 = PBReaderReadString();
          [a1 setType:v14];
        }
      }

      else
      {
        switch(v13)
        {
          case '3':
            v14 = objc_alloc_init(_SFPBImage);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_181;
            }

            PBReaderRecallMark();
            [a1 setImage:v14];
            break;
          case '4':
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
                goto LABEL_165;
              }
            }

            v56 = (v52 != 0) & ~[a2 hasError];
LABEL_165:
            [a1 setImageIsRightAligned:v56];
            goto LABEL_134;
          case '5':
            v14 = objc_alloc_init(_SFPBRichText);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_181;
            }

            PBReaderRecallMark();
            [a1 setLeadingText:v14];
            break;
          case '6':
            v14 = objc_alloc_init(_SFPBRichText);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_181;
            }

            PBReaderRecallMark();
            [a1 setTrailingText:v14];
            break;
          case '7':
          case '8':
            goto LABEL_69;
          case '9':
            v14 = objc_alloc_init(_SFPBImage);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_181;
            }

            PBReaderRecallMark();
            [a1 setAttributionImage:v14];
            break;
          case ':':
            v14 = PBReaderReadString();
            [a1 setKey:v14];
            break;
          case ';':
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
                goto LABEL_167;
              }
            }

            v63 = (v59 != 0) & ~[a2 hasError];
LABEL_167:
            [a1 setKeyNoWrap:v63];
            goto LABEL_134;
          case '<':
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
                goto LABEL_171;
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

LABEL_171:
            [a1 setKeyWeight:v70];
            goto LABEL_134;
          case '=':
            v14 = PBReaderReadString();
            [a1 setValue:v14];
            break;
          case '>':
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
                goto LABEL_163;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_163:
            [a1 setValueNoWrap:v49];
            goto LABEL_134;
          case '?':
            v72 = 0;
            v73 = 0;
            v74 = 0;
            while (1)
            {
              LOBYTE(v87) = 0;
              v75 = [a2 position] + 1;
              if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
              {
                v77 = [a2 data];
                [v77 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v74 |= (v87 & 0x7F) << v72;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              v11 = v73++ >= 9;
              if (v11)
              {
                v78 = 0;
                goto LABEL_175;
              }
            }

            if ([a2 hasError])
            {
              v78 = 0;
            }

            else
            {
              v78 = v74;
            }

LABEL_175:
            [a1 setValueWeight:v78];
            goto LABEL_134;
          case '@':
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
                goto LABEL_161;
              }
            }

            v42 = (v38 != 0) & ~[a2 hasError];
LABEL_161:
            [a1 setCardPaddingBottom:v42];
            goto LABEL_134;
          case 'A':
            v14 = objc_alloc_init(_SFPBRichText);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_181;
            }

            PBReaderRecallMark();
            [a1 setLeadingSubtitle:v14];
            break;
          case 'B':
            v14 = objc_alloc_init(_SFPBRichText);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_181;
            }

            PBReaderRecallMark();
            [a1 setTrailingSubtitle:v14];
            break;
          default:
            if (v13 == 8)
            {
              v79 = 0;
              v80 = 0;
              v81 = 0;
              while (1)
              {
                LOBYTE(v87) = 0;
                v82 = [a2 position] + 1;
                if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
                {
                  v84 = [a2 data];
                  [v84 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v81 |= (v87 & 0x7F) << v79;
                if ((v87 & 0x80) == 0)
                {
                  break;
                }

                v79 += 7;
                v11 = v80++ >= 9;
                if (v11)
                {
                  v85 = 0;
                  goto LABEL_179;
                }
              }

              if ([a2 hasError])
              {
                v85 = 0;
              }

              else
              {
                v85 = v81;
              }

LABEL_179:
              [a1 setSeparatorStyle:v85];
              goto LABEL_134;
            }

            if (v13 != 9)
            {
              goto LABEL_69;
            }

            v14 = objc_alloc_init(_SFPBColor);
            v87 = 0;
            v88 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
            {
              goto LABEL_181;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v14];
            break;
        }
      }

LABEL_134:
      v71 = [a2 position];
    }

    while (v71 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBScoreboardCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 7)
      {
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              v14 = objc_alloc_init(_SFPBPunchout);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
              {
LABEL_108:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPunchoutOptions:v14];
              }

              goto LABEL_94;
            case 2:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerTitle:v14];
              goto LABEL_94;
            case 3:
              v14 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v14];
LABEL_94:

              goto LABEL_95;
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
                  goto LABEL_100;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_100:
              [a1 setCanBeHidden:v28];
            }

            else
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
                  goto LABEL_98;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_98:
              [a1 setHasTopPadding:v21];
            }

            goto LABEL_95;
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
                goto LABEL_102;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_102:
            [a1 setHasBottomPadding:v35];
            goto LABEL_95;
          }

          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            [a1 setType:v14];
            goto LABEL_94;
          }
        }
      }

      else if (v13 > 100)
      {
        if (v13 <= 102)
        {
          if (v13 == 101)
          {
            v14 = objc_alloc_init(_SFPBSportsTeam);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBSportsTeamReadFrom(v14, a2))
            {
              goto LABEL_108;
            }

            PBReaderRecallMark();
            [a1 setTeam1:v14];
          }

          else
          {
            v14 = objc_alloc_init(_SFPBSportsTeam);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBSportsTeamReadFrom(v14, a2))
            {
              goto LABEL_108;
            }

            PBReaderRecallMark();
            [a1 setTeam2:v14];
          }

          goto LABEL_94;
        }

        if (v13 == 103)
        {
          v14 = PBReaderReadString();
          [a1 setAccessibilityDescription:v14];
          goto LABEL_94;
        }

        if (v13 == 104)
        {
          v14 = PBReaderReadString();
          [a1 setEventStatus:v14];
          goto LABEL_94;
        }
      }

      else if (v13 > 50)
      {
        if (v13 == 51)
        {
          v14 = PBReaderReadString();
          [a1 setTitle:v14];
          goto LABEL_94;
        }

        if (v13 == 52)
        {
          v14 = PBReaderReadString();
          [a1 setSubtitle:v14];
          goto LABEL_94;
        }
      }

      else
      {
        if (v13 == 8)
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
              goto LABEL_106;
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

LABEL_106:
          [a1 setSeparatorStyle:v42];
          goto LABEL_95;
        }

        if (v13 == 9)
        {
          v14 = objc_alloc_init(_SFPBColor);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
          {
            goto LABEL_108;
          }

          PBReaderRecallMark();
          [a1 setBackgroundColor:v14];
          goto LABEL_94;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_95:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBSocialMediaPostCardSectionReadFrom(void *a1, void *a2)
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
                  goto LABEL_125;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_125:
              [a1 setCanBeHidden:v21];
              goto LABEL_120;
            }

            v14 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v14];
            goto LABEL_119;
          }

          if (v13 == 1)
          {
            v14 = objc_alloc_init(_SFPBPunchout);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
LABEL_141:

              return 0;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPunchoutOptions:v14];
            }

            goto LABEL_119;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v14];
            goto LABEL_119;
          }
        }

        else
        {
          if (v13 <= 6)
          {
            if (v13 == 5)
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
                  goto LABEL_131;
                }
              }

              v49 = (v45 != 0) & ~[a2 hasError];
LABEL_131:
              [a1 setHasTopPadding:v49];
            }

            else
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
                  goto LABEL_137;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_137:
              [a1 setHasBottomPadding:v28];
            }

            goto LABEL_120;
          }

          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setType:v14];
              goto LABEL_119;
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
                  goto LABEL_129;
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

LABEL_129:
              [a1 setSeparatorStyle:v42];
              goto LABEL_120;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v59 = 0;
              v60 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
                goto LABEL_141;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              goto LABEL_119;
          }
        }
      }

      else if (v13 > 55)
      {
        if (v13 <= 57)
        {
          if (v13 == 56)
          {
            v14 = objc_alloc_init(_SFPBImage);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_141;
            }

            PBReaderRecallMark();
            [a1 setProfilePicture:v14];
          }

          else
          {
            v14 = objc_alloc_init(_SFPBRichText);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_141;
            }

            PBReaderRecallMark();
            [a1 setPost:v14];
          }

          goto LABEL_119;
        }

        switch(v13)
        {
          case ':':
            v14 = objc_alloc_init(_SFPBImage);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_141;
            }

            PBReaderRecallMark();
            [a1 setPicture:v14];
            goto LABEL_119;
          case ';':
            v14 = PBReaderReadString();
            [a1 setTimestamp:v14];
            goto LABEL_119;
          case '<':
            v14 = PBReaderReadString();
            [a1 setFootnote:v14];
LABEL_119:

            goto LABEL_120;
        }
      }

      else
      {
        if (v13 > 52)
        {
          if (v13 == 53)
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
                goto LABEL_135;
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

LABEL_135:
            [a1 setNameMaxLines:v56];
            goto LABEL_120;
          }

          if (v13 == 54)
          {
            v14 = PBReaderReadString();
            [a1 setHandle:v14];
          }

          else
          {
            v14 = objc_alloc_init(_SFPBImage);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_141;
            }

            PBReaderRecallMark();
            [a1 setVerifiedGlyph:v14];
          }

          goto LABEL_119;
        }

        if (v13 == 51)
        {
          v14 = PBReaderReadString();
          [a1 setName:v14];
          goto LABEL_119;
        }

        if (v13 == 52)
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
              goto LABEL_139;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_139:
          [a1 setNameNoWrap:v35];
          goto LABEL_120;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_120:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBStockChartCardSectionReadFrom(void *a1, void *a2)
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
            v28 = objc_alloc_init(_SFPBURL);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v28, a2))
            {
              goto LABEL_98;
            }

            PBReaderRecallMark();
            [a1 setThirdPartyContentURL:v28];
            goto LABEL_81;
          case 0x34:
            v28 = PBReaderReadData();
            [a1 setChartData:v28];
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

uint64_t _SFPBTableHeaderRowCardSectionReadFrom(void *a1, void *a2)
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
        LOBYTE(v73) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73 & 0x7F) << v5;
        if ((v73 & 0x80) == 0)
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
      if ((v12 >> 3) <= 8)
      {
        if (v13 > 4)
        {
          if (v13 <= 6)
          {
            if (v13 == 5)
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v53 = [a2 position] + 1;
                if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
                {
                  v55 = [a2 data];
                  [v55 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v52 |= (v73 & 0x7F) << v50;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v11 = v51++ >= 9;
                if (v11)
                {
                  v56 = 0;
                  goto LABEL_138;
                }
              }

              v56 = (v52 != 0) & ~[a2 hasError];
LABEL_138:
              [a1 setHasTopPadding:v56];
            }

            else
            {
              v22 = 0;
              v23 = 0;
              v24 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v25 = [a2 position] + 1;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                {
                  v27 = [a2 data];
                  [v27 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v24 |= (v73 & 0x7F) << v22;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v22 += 7;
                v11 = v23++ >= 9;
                if (v11)
                {
                  v28 = 0;
                  goto LABEL_146;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_146:
              [a1 setHasBottomPadding:v28];
            }

            goto LABEL_111;
          }

          if (v13 == 7)
          {
            v21 = PBReaderReadString();
            [a1 setType:v21];
            goto LABEL_110;
          }

          if (v13 == 8)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v73) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v73 & 0x7F) << v36;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_152;
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

LABEL_152:
            [a1 setSeparatorStyle:v42];
            goto LABEL_111;
          }
        }

        else
        {
          if (v13 > 2)
          {
            if (v13 != 3)
            {
              v29 = 0;
              v30 = 0;
              v31 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v73 & 0x7F) << v29;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_148;
                }
              }

              v35 = (v31 != 0) & ~[a2 hasError];
LABEL_148:
              [a1 setCanBeHidden:v35];
              goto LABEL_111;
            }

            v21 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v21];
            goto LABEL_110;
          }

          if (v13 == 1)
          {
            v21 = objc_alloc_init(_SFPBPunchout);
            v73 = 0;
            v74 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v21, a2))
            {
LABEL_154:

              return 0;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addPunchoutOptions:v21];
            }

            goto LABEL_110;
          }

          if (v13 == 2)
          {
            v21 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v21];
LABEL_110:

            goto LABEL_111;
          }
        }
      }

      else if (v13 <= 53)
      {
        if (v13 > 51)
        {
          if (v13 == 52)
          {
            v21 = objc_alloc_init(_SFPBTableAlignmentSchema);
            v73 = 0;
            v74 = 0;
            if (!PBReaderPlaceMark() || !_SFPBTableAlignmentSchemaReadFrom(v21, a2))
            {
              goto LABEL_154;
            }

            PBReaderRecallMark();
            [a1 setAlignmentSchema:v21];
          }

          else
          {
            v21 = objc_alloc_init(_SFPBFormattedText);
            v73 = 0;
            v74 = 0;
            if (!PBReaderPlaceMark() || !_SFPBFormattedTextReadFrom(v21, a2))
            {
              goto LABEL_154;
            }

            PBReaderRecallMark();
            if (v21)
            {
              [a1 addData:v21];
            }
          }

          goto LABEL_110;
        }

        if (v13 == 9)
        {
          v21 = objc_alloc_init(_SFPBColor);
          v73 = 0;
          v74 = 0;
          if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v21, a2))
          {
            goto LABEL_154;
          }

          PBReaderRecallMark();
          [a1 setBackgroundColor:v21];
          goto LABEL_110;
        }

        if (v13 == 51)
        {
          v21 = PBReaderReadString();
          [a1 setTableIdentifier:v21];
          goto LABEL_110;
        }
      }

      else
      {
        if (v13 <= 55)
        {
          if (v13 == 54)
          {
            v65 = 0;
            v66 = 0;
            v67 = 0;
            while (1)
            {
              LOBYTE(v73) = 0;
              v68 = [a2 position] + 1;
              if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
              {
                v70 = [a2 data];
                [v70 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v67 |= (v73 & 0x7F) << v65;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              v11 = v66++ >= 9;
              if (v11)
              {
                v71 = 0;
                goto LABEL_142;
              }
            }

            v71 = (v67 != 0) & ~[a2 hasError];
LABEL_142:
            [a1 setIsSubHeader:v71];
            goto LABEL_111;
          }

          v21 = PBReaderReadString();
          [a1 setTabGroupIdentifier:v21];
          goto LABEL_110;
        }

        switch(v13)
        {
          case '8':
            v58 = 0;
            v59 = 0;
            v60 = 0;
            while (1)
            {
              LOBYTE(v73) = 0;
              v61 = [a2 position] + 1;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
              {
                v63 = [a2 data];
                [v63 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v60 |= (v73 & 0x7F) << v58;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v11 = v59++ >= 9;
              if (v11)
              {
                v64 = 0;
                goto LABEL_140;
              }
            }

            v64 = (v60 != 0) & ~[a2 hasError];
LABEL_140:
            [a1 setReducedRowHeight:v64];
            goto LABEL_111;
          case '9':
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v73) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v73 & 0x7F) << v43;
              if ((v73 & 0x80) == 0)
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
            [a1 setVerticalAlign:v49];
            goto LABEL_111;
          case ':':
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v73) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v73 & 0x7F) << v14;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_144;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_144:
            [a1 setAlignRowsToHeader:v20];
            goto LABEL_111;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_111:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBTableRowCardSectionReadFrom(void *a1, void *a2)
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
        LOBYTE(v73) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73 & 0x7F) << v5;
        if ((v73 & 0x80) == 0)
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
      if ((v12 >> 3) > 49)
      {
        if (v13 <= 53)
        {
          if (v13 > 51)
          {
            if (v13 == 52)
            {
              v14 = objc_alloc_init(_SFPBTableAlignmentSchema);
              v73 = 0;
              v74 = 0;
              if (!PBReaderPlaceMark() || !_SFPBTableAlignmentSchemaReadFrom(v14, a2))
              {
LABEL_159:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setAlignmentSchema:v14];
            }

            else
            {
              v14 = objc_alloc_init(_SFPBFormattedText);
              v73 = 0;
              v74 = 0;
              if (!PBReaderPlaceMark() || !_SFPBFormattedTextReadFrom(v14, a2))
              {
                goto LABEL_159;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addData:v14];
              }
            }

            goto LABEL_106;
          }

          if (v13 == 50)
          {
            v14 = objc_alloc_init(_SFPBRichText);
            v73 = 0;
            v74 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
              goto LABEL_159;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addRichData:v14];
            }

            goto LABEL_106;
          }

          if (v13 == 51)
          {
            v14 = PBReaderReadString();
            [a1 setTableIdentifier:v14];
            goto LABEL_106;
          }
        }

        else
        {
          if (v13 <= 55)
          {
            if (v13 == 54)
            {
              v65 = 0;
              v66 = 0;
              v67 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v68 = [a2 position] + 1;
                if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
                {
                  v70 = [a2 data];
                  [v70 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v67 |= (v73 & 0x7F) << v65;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v11 = v66++ >= 9;
                if (v11)
                {
                  v71 = 0;
                  goto LABEL_155;
                }
              }

              v71 = (v67 != 0) & ~[a2 hasError];
LABEL_155:
              [a1 setIsSubHeader:v71];
              goto LABEL_107;
            }

            v14 = PBReaderReadString();
            [a1 setTabGroupIdentifier:v14];
            goto LABEL_106;
          }

          switch(v13)
          {
            case '8':
              v51 = 0;
              v52 = 0;
              v53 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v54 = [a2 position] + 1;
                if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
                {
                  v56 = [a2 data];
                  [v56 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v53 |= (v73 & 0x7F) << v51;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                v11 = v52++ >= 9;
                if (v11)
                {
                  v57 = 0;
                  goto LABEL_151;
                }
              }

              v57 = (v53 != 0) & ~[a2 hasError];
LABEL_151:
              [a1 setReducedRowHeight:v57];
              goto LABEL_107;
            case '9':
              v43 = 0;
              v44 = 0;
              v45 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v73 & 0x7F) << v43;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  v49 = 0;
                  goto LABEL_147;
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

LABEL_147:
              [a1 setVerticalAlign:v49];
              goto LABEL_107;
            case ':':
              v15 = 0;
              v16 = 0;
              v17 = 0;
              while (1)
              {
                LOBYTE(v73) = 0;
                v18 = [a2 position] + 1;
                if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
                {
                  v20 = [a2 data];
                  [v20 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v17 |= (v73 & 0x7F) << v15;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_149;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_149:
              [a1 setAlignRowsToHeader:v21];
              goto LABEL_107;
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
              LOBYTE(v73) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v73 & 0x7F) << v22;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_139;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_139:
            [a1 setCanBeHidden:v28];
            goto LABEL_107;
          }

          v14 = PBReaderReadString();
          [a1 setPunchoutPickerDismissText:v14];
          goto LABEL_106;
        }

        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBPunchout);
          v73 = 0;
          v74 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
          {
            goto LABEL_159;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addPunchoutOptions:v14];
          }

          goto LABEL_106;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v14];
LABEL_106:

          goto LABEL_107;
        }
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            while (1)
            {
              LOBYTE(v73) = 0;
              v61 = [a2 position] + 1;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
              {
                v63 = [a2 data];
                [v63 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v60 |= (v73 & 0x7F) << v58;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v11 = v59++ >= 9;
              if (v11)
              {
                v64 = 0;
                goto LABEL_153;
              }
            }

            v64 = (v60 != 0) & ~[a2 hasError];
LABEL_153:
            [a1 setHasTopPadding:v64];
          }

          else
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              LOBYTE(v73) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v73 & 0x7F) << v29;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_157;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_157:
            [a1 setHasBottomPadding:v35];
          }

          goto LABEL_107;
        }

        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            [a1 setType:v14];
            goto LABEL_106;
          case 8:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v73) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v73 & 0x7F) << v36;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_143;
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

LABEL_143:
            [a1 setSeparatorStyle:v42];
            goto LABEL_107;
          case 9:
            v14 = objc_alloc_init(_SFPBColor);
            v73 = 0;
            v74 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
            {
              goto LABEL_159;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v14];
            goto LABEL_106;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_107:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBTextColumnsCardSectionReadFrom(void *a1, void *a2)
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
              [a1 setTitle:v14];
              goto LABEL_92;
            case '5':
              v14 = objc_alloc_init(_SFPBTextColumn);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBTextColumnReadFrom(v14, a2))
              {
LABEL_113:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addColumns:v14];
              }

              goto LABEL_92;
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
                  goto LABEL_102;
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

LABEL_102:
              [a1 setTitleWeight:v28];
              goto LABEL_93;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              [a1 setType:v14];
              goto LABEL_92;
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
              goto LABEL_93;
            case 9:
              v14 = objc_alloc_init(_SFPBColor);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
              {
                goto LABEL_113;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v14];
              goto LABEL_92;
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
                goto LABEL_104;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_104:
            [a1 setCanBeHidden:v35];
            goto LABEL_93;
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
                goto LABEL_110;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_110:
            [a1 setHasTopPadding:v49];
            goto LABEL_93;
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
                goto LABEL_98;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_98:
            [a1 setHasBottomPadding:v21];
            goto LABEL_93;
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
              goto LABEL_113;
            }

            PBReaderRecallMark();
            if (v14)
            {
              [a1 addPunchoutOptions:v14];
            }

            goto LABEL_92;
          case 2:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v14];
            goto LABEL_92;
          case 3:
            v14 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v14];
LABEL_92:

            goto LABEL_93;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_93:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBTitleCardSectionReadFrom(void *a1, void *a2)
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
              [a1 setTitle:v14];
              goto LABEL_89;
            case '4':
              v14 = PBReaderReadString();
              [a1 setSubtitle:v14];
              goto LABEL_89;
            case '5':
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
              [a1 setIsCentered:v28];
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

uint64_t _SFPBTrackListCardSectionReadFrom(void *a1, void *a2)
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
            case 'e':
              v14 = objc_alloc_init(_SFPBTrack);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBTrackReadFrom(v14, a2))
              {
LABEL_101:

                return 0;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addTracks:v14];
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

uint64_t _SFPBAudioPlaybackCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 8)
      {
        if (v13 > 63)
        {
          if (v13 <= 65)
          {
            if (v13 == 64)
            {
              v14 = objc_alloc_init(_SFPBRichText);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              [a1 setDetailText:v14];
            }

            else
            {
              v14 = objc_alloc_init(_SFPBRichText);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              [a1 setTitle:v14];
            }

            goto LABEL_111;
          }

          if (v13 == 66)
          {
            v14 = objc_alloc_init(_SFPBRichText);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
            {
LABEL_131:

              return 0;
            }

            PBReaderRecallMark();
            [a1 setSubtitle:v14];
            goto LABEL_111;
          }

          if (v13 == 67)
          {
            v14 = objc_alloc_init(_SFPBImage);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
            goto LABEL_111;
          }
        }

        else
        {
          if (v13 > 61)
          {
            if (v13 == 62)
            {
              v14 = objc_alloc_init(_SFPBAbstractCommand);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBAbstractCommandReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addPlayCommands:v14];
              }
            }

            else
            {
              v14 = objc_alloc_init(_SFPBAbstractCommand);
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !_SFPBAbstractCommandReadFrom(v14, a2))
              {
                goto LABEL_131;
              }

              PBReaderRecallMark();
              if (v14)
              {
                [a1 addStopCommands:v14];
              }
            }

            goto LABEL_111;
          }

          if (v13 == 9)
          {
            v14 = objc_alloc_init(_SFPBColor);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
            {
              goto LABEL_131;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v14];
            goto LABEL_111;
          }

          if (v13 == 61)
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
                goto LABEL_119;
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

LABEL_119:
            [a1 setState:v21];
            goto LABEL_112;
          }
        }
      }

      else if (v13 > 4)
      {
        if (v13 <= 6)
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
                goto LABEL_129;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_129:
            [a1 setHasTopPadding:v49];
          }

          else
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
                goto LABEL_121;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_121:
            [a1 setHasBottomPadding:v28];
          }

          goto LABEL_112;
        }

        if (v13 == 7)
        {
          v14 = PBReaderReadString();
          [a1 setType:v14];
          goto LABEL_111;
        }

        if (v13 == 8)
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
              goto LABEL_127;
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

LABEL_127:
          [a1 setSeparatorStyle:v42];
          goto LABEL_112;
        }
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 != 3)
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
                goto LABEL_123;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_123:
            [a1 setCanBeHidden:v35];
            goto LABEL_112;
          }

          v14 = PBReaderReadString();
          [a1 setPunchoutPickerDismissText:v14];
          goto LABEL_111;
        }

        if (v13 == 1)
        {
          v14 = objc_alloc_init(_SFPBPunchout);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
          {
            goto LABEL_131;
          }

          PBReaderRecallMark();
          if (v14)
          {
            [a1 addPunchoutOptions:v14];
          }

          goto LABEL_111;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setPunchoutPickerTitle:v14];
LABEL_111:

          goto LABEL_112;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_112:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBFlightCardSectionReadFrom(void *a1, void *a2)
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
LABEL_110:

              return 0;
            }

            PBReaderRecallMark();
            if (v35)
            {
              [a1 addPunchoutOptions:v35];
            }

            goto LABEL_89;
          }

          if (v13 == 2)
          {
            v35 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v35];
LABEL_89:

            goto LABEL_90;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v35 = PBReaderReadString();
              [a1 setPunchoutPickerDismissText:v35];
              goto LABEL_89;
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
                  goto LABEL_95;
                }
              }

              v42 = (v38 != 0) & ~[a2 hasError];
LABEL_95:
              [a1 setCanBeHidden:v42];
              goto LABEL_90;
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
                  goto LABEL_97;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_97:
              [a1 setHasTopPadding:v27];
              goto LABEL_90;
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
              goto LABEL_110;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v35];
            goto LABEL_89;
          case 0x33:
            v35 = objc_alloc_init(_SFPBFlight);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBFlightReadFrom(v35, a2))
            {
              goto LABEL_110;
            }

            PBReaderRecallMark();
            [a1 setFlight:v35];
            goto LABEL_89;
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
                goto LABEL_105;
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

LABEL_105:
            [a1 setSelectedLegIndex:v34];
            goto LABEL_90;
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
                goto LABEL_107;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_107:
            [a1 setHasBottomPadding:v49];
            goto LABEL_90;
          case 7:
            v35 = PBReaderReadString();
            [a1 setType:v35];
            goto LABEL_89;
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
                goto LABEL_101;
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

LABEL_101:
            [a1 setSeparatorStyle:v20];
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

uint64_t _SFPBWebCardSectionReadFrom(void *a1, void *a2)
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
            case 0x33:
              v28 = PBReaderReadString();
              [a1 setHtmlString:v28];
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

uint64_t _SFPBMessageCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) > 7)
      {
        if (v13 <= 51)
        {
          switch(v13)
          {
            case 8:
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
                  goto LABEL_121;
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

LABEL_121:
              [a1 setSeparatorStyle:v56];
              goto LABEL_106;
            case 9:
              v28 = objc_alloc_init(_SFPBColor);
              v59 = 0;
              v60 = 0;
              if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v28, a2))
              {
LABEL_129:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setBackgroundColor:v28];
              goto LABEL_105;
            case 0x33:
              v28 = PBReaderReadString();
              [a1 setMessageText:v28];
              goto LABEL_105;
          }
        }

        else
        {
          if (v13 <= 53)
          {
            if (v13 == 52)
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
                  goto LABEL_115;
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

LABEL_115:
              [a1 setMessageStatus:v42];
            }

            else
            {
              v21 = 0;
              v22 = 0;
              v23 = 0;
              while (1)
              {
                LOBYTE(v59) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v59 & 0x7F) << v21;
                if ((v59 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v27 = 0;
                  goto LABEL_127;
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

LABEL_127:
              [a1 setMessageServiceType:v27];
            }

            goto LABEL_106;
          }

          if (v13 == 54)
          {
            v28 = objc_alloc_init(_SFPBURL);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v28, a2))
            {
              goto LABEL_129;
            }

            PBReaderRecallMark();
            [a1 setAudioMessageURL:v28];
            goto LABEL_105;
          }

          if (v13 == 55)
          {
            v28 = objc_alloc_init(_SFPBMessageAttachment);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBMessageAttachmentReadFrom(v28, a2))
            {
              goto LABEL_129;
            }

            PBReaderRecallMark();
            [a1 setMessageAttachment:v28];
            goto LABEL_105;
          }
        }
      }

      else if (v13 <= 3)
      {
        switch(v13)
        {
          case 1:
            v28 = objc_alloc_init(_SFPBPunchout);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v28, a2))
            {
              goto LABEL_129;
            }

            PBReaderRecallMark();
            if (v28)
            {
              [a1 addPunchoutOptions:v28];
            }

            goto LABEL_105;
          case 2:
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerTitle:v28];
            goto LABEL_105;
          case 3:
            v28 = PBReaderReadString();
            [a1 setPunchoutPickerDismissText:v28];
LABEL_105:

            goto LABEL_106;
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
                goto LABEL_111;
              }
            }

            v35 = (v31 != 0) & ~[a2 hasError];
LABEL_111:
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
                goto LABEL_123;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_123:
            [a1 setHasTopPadding:v20];
          }

          goto LABEL_106;
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
              goto LABEL_117;
            }
          }

          v49 = (v45 != 0) & ~[a2 hasError];
LABEL_117:
          [a1 setHasBottomPadding:v49];
          goto LABEL_106;
        }

        if (v13 == 7)
        {
          v28 = PBReaderReadString();
          [a1 setType:v28];
          goto LABEL_105;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_106:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _SFPBDetailedRowCardSectionReadFrom(void *a1, void *a2)
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
      LOBYTE(v72) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v72 & 0x7F) << v6;
      if ((v72 & 0x80) == 0)
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
        v14 = objc_alloc_init(_SFPBPunchout);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addPunchoutOptions:v14];
        }

        goto LABEL_156;
      case 2u:
        v14 = PBReaderReadString();
        [a1 setPunchoutPickerTitle:v14];
        goto LABEL_156;
      case 3u:
        v14 = PBReaderReadString();
        [a1 setPunchoutPickerDismissText:v14];
        goto LABEL_156;
      case 4u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v72 & 0x7F) << v57;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            v63 = 0;
            goto LABEL_173;
          }
        }

        v63 = (v59 != 0) & ~[a2 hasError];
LABEL_173:
        [a1 setCanBeHidden:v63];
        goto LABEL_157;
      case 5u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v72 & 0x7F) << v64;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v70 = 0;
            goto LABEL_175;
          }
        }

        v70 = (v66 != 0) & ~[a2 hasError];
LABEL_175:
        [a1 setHasTopPadding:v70];
        goto LABEL_157;
      case 6u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
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
            goto LABEL_165;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_165:
        [a1 setHasBottomPadding:v42];
        goto LABEL_157;
      case 7u:
        v14 = PBReaderReadString();
        [a1 setType:v14];
        goto LABEL_156;
      case 8u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v72 & 0x7F) << v43;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v49 = 0;
            goto LABEL_169;
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

LABEL_169:
        [a1 setSeparatorStyle:v49];
        goto LABEL_157;
      case 9u:
        v14 = objc_alloc_init(_SFPBColor);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setBackgroundColor:v14];
        goto LABEL_156;
      case 0x33u:
        v14 = objc_alloc_init(_SFPBImage);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setThumbnail:v14];
        goto LABEL_156;
      case 0x34u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v72 & 0x7F) << v22;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_161;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_161:
        [a1 setPreventThumbnailImageScaling:v28];
        goto LABEL_157;
      case 0x35u:
        v14 = objc_alloc_init(_SFPBRichText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setTitle:v14];
        goto LABEL_156;
      case 0x36u:
        v14 = objc_alloc_init(_SFPBFormattedText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFormattedTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setSecondaryTitle:v14];
        goto LABEL_156;
      case 0x37u:
        v14 = objc_alloc_init(_SFPBImage);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setSecondaryTitleImage:v14];
        goto LABEL_156;
      case 0x38u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v72 & 0x7F) << v50;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v56 = 0;
            goto LABEL_171;
          }
        }

        v56 = (v52 != 0) & ~[a2 hasError];
LABEL_171:
        [a1 setIsSecondaryTitleDetached:v56];
        goto LABEL_157;
      case 0x39u:
        v14 = objc_alloc_init(_SFPBRichText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addDescriptions:v14];
        }

        goto LABEL_156;
      case 0x3Au:
        v14 = objc_alloc_init(_SFPBRichText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setFootnote:v14];
        goto LABEL_156;
      case 0x3Bu:
        v14 = objc_alloc_init(_SFPBFormattedText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFormattedTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setTrailingTopText:v14];
        goto LABEL_156;
      case 0x3Cu:
        v14 = objc_alloc_init(_SFPBFormattedText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFormattedTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setTrailingMiddleText:v14];
        goto LABEL_156;
      case 0x3Du:
        v14 = objc_alloc_init(_SFPBFormattedText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBFormattedTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setTrailingBottomText:v14];
        goto LABEL_156;
      case 0x3Eu:
        v14 = objc_alloc_init(_SFPBActionItem);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBActionItemReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setAction:v14];
        goto LABEL_156;
      case 0x3Fu:
        v14 = objc_alloc_init(_SFPBButton);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setButton:v14];
        goto LABEL_156;
      case 0x40u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v72 & 0x7F) << v29;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_163;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_163:
        [a1 setShouldUseCompactDisplay:v35];
        goto LABEL_157;
      case 0x41u:
        v14 = objc_alloc_init(_SFPBButtonItem);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBButtonItemReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addButtonItems:v14];
        }

        goto LABEL_156;
      case 0x42u:
        v14 = objc_alloc_init(_SFPBImage);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setTrailingThumbnail:v14];
        goto LABEL_156;
      case 0x43u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v72) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v72 & 0x7F) << v15;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_159;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_159:
        [a1 setButtonItemsAreTrailing:v21];
        goto LABEL_157;
      case 0x44u:
        v14 = objc_alloc_init(_SFPBRichText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setTopText:v14];
        goto LABEL_156;
      case 0x45u:
        v14 = objc_alloc_init(_SFPBRichText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setRichTrailingTopText:v14];
        goto LABEL_156;
      case 0x46u:
        v14 = objc_alloc_init(_SFPBRichText);
        v72 = 0;
        v73 = 0;
        if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
        {
          goto LABEL_178;
        }

        PBReaderRecallMark();
        [a1 setRichTrailingMiddleText:v14];
        goto LABEL_156;
      case 0x47u:
        v14 = objc_alloc_init(_SFPBRichText);
        v72 = 0;
        v73 = 0;
        if (PBReaderPlaceMark() && _SFPBRichTextReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setRichTrailingBottomText:v14];
LABEL_156:

LABEL_157:
          v4 = a2;
          continue;
        }

LABEL_178:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_157;
    }
  }
}

uint64_t _SFPBImagesCardSectionReadFrom(void *a1, void *a2)
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
LABEL_109:

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
              goto LABEL_109;
            }

            PBReaderRecallMark();
            [a1 setBackgroundColor:v35];
            goto LABEL_90;
          case 0x33:
            v35 = objc_alloc_init(_SFPBImage);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v35, a2))
            {
              goto LABEL_109;
            }

            PBReaderRecallMark();
            if (v35)
            {
              [a1 addImages:v35];
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
                goto LABEL_104;
              }
            }

            v34 = (v30 != 0) & ~[a2 hasError];
LABEL_104:
            [a1 setBorderless:v34];
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
                goto LABEL_106;
              }
            }

            v49 = (v45 != 0) & ~[a2 hasError];
LABEL_106:
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

uint64_t _SFPBSuggestionCardSectionReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) <= 8)
      {
        if (v13 > 4)
        {
          if (v13 <= 6)
          {
            if (v13 == 5)
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
              [a1 setHasTopPadding:v49];
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
                  goto LABEL_131;
                }
              }

              v21 = (v17 != 0) & ~[a2 hasError];
LABEL_131:
              [a1 setHasBottomPadding:v21];
            }

            goto LABEL_109;
          }

          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            [a1 setType:v14];
            goto LABEL_108;
          }

          if (v13 == 8)
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
                goto LABEL_137;
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

LABEL_137:
            [a1 setSeparatorStyle:v35];
            goto LABEL_109;
          }
        }

        else
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
                  goto LABEL_133;
                }
              }

              v28 = (v24 != 0) & ~[a2 hasError];
LABEL_133:
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
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBPunchoutReadFrom(v14, a2))
            {
LABEL_139:

              return 0;
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
      }

      else if (v13 <= 53)
      {
        if (v13 > 51)
        {
          if (v13 == 52)
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
            [a1 setIsContact:v42];
            goto LABEL_109;
          }

          v14 = PBReaderReadString();
          [a1 setScopedSearchSectionBundleIdentifier:v14];
          goto LABEL_108;
        }

        if (v13 == 9)
        {
          v14 = objc_alloc_init(_SFPBColor);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !_SFPBColorReadFrom(v14, a2))
          {
            goto LABEL_139;
          }

          PBReaderRecallMark();
          [a1 setBackgroundColor:v14];
          goto LABEL_108;
        }

        if (v13 == 51)
        {
          v14 = objc_alloc_init(_SFPBRichText);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
            goto LABEL_139;
          }

          PBReaderRecallMark();
          [a1 setSuggestionText:v14];
          goto LABEL_108;
        }
      }

      else
      {
        if (v13 <= 55)
        {
          if (v13 == 54)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            while (1)
            {
              LOBYTE(v59) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v59 & 0x7F) << v51;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v57 = 0;
                goto LABEL_129;
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

LABEL_129:
            [a1 setSuggestionType:v57];
            goto LABEL_109;
          }

          v14 = objc_alloc_init(_SFPBRichText);
          v59 = 0;
          v60 = 0;
          if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v14, a2))
          {
            goto LABEL_139;
          }

          PBReaderRecallMark();
          [a1 setDetailText:v14];
          goto LABEL_108;
        }

        switch(v13)
        {
          case '8':
            v14 = objc_alloc_init(_SFPBImage);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBImageReadFrom(v14, a2))
            {
              goto LABEL_139;
            }

            PBReaderRecallMark();
            [a1 setThumbnail:v14];
            goto LABEL_108;
          case '9':
            v14 = objc_alloc_init(_SFPBFormattedText);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBFormattedTextReadFrom(v14, a2))
            {
              goto LABEL_139;
            }

            PBReaderRecallMark();
            [a1 setTrailingMiddleText:v14];
            goto LABEL_108;
          case ':':
            v14 = objc_alloc_init(_SFPBFormattedText);
            v59 = 0;
            v60 = 0;
            if (!PBReaderPlaceMark() || !_SFPBFormattedTextReadFrom(v14, a2))
            {
              goto LABEL_139;
            }

            PBReaderRecallMark();
            [a1 setTrailingBottomText:v14];
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

uint64_t _SFPBSelectableGridCardSectionReadFrom(void *a1, void *a2)
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
            v35 = objc_alloc_init(_SFPBTitleSubtitleTuple);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !_SFPBTitleSubtitleTupleReadFrom(v35, a2))
            {
              goto LABEL_111;
            }

            PBReaderRecallMark();
            if (v35)
            {
              [a1 addEntries:v35];
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
            [a1 setInitialSelectedIndex:v34];
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

uint64_t _SFPBSectionHeaderCardSectionReadFrom(void *a1, void *a2)
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
              v28 = objc_alloc_init(_SFPBRichText);
              v45 = 0;
              v46 = 0;
              if (!PBReaderPlaceMark() || !_SFPBRichTextReadFrom(v28, a2))
              {
LABEL_96:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setText:v28];
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

uint64_t _SFPBMetaInfoCardSectionReadFrom(void *a1, void *a2)
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
            [a1 setTrending:v28];
            goto LABEL_89;
          }

          v14 = objc_alloc_init(_SFPBURL);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v14, a2))
          {
            goto LABEL_115;
          }

          PBReaderRecallMark();
          [a1 setContentURL:v14];
          goto LABEL_88;
        }

        if (v13 == 53)
        {
          v14 = objc_alloc_init(_SFPBURL);
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !_SFPBURLReadFrom(v14, a2))
          {
            goto LABEL_115;
          }

          PBReaderRecallMark();
          [a1 setHostPageURL:v14];
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
          [a1 setBadge:v14];
          goto LABEL_88;
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