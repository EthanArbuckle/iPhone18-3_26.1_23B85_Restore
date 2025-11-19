uint64_t PREAMResponsesViewedReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 12)
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 60) |= 2u;
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
                v22 = 0;
                goto LABEL_63;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_63:
            v38 = 32;
LABEL_70:
            *(a1 + v38) = v22;
            goto LABEL_71;
          case 0xB:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 0xC:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          default:
            goto LABEL_46;
        }
      }

      else
      {
        if (v13 > 23)
        {
          if (v13 == 24)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              v42 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v42 & 0x7F) << v30;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                LOBYTE(v36) = 0;
                goto LABEL_65;
              }
            }

            v36 = (v32 != 0) & ~[a2 hasError];
LABEL_65:
            *(a1 + 56) = v36;
            goto LABEL_71;
          }

          if (v13 != 25)
          {
LABEL_46:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            v43 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v43 & 0x7F) << v16;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_69;
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

LABEL_69:
          v38 = 8;
          goto LABEL_70;
        }

        if (v13 == 13)
        {
          v14 = PBReaderReadString();
          v15 = 48;
        }

        else
        {
          if (v13 != 21)
          {
            goto LABEL_46;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }
      }

      v37 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_71:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PREUMEngagedResponseListReadFrom(uint64_t a1, void *a2)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(PREUMTrialExperiment);
            objc_storeStrong((a1 + 24), v21);
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !PREUMTrialExperimentReadFrom(v21, a2))
            {
LABEL_92:

              return 0;
            }

            goto LABEL_72;
          case 2:
            v21 = objc_alloc_init(PREUMMessageMetadata);
            objc_storeStrong((a1 + 48), v21);
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !PREUMMessageMetadataReadFrom(v21, a2))
            {
              goto LABEL_92;
            }

            goto LABEL_72;
          case 3:
            v21 = objc_alloc_init(PREUMResponseItem);
            [a1 addItems:v21];
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !PREUMResponseItemReadFrom(v21, a2))
            {
              goto LABEL_92;
            }

LABEL_72:
            PBReaderRecallMark();

            goto LABEL_90;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 56) |= 8u;
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
              v28 = 0;
              goto LABEL_80;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v37;
          }

LABEL_80:
          v41 = 36;
          goto LABEL_89;
        }

        if (v13 == 7)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v44) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v44 & 0x7F) << v22;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_88;
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

LABEL_88:
          v41 = 32;
          goto LABEL_89;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            LOBYTE(v44) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v44 & 0x7F) << v29;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v31;
          }

LABEL_76:
          v41 = 16;
LABEL_89:
          *(a1 + v41) = v28;
          goto LABEL_90;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 56) |= 1u;
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
              goto LABEL_84;
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

LABEL_84:
          *(a1 + 8) = v20;
          goto LABEL_90;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PREAMEngagedResponseReadFrom(uint64_t a1, void *a2)
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
        v106 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v106 & 0x7F) << v5;
        if ((v106 & 0x80) == 0)
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
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 116) |= 8u;
          while (1)
          {
            v113 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v113 & 0x7F) << v13;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_168:
              v104 = 64;
              goto LABEL_202;
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

          goto LABEL_168;
        case 2u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 116) |= 0x200u;
          while (1)
          {
            v112 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v112 & 0x7F) << v48;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v50;
          }

LABEL_172:
          v104 = 88;
          goto LABEL_202;
        case 3u:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 116) |= 0x100u;
          while (1)
          {
            v111 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v111 & 0x7F) << v35;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_160;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v37;
          }

LABEL_160:
          v104 = 84;
          goto LABEL_202;
        case 4u:
          v72 = 0;
          v73 = 0;
          v74 = 0;
          *(a1 + 116) |= 0x80u;
          while (1)
          {
            v110 = 0;
            v75 = [a2 position] + 1;
            if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
            {
              v77 = [a2 data];
              [v77 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v74 |= (v110 & 0x7F) << v72;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v11 = v73++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_186;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v74;
          }

LABEL_186:
          v104 = 80;
          goto LABEL_202;
        case 5u:
          v78 = 0;
          v79 = 0;
          v80 = 0;
          *(a1 + 116) |= 4u;
          while (1)
          {
            v116 = 0;
            v81 = [a2 position] + 1;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
            {
              v83 = [a2 data];
              [v83 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v80 |= (v116 & 0x7F) << v78;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v11 = v79++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v80;
          }

LABEL_190:
          v104 = 40;
          goto LABEL_202;
        case 6u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 116) |= 2u;
          while (1)
          {
            v115 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v115 & 0x7F) << v41;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v43;
          }

LABEL_164:
          v104 = 24;
          goto LABEL_202;
        case 7u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 116) |= 0x20u;
          while (1)
          {
            v109 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v109 & 0x7F) << v54;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_176;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v56;
          }

LABEL_176:
          v104 = 72;
          goto LABEL_202;
        case 8u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 116) |= 0x10u;
          while (1)
          {
            v108 = 0;
            v63 = [a2 position] + 1;
            if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
            {
              v65 = [a2 data];
              [v65 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v62 |= (v108 & 0x7F) << v60;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v11 = v61++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_180;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v62;
          }

LABEL_180:
          v104 = 68;
          goto LABEL_202;
        case 9u:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          *(a1 + 116) |= 0x40u;
          while (1)
          {
            v107 = 0;
            v88 = [a2 position] + 1;
            if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
            {
              v90 = [a2 data];
              [v90 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v87 |= (v107 & 0x7F) << v85;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v11 = v86++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_194;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v87;
          }

LABEL_194:
          v104 = 76;
          goto LABEL_202;
        case 0xBu:
          v27 = PBReaderReadString();
          v28 = 16;
          goto LABEL_125;
        case 0xCu:
          v27 = PBReaderReadString();
          v28 = 96;
          goto LABEL_125;
        case 0xDu:
          v27 = PBReaderReadString();
          v28 = 104;
          goto LABEL_125;
        case 0x15u:
          v27 = PBReaderReadString();
          v28 = 32;
          goto LABEL_125;
        case 0x16u:
          v27 = PBReaderReadString();
          v28 = 56;
          goto LABEL_125;
        case 0x17u:
          v27 = PBReaderReadString();
          v28 = 48;
LABEL_125:
          v84 = *(a1 + v28);
          *(a1 + v28) = v27;

          goto LABEL_203;
        case 0x18u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 116) |= 0x800u;
          while (1)
          {
            v120 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              v71 = [a2 data];
              [v71 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v120 & 0x7F) << v66;
            if ((v120 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v11 = v67++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_182;
            }
          }

          v26 = (v68 != 0) & ~[a2 hasError];
LABEL_182:
          v103 = 113;
          goto LABEL_197;
        case 0x19u:
          v97 = 0;
          v98 = 0;
          v99 = 0;
          *(a1 + 116) |= 1u;
          while (1)
          {
            v114 = 0;
            v100 = [a2 position] + 1;
            if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
            {
              v102 = [a2 data];
              [v102 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v99 |= (v114 & 0x7F) << v97;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v97 += 7;
            v11 = v98++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_201;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v99;
          }

LABEL_201:
          v104 = 8;
LABEL_202:
          *(a1 + v104) = v19;
          goto LABEL_203;
        case 0x1Au:
          v91 = 0;
          v92 = 0;
          v93 = 0;
          *(a1 + 116) |= 0x400u;
          while (1)
          {
            v119 = 0;
            v94 = [a2 position] + 1;
            if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
            {
              v96 = [a2 data];
              [v96 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v93 |= (v119 & 0x7F) << v91;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v91 += 7;
            v11 = v92++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_196;
            }
          }

          v26 = (v93 != 0) & ~[a2 hasError];
LABEL_196:
          v103 = 112;
          goto LABEL_197;
        case 0x1Bu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 116) |= 0x1000u;
          while (1)
          {
            v118 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v118 & 0x7F) << v20;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_154;
            }
          }

          v26 = (v22 != 0) & ~[a2 hasError];
LABEL_154:
          v103 = 114;
          goto LABEL_197;
        case 0x1Cu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 116) |= 0x2000u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_203;
      }

      while (1)
      {
        v117 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v117 & 0x7F) << v29;
        if ((v117 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          LOBYTE(v26) = 0;
          goto LABEL_156;
        }
      }

      v26 = (v31 != 0) & ~[a2 hasError];
LABEL_156:
      v103 = 115;
LABEL_197:
      *(a1 + v103) = v26;
LABEL_203:
      v105 = [a2 position];
    }

    while (v105 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id pre_xpc_handle()
{
  if (pre_xpc_handle__pasOnceToken0 != -1)
  {
    dispatch_once(&pre_xpc_handle__pasOnceToken0, &__block_literal_global_385);
  }

  v1 = pre_xpc_handle__pasExprOnceResult;

  return v1;
}

void __pre_xpc_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.experiments", "XPCClient");
  v2 = pre_xpc_handle__pasExprOnceResult;
  pre_xpc_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pre_responses_handle()
{
  if (pre_responses_handle__pasOnceToken1 != -1)
  {
    dispatch_once(&pre_responses_handle__pasOnceToken1, &__block_literal_global_4);
  }

  v1 = pre_responses_handle__pasExprOnceResult;

  return v1;
}

void __pre_responses_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.experiments", "Responses");
  v2 = pre_responses_handle__pasExprOnceResult;
  pre_responses_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pre_locale_handle()
{
  if (pre_locale_handle__pasOnceToken2 != -1)
  {
    dispatch_once(&pre_locale_handle__pasOnceToken2, &__block_literal_global_7);
  }

  v1 = pre_locale_handle__pasExprOnceResult;

  return v1;
}

void __pre_locale_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.experiments", "Locale");
  v2 = pre_locale_handle__pasExprOnceResult;
  pre_locale_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pre_scales_handle()
{
  if (pre_scales_handle__pasOnceToken3 != -1)
  {
    dispatch_once(&pre_scales_handle__pasOnceToken3, &__block_literal_global_10);
  }

  v1 = pre_scales_handle__pasExprOnceResult;

  return v1;
}

void __pre_scales_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.experiments", "Scales");
  v2 = pre_scales_handle__pasExprOnceResult;
  pre_scales_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id pre_signpost_handle()
{
  if (pre_signpost_handle__pasOnceToken4 != -1)
  {
    dispatch_once(&pre_signpost_handle__pasOnceToken4, &__block_literal_global_13);
  }

  v1 = pre_signpost_handle__pasExprOnceResult;

  return v1;
}

void __pre_signpost_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.experiments", "Signposts");
  v2 = pre_signpost_handle__pasExprOnceResult;
  pre_signpost_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

uint64_t PREUMMessageMetadataReadFrom(uint64_t a1, void *a2)
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
        v47 = 0;
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
        switch(v13)
        {
          case 1:
            v21 = PBReaderReadString();
            v22 = 16;
            break;
          case 2:
            v21 = PBReaderReadString();
            v22 = 32;
            break;
          case 3:
            v21 = PBReaderReadString();
            v22 = 24;
            break;
          default:
            goto LABEL_46;
        }

        v43 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        if (v13 > 6)
        {
          if (v13 != 7)
          {
            if (v13 != 8)
            {
LABEL_46:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_82;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 44) |= 4u;
            while (1)
            {
              v48 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v48 & 0x7F) << v23;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_80;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_80:
            v44 = 40;
            goto LABEL_81;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v51 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v51 & 0x7F) << v37;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v39;
          }

LABEL_73:
          v45 = 8;
        }

        else
        {
          if (v13 == 4)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 44) |= 8u;
            while (1)
            {
              v49 = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v49 & 0x7F) << v31;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_69;
              }
            }

            v29 = (v33 != 0) & ~[a2 hasError];
LABEL_69:
            v44 = 41;
LABEL_81:
            *(a1 + v44) = v29;
            goto LABEL_82;
          }

          if (v13 != 6)
          {
            goto LABEL_46;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v50 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50 & 0x7F) << v14;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_77;
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

LABEL_77:
          v45 = 12;
        }

        *(a1 + v45) = v20;
      }

LABEL_82:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_260CEE998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKEntityClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __ChatKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_279ABADB0;
    v9 = 0;
    ChatKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ChatKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"PREResponsesExperimentSuggestionsRequest.m" lineNumber:15 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CKEntity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKEntityClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"PREResponsesExperimentSuggestionsRequest.m" lineNumber:16 description:{@"Unable to find class %s", "CKEntity"}];

LABEL_10:
    __break(1u);
  }

  getCKEntityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ChatKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PREUMResponseListReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 52) |= 4u;
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
                LOBYTE(v28) = 0;
                goto LABEL_63;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_63:
            *(a1 + 48) = v28;
            goto LABEL_72;
          case 5:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 52) |= 1u;
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
                goto LABEL_71;
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

LABEL_71:
            *(a1 + 8) = v35;
            goto LABEL_72;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 52) |= 2u;
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
                goto LABEL_67;
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

LABEL_67:
            *(a1 + 24) = v21;
            goto LABEL_72;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(PREUMTrialExperiment);
            objc_storeStrong((a1 + 16), v14);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !PREUMTrialExperimentReadFrom(v14, a2))
            {
LABEL_74:

              return 0;
            }

            goto LABEL_52;
          case 2:
            v14 = objc_alloc_init(PREUMMessageMetadata);
            objc_storeStrong((a1 + 40), v14);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !PREUMMessageMetadataReadFrom(v14, a2))
            {
              goto LABEL_74;
            }

            goto LABEL_52;
          case 3:
            v14 = objc_alloc_init(PREUMResponseItem);
            [a1 addItems:v14];
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !PREUMResponseItemReadFrom(v14, a2))
            {
              goto LABEL_74;
            }

LABEL_52:
            PBReaderRecallMark();

            goto LABEL_72;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_72:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PREAMResponseListGeneratedReadFrom(uint64_t a1, void *a2)
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
        v64 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v64 & 0x7F) << v5;
        if ((v64 & 0x80) == 0)
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
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 92) |= 0x40u;
          while (1)
          {
            v66 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v66 & 0x7F) << v13;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
LABEL_105:
              v62 = 89;
              goto LABEL_106;
            }
          }

          v19 = (v15 != 0) & ~[a2 hasError];
          goto LABEL_105;
        case 2u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 92) |= 2u;
          while (1)
          {
            v68 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v68 & 0x7F) << v54;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_114;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v56;
          }

LABEL_114:
          v61 = 24;
          goto LABEL_115;
        case 3u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 92) |= 8u;
          while (1)
          {
            v71 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v71 & 0x7F) << v48;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v50;
          }

LABEL_110:
          v61 = 60;
          goto LABEL_115;
        case 4u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 92) |= 4u;
          while (1)
          {
            v70 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v70 & 0x7F) << v41;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_103;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v43;
          }

LABEL_103:
          v61 = 56;
          goto LABEL_115;
        case 5u:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 92) |= 0x10u;
          while (1)
          {
            v69 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v69 & 0x7F) << v22;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_93;
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

LABEL_93:
          v61 = 64;
          goto LABEL_115;
        case 0xBu:
          v20 = PBReaderReadString();
          v21 = 16;
          goto LABEL_89;
        case 0xCu:
          v20 = PBReaderReadString();
          v21 = 72;
          goto LABEL_89;
        case 0xDu:
          v20 = PBReaderReadString();
          v21 = 80;
          goto LABEL_89;
        case 0x15u:
          v20 = PBReaderReadString();
          v21 = 32;
          goto LABEL_89;
        case 0x16u:
          v20 = PBReaderReadString();
          v21 = 48;
          goto LABEL_89;
        case 0x17u:
          v20 = PBReaderReadString();
          v21 = 40;
LABEL_89:
          v60 = *(a1 + v21);
          *(a1 + v21) = v20;

          goto LABEL_116;
        case 0x18u:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 92) |= 0x20u;
          while (1)
          {
            v65 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v65 & 0x7F) << v35;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_99;
            }
          }

          v19 = (v37 != 0) & ~[a2 hasError];
LABEL_99:
          v62 = 88;
LABEL_106:
          *(a1 + v62) = v19;
          goto LABEL_116;
        case 0x19u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 92) |= 1u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_116;
      }

      while (1)
      {
        v67 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v67 & 0x7F) << v29;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v28 = 0;
          goto LABEL_97;
        }
      }

      v28 = [a2 hasError] ? 0 : v31;
LABEL_97:
      v61 = 8;
LABEL_115:
      *(a1 + v61) = v28;
LABEL_116:
      v63 = [a2 position];
    }

    while (v63 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PREUMTrialExperimentReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_279ABAE88[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t PREMachTimeToNanoseconds(uint64_t a1)
{
  if (PREMachTimeToNanoseconds_onceToken != -1)
  {
    dispatch_once(&PREMachTimeToNanoseconds_onceToken, &__block_literal_global_997);
  }

  return PREMachTimeToNanoseconds_machTimebaseInfo * a1 / *algn_2814C8E6C;
}

unint64_t PREMachTimeToMilliseconds(uint64_t a1)
{
  if (PREMachTimeToNanoseconds_onceToken != -1)
  {
    dispatch_once(&PREMachTimeToNanoseconds_onceToken, &__block_literal_global_997);
  }

  return PREMachTimeToNanoseconds_machTimebaseInfo * a1 / *algn_2814C8E6C / 0xF4240;
}

unint64_t PRERecordMeasurementState(uint64_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1[2];
  if (!v1)
  {
    v3 = mach_absolute_time();
    v1 = PREMachTimeToMilliseconds(v3 - a1[1]);
    v4 = pre_scales_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *a1;
      v8 = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = v1;
      _os_log_impl(&dword_260CE3000, v4, OS_LOG_TYPE_DEFAULT, "PREScales: %@ took %llu milliseconds", &v8, 0x16u);
    }

    a1[2] = v1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_260CF4E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_260CF61BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_260CF69E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PREAMResponseItemReadFrom(uint64_t a1, void *a2)
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
        v70 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v70 & 0x7F) << v5;
        if ((v70 & 0x80) == 0)
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
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 84) |= 2u;
          while (1)
          {
            v74 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v74 & 0x7F) << v13;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_113:
              v68 = 48;
              goto LABEL_126;
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

          goto LABEL_113;
        case 2u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v73 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v73 & 0x7F) << v59;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_125;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v61;
          }

LABEL_125:
          v68 = 60;
          goto LABEL_126;
        case 3u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            v72 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v72 & 0x7F) << v53;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_121;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v55;
          }

LABEL_121:
          v68 = 56;
          goto LABEL_126;
        case 4u:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 84) |= 4u;
          while (1)
          {
            v71 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v71 & 0x7F) << v47;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_117;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v49;
          }

LABEL_117:
          v68 = 52;
          goto LABEL_126;
        case 0xBu:
          v33 = PBReaderReadString();
          v34 = 16;
          goto LABEL_96;
        case 0xCu:
          v33 = PBReaderReadString();
          v34 = 64;
          goto LABEL_96;
        case 0xDu:
          v33 = PBReaderReadString();
          v34 = 72;
          goto LABEL_96;
        case 0x15u:
          v33 = PBReaderReadString();
          v34 = 24;
          goto LABEL_96;
        case 0x16u:
          v33 = PBReaderReadString();
          v34 = 40;
          goto LABEL_96;
        case 0x17u:
          v33 = PBReaderReadString();
          v34 = 32;
LABEL_96:
          v65 = *(a1 + v34);
          *(a1 + v34) = v33;

          goto LABEL_127;
        case 0x18u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 84) |= 0x20u;
          while (1)
          {
            v77 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v77 & 0x7F) << v27;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_102;
            }
          }

          v26 = (v29 != 0) & ~[a2 hasError];
LABEL_102:
          v67 = 80;
          goto LABEL_105;
        case 0x19u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            v78 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v78 & 0x7F) << v41;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v43;
          }

LABEL_109:
          v68 = 8;
LABEL_126:
          *(a1 + v68) = v19;
          goto LABEL_127;
        case 0x1Au:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 84) |= 0x40u;
          while (1)
          {
            v76 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v76 & 0x7F) << v35;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_104;
            }
          }

          v26 = (v37 != 0) & ~[a2 hasError];
LABEL_104:
          v67 = 81;
          goto LABEL_105;
        case 0x1Bu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 84) |= 0x80u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_127;
      }

      while (1)
      {
        v75 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v75 & 0x7F) << v20;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          LOBYTE(v26) = 0;
          goto LABEL_100;
        }
      }

      v26 = (v22 != 0) & ~[a2 hasError];
LABEL_100:
      v67 = 82;
LABEL_105:
      *(a1 + v67) = v26;
LABEL_127:
      v69 = [a2 position];
    }

    while (v69 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PREUMResponseItemReadFrom(uint64_t a1, void *a2)
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
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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

      switch(v13)
      {
        case 3:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v51 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v51 & 0x7F) << v28;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v30;
          }

LABEL_73:
          v47 = 12;
LABEL_87:
          *(a1 + v47) = v27;
          goto LABEL_88;
        case 4:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v55 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v55 & 0x7F) << v34;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_75;
            }
          }

          v20 = (v36 != 0) & ~[a2 hasError];
LABEL_75:
          v48 = 20;
          break;
        case 5:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 0x10u;
          while (1)
          {
            v54 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v54 & 0x7F) << v14;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_81;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_81:
          v48 = 21;
          break;
        default:
          goto LABEL_68;
      }

      *(a1 + v48) = v20;
LABEL_88:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      *(a1 + 24) |= 1u;
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
        v11 = v41++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v42;
      }

LABEL_79:
      v47 = 8;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_68:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_88;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 24) |= 4u;
      while (1)
      {
        v52 = 0;
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
          goto LABEL_86;
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

LABEL_86:
      v47 = 16;
    }

    goto LABEL_87;
  }

  return [a2 hasError] ^ 1;
}

void sub_260CFB20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKEntityClass_block_invoke_1860(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary_1861)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __ChatKitLibraryCore_block_invoke_1862;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_279ABB3D0;
    v9 = 0;
    ChatKitLibraryCore_frameworkLibrary_1861 = _sl_dlopen();
  }

  if (!ChatKitLibraryCore_frameworkLibrary_1861)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ChatKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"PREResponsesExperiment.m" lineNumber:44 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CKEntity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKEntityClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"PREResponsesExperiment.m" lineNumber:45 description:{@"Unable to find class %s", "CKEntity"}];

LABEL_10:
    __break(1u);
  }

  getCKEntityClass_softClass_1859 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ChatKitLibraryCore_block_invoke_1862(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary_1861 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_260CFB650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1867(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260CFBDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_260CFC480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 112));
  objc_destroyWeak(&location);
  _Block_object_dispose((v36 - 232), 8);
  _Block_object_dispose((v36 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_260CFD554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, id);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  objc_destroyWeak(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_260CFDBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 200), 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_260CFE854(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 208));
  _Block_object_dispose((v2 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_260CFF444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  PRERecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_260CFF8F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_260D00DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak((v26 - 96));
  _Unwind_Resume(a1);
}

void sub_260D01E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D02B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWRCannedRepliesStoreClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!WatchRepliesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __WatchRepliesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_279ABB3E8;
    v9 = 0;
    WatchRepliesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WatchRepliesLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WatchRepliesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"PREResponsesExperiment.m" lineNumber:52 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("WRCannedRepliesStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWRCannedRepliesStoreClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"PREResponsesExperiment.m" lineNumber:53 description:{@"Unable to find class %s", "WRCannedRepliesStore"}];

LABEL_10:
    __break(1u);
  }

  getWRCannedRepliesStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WatchRepliesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WatchRepliesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}