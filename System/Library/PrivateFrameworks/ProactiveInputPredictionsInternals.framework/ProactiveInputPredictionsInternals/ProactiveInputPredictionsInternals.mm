uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PSGPBTypingSpeedReadFrom(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
        break;
      }

      if (v13 <= 7)
      {
        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          v15 = 48;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_65:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_80;
          }

          v14 = PBReaderReadString();
          v15 = 8;
        }

        goto LABEL_55;
      }

      switch(v13)
      {
        case 8:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            v42 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v42 & 0x7F) << v23;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_70;
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

LABEL_70:
          v37 = 16;
          break;
        case 9:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            v41 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v41 & 0x7F) << v30;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v32;
          }

LABEL_78:
          v37 = 20;
          break;
        case 0xA:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 80) |= 4u;
          while (1)
          {
            v40 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v40 & 0x7F) << v16;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_74;
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

LABEL_74:
          v37 = 24;
          break;
        default:
          goto LABEL_65;
      }

      *(a1 + v37) = v22;
LABEL_80:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 56;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_65;
        }

        v14 = PBReaderReadString();
        v15 = 64;
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
          v14 = PBReaderReadString();
          v15 = 72;
          break;
        case 4:
          v14 = PBReaderReadString();
          v15 = 32;
          break;
        case 5:
          v14 = PBReaderReadString();
          v15 = 40;
          break;
        default:
          goto LABEL_65;
      }
    }

LABEL_55:
    v29 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_80;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSGPBImpressionReadFrom(uint64_t a1, void *a2)
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
        v94 = 0;
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
        break;
      }

      switch((v12 >> 3))
      {
        case 3u:
          v13 = PBReaderReadString();
          v14 = 24;
          goto LABEL_129;
        case 4u:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_129;
        case 5u:
          v13 = PBReaderReadString();
          v14 = 96;
          goto LABEL_129;
        case 6u:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 148) |= 0x200u;
          while (1)
          {
            v99 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v99 & 0x7F) << v47;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              LOBYTE(v28) = 0;
              goto LABEL_160;
            }
          }

          v28 = (v49 != 0) & ~[a2 hasError];
LABEL_160:
          v92 = 142;
          goto LABEL_175;
        case 7u:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 148) |= 0x800u;
          while (1)
          {
            v98 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v98 & 0x7F) << v22;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v28) = 0;
              goto LABEL_146;
            }
          }

          v28 = (v24 != 0) & ~[a2 hasError];
LABEL_146:
          v92 = 144;
          goto LABEL_175;
        case 8u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 148) |= 0x400u;
          while (1)
          {
            v97 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v97 & 0x7F) << v59;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              LOBYTE(v28) = 0;
              goto LABEL_164;
            }
          }

          v28 = (v61 != 0) & ~[a2 hasError];
LABEL_164:
          v92 = 143;
          goto LABEL_175;
        case 9u:
          v13 = PBReaderReadString();
          v14 = 72;
          goto LABEL_129;
        case 0xAu:
          v13 = PBReaderReadString();
          v14 = 40;
          goto LABEL_129;
        case 0xBu:
          v13 = PBReaderReadString();
          v14 = 8;
          goto LABEL_129;
        case 0xCu:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 148) |= 8u;
          while (1)
          {
            v104 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v104 & 0x7F) << v35;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_154;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v37;
          }

LABEL_154:
          v91 = 56;
          goto LABEL_180;
        case 0xDu:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 148) |= 4u;
          while (1)
          {
            v103 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v103 & 0x7F) << v71;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_172;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v73;
          }

LABEL_172:
          v91 = 52;
          goto LABEL_180;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 32;
          goto LABEL_129;
        case 0xFu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 148) |= 0x20u;
          while (1)
          {
            v102 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v102 & 0x7F) << v29;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_150;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v31;
          }

LABEL_150:
          v91 = 64;
          goto LABEL_180;
        case 0x10u:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_129;
        case 0x11u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 148) |= 0x10u;
          while (1)
          {
            v101 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v101 & 0x7F) << v15;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
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
          v91 = 60;
          goto LABEL_180;
        case 0x12u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 148) |= 0x40u;
          while (1)
          {
            v106 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v106 & 0x7F) << v41;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v43;
          }

LABEL_158:
          v91 = 136;
          goto LABEL_180;
        case 0x13u:
          v13 = PBReaderReadString();
          v14 = 128;
          goto LABEL_129;
        case 0x14u:
          v13 = PBReaderReadString();
          v14 = 120;
          goto LABEL_129;
        case 0x15u:
          v13 = PBReaderReadString();
          v14 = 112;
          goto LABEL_129;
        case 0x16u:
          v13 = PBReaderReadString();
          v14 = 104;
LABEL_129:
          v83 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_181;
        case 0x17u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 148) |= 0x80u;
          while (1)
          {
            v96 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v96 & 0x7F) << v53;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              LOBYTE(v28) = 0;
              goto LABEL_162;
            }
          }

          v28 = (v55 != 0) & ~[a2 hasError];
LABEL_162:
          v92 = 140;
          goto LABEL_175;
        case 0x18u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 148) |= 2u;
          while (1)
          {
            v100 = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              v70 = [a2 data];
              [v70 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v100 & 0x7F) << v65;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v11 = v66++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_168;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v67;
          }

LABEL_168:
          v91 = 48;
          goto LABEL_180;
        case 0x19u:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 148) |= 0x100u;
          while (1)
          {
            v95 = 0;
            v80 = [a2 position] + 1;
            if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
            {
              v82 = [a2 data];
              [v82 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v79 |= (v95 & 0x7F) << v77;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v11 = v78++ >= 9;
            if (v11)
            {
              LOBYTE(v28) = 0;
              goto LABEL_174;
            }
          }

          v28 = (v79 != 0) & ~[a2 hasError];
LABEL_174:
          v92 = 141;
LABEL_175:
          *(a1 + v92) = v28;
          goto LABEL_181;
        case 0x1Au:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 148) |= 1u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_181;
      }

      while (1)
      {
        v105 = 0;
        v87 = [a2 position] + 1;
        if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
        {
          v89 = [a2 data];
          [v89 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v86 |= (v105 & 0x7F) << v84;
        if ((v105 & 0x80) == 0)
        {
          break;
        }

        v84 += 7;
        v11 = v85++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_179;
        }
      }

      v21 = [a2 hasError] ? 0 : v86;
LABEL_179:
      v91 = 16;
LABEL_180:
      *(a1 + v91) = v21;
LABEL_181:
      v93 = [a2 position];
    }

    while (v93 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_260D44A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSGPBPredictionReadFrom(uint64_t a1, void *a2)
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
      case 4u:
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_148;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_148;
      case 6u:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_148;
      case 7u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 148) |= 0x200u;
        while (1)
        {
          v113 = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v113 & 0x7F) << v60;
          if ((v113 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_185;
          }
        }

        v29 = (v62 != 0) & ~[a2 hasError];
LABEL_185:
        v105 = 142;
        goto LABEL_198;
      case 8u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 148) |= 0x800u;
        while (1)
        {
          v112 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v112 & 0x7F) << v23;
          if ((v112 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_165;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_165:
        v105 = 144;
        goto LABEL_198;
      case 9u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 148) |= 0x400u;
        while (1)
        {
          v111 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v111 & 0x7F) << v72;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_189;
          }
        }

        v29 = (v74 != 0) & ~[a2 hasError];
LABEL_189:
        v105 = 143;
        goto LABEL_198;
      case 0xAu:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_148;
      case 0xBu:
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_148;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_148;
      case 0xDu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 148) |= 8u;
        while (1)
        {
          v118 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v118 & 0x7F) << v36;
          if ((v118 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_173;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v38;
        }

LABEL_173:
        v104 = 56;
        goto LABEL_203;
      case 0xEu:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 148) |= 4u;
        while (1)
        {
          v117 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v117 & 0x7F) << v84;
          if ((v117 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_195;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v86;
        }

LABEL_195:
        v104 = 52;
        goto LABEL_203;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_148;
      case 0x10u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 148) |= 0x20u;
        while (1)
        {
          v116 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v116 & 0x7F) << v30;
          if ((v116 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_169;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v32;
        }

LABEL_169:
        v104 = 64;
        goto LABEL_203;
      case 0x11u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_148;
      case 0x12u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 148) |= 0x10u;
        while (1)
        {
          v115 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v115 & 0x7F) << v16;
          if ((v115 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_163;
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

LABEL_163:
        v104 = 60;
        goto LABEL_203;
      case 0x13u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 148) |= 0x40u;
        while (1)
        {
          v120 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v120 & 0x7F) << v54;
          if ((v120 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_183;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v56;
        }

LABEL_183:
        v104 = 136;
        goto LABEL_203;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_148;
      case 0x15u:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_148;
      case 0x16u:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_148;
      case 0x17u:
        v14 = PBReaderReadString();
        v15 = 104;
LABEL_148:
        v96 = *(a1 + v15);
        *(a1 + v15) = v14;

        continue;
      case 0x18u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 148) |= 0x1000u;
        while (1)
        {
          v110 = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v110 & 0x7F) << v66;
          if ((v110 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_187;
          }
        }

        v29 = (v68 != 0) & ~[a2 hasError];
LABEL_187:
        v105 = 145;
        goto LABEL_198;
      case 0x19u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 148) |= 0x2000u;
        while (1)
        {
          v109 = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v109 & 0x7F) << v78;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_191;
          }
        }

        v29 = (v80 != 0) & ~[a2 hasError];
LABEL_191:
        v105 = 146;
        goto LABEL_198;
      case 0x1Au:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 148) |= 0x80u;
        while (1)
        {
          v108 = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v108 & 0x7F) << v90;
          if ((v108 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_197;
          }
        }

        v29 = (v92 != 0) & ~[a2 hasError];
LABEL_197:
        v105 = 140;
        goto LABEL_198;
      case 0x1Bu:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 148) |= 2u;
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
          v12 = v98++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_202;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v99;
        }

LABEL_202:
        v104 = 48;
        goto LABEL_203;
      case 0x1Cu:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 148) |= 0x100u;
        while (1)
        {
          v107 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v107 & 0x7F) << v48;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_179;
          }
        }

        v29 = (v50 != 0) & ~[a2 hasError];
LABEL_179:
        v105 = 141;
LABEL_198:
        *(a1 + v105) = v29;
        continue;
      case 0x1Du:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 148) |= 1u;
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
      v119 = 0;
      v45 = [a2 position] + 1;
      if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
      {
        v47 = [a2 data];
        [v47 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v44 |= (v119 & 0x7F) << v42;
      if ((v119 & 0x80) == 0)
      {
        break;
      }

      v42 += 7;
      v12 = v43++ >= 9;
      if (v12)
      {
        v22 = 0;
        goto LABEL_177;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v44;
    }

LABEL_177:
    v104 = 16;
LABEL_203:
    *(a1 + v104) = v22;
  }

  return [a2 hasError] ^ 1;
}

void sub_260D4A8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_260D4AE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t PSGPBErrorReadFrom(uint64_t a1, void *a2)
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
        v82 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v82 & 0x7F) << v5;
        if ((v82 & 0x80) == 0)
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
        case 2u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 132) |= 1u;
          while (1)
          {
            v84 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v84 & 0x7F) << v13;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_141:
              v79 = 16;
              goto LABEL_153;
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

          goto LABEL_141;
        case 3u:
          v45 = PBReaderReadString();
          v46 = 24;
          goto LABEL_121;
        case 4u:
          v45 = PBReaderReadString();
          v46 = 72;
          goto LABEL_121;
        case 5u:
          v45 = PBReaderReadString();
          v46 = 80;
          goto LABEL_121;
        case 6u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 132) |= 0x80u;
          while (1)
          {
            v89 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v89 & 0x7F) << v38;
            if ((v89 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              LOBYTE(v44) = 0;
              goto LABEL_135;
            }
          }

          v44 = (v40 != 0) & ~[a2 hasError];
LABEL_135:
          v80 = 126;
          goto LABEL_148;
        case 7u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 132) |= 0x200u;
          while (1)
          {
            v88 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v88 & 0x7F) << v53;
            if ((v88 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              LOBYTE(v44) = 0;
              goto LABEL_143;
            }
          }

          v44 = (v55 != 0) & ~[a2 hasError];
LABEL_143:
          v80 = 128;
          goto LABEL_148;
        case 8u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 132) |= 0x100u;
          while (1)
          {
            v87 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              v71 = [a2 data];
              [v71 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v87 & 0x7F) << v66;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v11 = v67++ >= 9;
            if (v11)
            {
              LOBYTE(v44) = 0;
              goto LABEL_147;
            }
          }

          v44 = (v68 != 0) & ~[a2 hasError];
LABEL_147:
          v80 = 127;
          goto LABEL_148;
        case 9u:
          v45 = PBReaderReadString();
          v46 = 64;
          goto LABEL_121;
        case 0xAu:
          v45 = PBReaderReadString();
          v46 = 40;
          goto LABEL_121;
        case 0xBu:
          v45 = PBReaderReadString();
          v46 = 8;
          goto LABEL_121;
        case 0xCu:
          v72 = 0;
          v73 = 0;
          v74 = 0;
          *(a1 + 132) |= 8u;
          while (1)
          {
            v92 = 0;
            v75 = [a2 position] + 1;
            if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
            {
              v77 = [a2 data];
              [v77 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v74 |= (v92 & 0x7F) << v72;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v11 = v73++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_152;
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

LABEL_152:
          v79 = 56;
          goto LABEL_153;
        case 0xDu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 132) |= 4u;
          while (1)
          {
            v91 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v91 & 0x7F) << v32;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_133;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v34;
          }

LABEL_133:
          v79 = 52;
          goto LABEL_153;
        case 0xEu:
          v45 = PBReaderReadString();
          v46 = 32;
          goto LABEL_121;
        case 0xFu:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 132) |= 0x20u;
          while (1)
          {
            v86 = 0;
            v63 = [a2 position] + 1;
            if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
            {
              v65 = [a2 data];
              [v65 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v62 |= (v86 & 0x7F) << v60;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v11 = v61++ >= 9;
            if (v11)
            {
              LOBYTE(v44) = 0;
              goto LABEL_145;
            }
          }

          v44 = (v62 != 0) & ~[a2 hasError];
LABEL_145:
          v80 = 124;
          goto LABEL_148;
        case 0x10u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 132) |= 2u;
          while (1)
          {
            v90 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v90 & 0x7F) << v26;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_129;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v28;
          }

LABEL_129:
          v79 = 48;
          goto LABEL_153;
        case 0x11u:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 132) |= 0x40u;
          while (1)
          {
            v85 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v85 & 0x7F) << v47;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              LOBYTE(v44) = 0;
              goto LABEL_137;
            }
          }

          v44 = (v49 != 0) & ~[a2 hasError];
LABEL_137:
          v80 = 125;
LABEL_148:
          *(a1 + v80) = v44;
          goto LABEL_154;
        case 0x12u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 132) |= 0x10u;
          break;
        case 0x13u:
          v45 = PBReaderReadString();
          v46 = 112;
          goto LABEL_121;
        case 0x14u:
          v45 = PBReaderReadString();
          v46 = 104;
          goto LABEL_121;
        case 0x15u:
          v45 = PBReaderReadString();
          v46 = 96;
          goto LABEL_121;
        case 0x16u:
          v45 = PBReaderReadString();
          v46 = 88;
LABEL_121:
          v78 = *(a1 + v46);
          *(a1 + v46) = v45;

          goto LABEL_154;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_154;
      }

      while (1)
      {
        v83 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v83 & 0x7F) << v20;
        if ((v83 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_125;
        }
      }

      v19 = [a2 hasError] ? 0 : v22;
LABEL_125:
      v79 = 120;
LABEL_153:
      *(a1 + v79) = v19;
LABEL_154:
      v81 = [a2 position];
    }

    while (v81 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSGPBEngagementReadFrom(uint64_t a1, void *a2)
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

    switch((v13 >> 3))
    {
      case 2u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 148) |= 0x40u;
        while (1)
        {
          v106 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v106 & 0x7F) << v14;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_172:
            v98 = 68;
            goto LABEL_191;
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

        goto LABEL_172;
      case 3u:
        v27 = PBReaderReadString();
        v28 = 24;
        goto LABEL_139;
      case 4u:
        v27 = PBReaderReadString();
        v28 = 88;
        goto LABEL_139;
      case 5u:
        v27 = PBReaderReadString();
        v28 = 96;
        goto LABEL_139;
      case 6u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 148) |= 0x400u;
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
          v12 = v36++ >= 9;
          if (v12)
          {
            LOBYTE(v41) = 0;
            goto LABEL_160;
          }
        }

        v41 = (v37 != 0) & ~[a2 hasError];
LABEL_160:
        v99 = 142;
        goto LABEL_194;
      case 7u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 148) |= 0x1000u;
        while (1)
        {
          v110 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v110 & 0x7F) << v54;
          if ((v110 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            LOBYTE(v41) = 0;
            goto LABEL_174;
          }
        }

        v41 = (v56 != 0) & ~[a2 hasError];
LABEL_174:
        v99 = 144;
        goto LABEL_194;
      case 8u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 148) |= 0x800u;
        while (1)
        {
          v109 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v109 & 0x7F) << v72;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            LOBYTE(v41) = 0;
            goto LABEL_182;
          }
        }

        v41 = (v74 != 0) & ~[a2 hasError];
LABEL_182:
        v99 = 143;
        goto LABEL_194;
      case 9u:
        v27 = PBReaderReadString();
        v28 = 72;
        goto LABEL_139;
      case 0xAu:
        v27 = PBReaderReadString();
        v28 = 40;
        goto LABEL_139;
      case 0xBu:
        v27 = PBReaderReadString();
        v28 = 8;
        goto LABEL_139;
      case 0xCu:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 148) |= 8u;
        while (1)
        {
          v105 = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v105 & 0x7F) << v78;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_186;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v80;
        }

LABEL_186:
        v98 = 56;
        goto LABEL_191;
      case 0xDu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 148) |= 4u;
        while (1)
        {
          v104 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v104 & 0x7F) << v29;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_158;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v31;
        }

LABEL_158:
        v98 = 52;
        goto LABEL_191;
      case 0xEu:
        v27 = PBReaderReadString();
        v28 = 32;
        goto LABEL_139;
      case 0xFu:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 148) |= 0x20u;
        while (1)
        {
          v103 = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v103 & 0x7F) << v66;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_180;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v68;
        }

LABEL_180:
        v98 = 64;
        goto LABEL_191;
      case 0x10u:
        v27 = PBReaderReadString();
        v28 = 80;
        goto LABEL_139;
      case 0x11u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 148) |= 0x10u;
        while (1)
        {
          v102 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v102 & 0x7F) << v48;
          if ((v102 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_168;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v50;
        }

LABEL_168:
        v98 = 60;
        goto LABEL_191;
      case 0x12u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 148) |= 0x80u;
        while (1)
        {
          v113 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v113 & 0x7F) << v21;
          if ((v113 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_154;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_154:
        v98 = 136;
        goto LABEL_191;
      case 0x13u:
        v27 = PBReaderReadString();
        v28 = 128;
        goto LABEL_139;
      case 0x14u:
        v27 = PBReaderReadString();
        v28 = 120;
        goto LABEL_139;
      case 0x15u:
        v27 = PBReaderReadString();
        v28 = 112;
        goto LABEL_139;
      case 0x16u:
        v27 = PBReaderReadString();
        v28 = 104;
LABEL_139:
        v90 = *(a1 + v28);
        *(a1 + v28) = v27;

        continue;
      case 0x17u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 148) |= 0x100u;
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
          v12 = v61++ >= 9;
          if (v12)
          {
            LOBYTE(v41) = 0;
            goto LABEL_176;
          }
        }

        v41 = (v62 != 0) & ~[a2 hasError];
LABEL_176:
        v99 = 140;
        goto LABEL_194;
      case 0x18u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 148) |= 2u;
        while (1)
        {
          v101 = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v101 & 0x7F) << v84;
          if ((v101 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_190;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v86;
        }

LABEL_190:
        v98 = 48;
        goto LABEL_191;
      case 0x19u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 148) |= 0x200u;
        while (1)
        {
          v107 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v107 & 0x7F) << v91;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            LOBYTE(v41) = 0;
            goto LABEL_193;
          }
        }

        v41 = (v93 != 0) & ~[a2 hasError];
LABEL_193:
        v99 = 141;
LABEL_194:
        *(a1 + v99) = v41;
        continue;
      case 0x1Au:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 148) |= 1u;
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
      v112 = 0;
      v45 = [a2 position] + 1;
      if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
      {
        v47 = [a2 data];
        [v47 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v44 |= (v112 & 0x7F) << v42;
      if ((v112 & 0x80) == 0)
      {
        break;
      }

      v42 += 7;
      v12 = v43++ >= 9;
      if (v12)
      {
        v20 = 0;
        goto LABEL_164;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v44;
    }

LABEL_164:
    v98 = 16;
LABEL_191:
    *(a1 + v98) = v20;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSGPBQueryReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 88) |= 0x20u;
          while (1)
          {
            v75 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v75 & 0x7F) << v13;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
LABEL_111:
              v67 = 82;
              goto LABEL_114;
            }
          }

          v19 = (v15 != 0) & ~[a2 hasError];
          goto LABEL_111;
        case 2u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 88) |= 0x80u;
          while (1)
          {
            v74 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v74 & 0x7F) << v48;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_113;
            }
          }

          v19 = (v50 != 0) & ~[a2 hasError];
LABEL_113:
          v67 = 84;
          goto LABEL_114;
        case 3u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 88) |= 0x40u;
          while (1)
          {
            v73 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v73 & 0x7F) << v34;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_105;
            }
          }

          v19 = (v36 != 0) & ~[a2 hasError];
LABEL_105:
          v67 = 83;
          goto LABEL_114;
        case 4u:
          v26 = PBReaderReadString();
          v27 = 56;
          goto LABEL_99;
        case 5u:
          v26 = PBReaderReadString();
          v27 = 32;
          goto LABEL_99;
        case 6u:
          v26 = PBReaderReadString();
          v27 = 8;
          goto LABEL_99;
        case 7u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 88) |= 4u;
          while (1)
          {
            v78 = 0;
            v63 = [a2 position] + 1;
            if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
            {
              v65 = [a2 data];
              [v65 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v62 |= (v78 & 0x7F) << v60;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v11 = v61++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_122;
            }
          }

          if ([a2 hasError])
          {
            v47 = 0;
          }

          else
          {
            v47 = v62;
          }

LABEL_122:
          v68 = 48;
          goto LABEL_123;
        case 8u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 88) |= 2u;
          while (1)
          {
            v77 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v77 & 0x7F) << v41;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_109;
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

LABEL_109:
          v68 = 44;
          goto LABEL_123;
        case 9u:
          v26 = PBReaderReadString();
          v27 = 24;
          goto LABEL_99;
        case 0xAu:
          v26 = PBReaderReadString();
          v27 = 16;
          goto LABEL_99;
        case 0xBu:
          v26 = PBReaderReadString();
          v27 = 64;
          goto LABEL_99;
        case 0xCu:
          v26 = PBReaderReadString();
          v27 = 72;
LABEL_99:
          v66 = *(a1 + v27);
          *(a1 + v27) = v26;

          goto LABEL_124;
        case 0xDu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 88) |= 8u;
          while (1)
          {
            v72 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v72 & 0x7F) << v28;
            if ((v72 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_103;
            }
          }

          v19 = (v30 != 0) & ~[a2 hasError];
LABEL_103:
          v67 = 80;
          goto LABEL_114;
        case 0xEu:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 88) |= 1u;
          while (1)
          {
            v76 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v76 & 0x7F) << v54;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_118;
            }
          }

          if ([a2 hasError])
          {
            v47 = 0;
          }

          else
          {
            v47 = v56;
          }

LABEL_118:
          v68 = 40;
LABEL_123:
          *(a1 + v68) = v47;
          goto LABEL_124;
        case 0xFu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 88) |= 0x10u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_124;
      }

      while (1)
      {
        v71 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v71 & 0x7F) << v20;
        if ((v71 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          LOBYTE(v19) = 0;
          goto LABEL_101;
        }
      }

      v19 = (v22 != 0) & ~[a2 hasError];
LABEL_101:
      v67 = 81;
LABEL_114:
      *(a1 + v67) = v19;
LABEL_124:
      v69 = [a2 position];
    }

    while (v69 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PSGPBTriggerReadFrom(uint64_t a1, void *a2)
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
        v76 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v76 & 0x7F) << v5;
        if ((v76 & 0x80) == 0)
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
        case 2u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 124) |= 8u;
          while (1)
          {
            v77 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v77 & 0x7F) << v13;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_132:
              v73 = 112;
              goto LABEL_133;
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

          goto LABEL_132;
        case 3u:
          v26 = PBReaderReadString();
          v27 = 104;
          goto LABEL_112;
        case 5u:
          v26 = PBReaderReadString();
          v27 = 16;
          goto LABEL_112;
        case 6u:
          v26 = PBReaderReadString();
          v27 = 64;
          goto LABEL_112;
        case 7u:
          v26 = PBReaderReadString();
          v27 = 72;
          goto LABEL_112;
        case 8u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 124) |= 0x40u;
          while (1)
          {
            v82 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v82 & 0x7F) << v41;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              LOBYTE(v40) = 0;
              goto LABEL_124;
            }
          }

          v40 = (v43 != 0) & ~[a2 hasError];
LABEL_124:
          v74 = 118;
          goto LABEL_140;
        case 9u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 124) |= 0x100u;
          while (1)
          {
            v81 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v81 & 0x7F) << v54;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              LOBYTE(v40) = 0;
              goto LABEL_135;
            }
          }

          v40 = (v56 != 0) & ~[a2 hasError];
LABEL_135:
          v74 = 120;
          goto LABEL_140;
        case 0xAu:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          *(a1 + 124) |= 0x80u;
          while (1)
          {
            v80 = 0;
            v63 = [a2 position] + 1;
            if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
            {
              v65 = [a2 data];
              [v65 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v62 |= (v80 & 0x7F) << v60;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v11 = v61++ >= 9;
            if (v11)
            {
              LOBYTE(v40) = 0;
              goto LABEL_137;
            }
          }

          v40 = (v62 != 0) & ~[a2 hasError];
LABEL_137:
          v74 = 119;
          goto LABEL_140;
        case 0xBu:
          v26 = PBReaderReadString();
          v27 = 56;
          goto LABEL_112;
        case 0xCu:
          v26 = PBReaderReadString();
          v27 = 32;
          goto LABEL_112;
        case 0xDu:
          v26 = PBReaderReadString();
          v27 = 8;
          goto LABEL_112;
        case 0xEu:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 124) |= 4u;
          while (1)
          {
            v85 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v85 & 0x7F) << v47;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_128;
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

LABEL_128:
          v73 = 48;
          goto LABEL_133;
        case 0xFu:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 124) |= 2u;
          while (1)
          {
            v84 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v84 & 0x7F) << v28;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_120;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v30;
          }

LABEL_120:
          v73 = 44;
          goto LABEL_133;
        case 0x10u:
          v26 = PBReaderReadString();
          v27 = 24;
          goto LABEL_112;
        case 0x11u:
          v26 = PBReaderReadString();
          v27 = 96;
          goto LABEL_112;
        case 0x12u:
          v26 = PBReaderReadString();
          v27 = 88;
          goto LABEL_112;
        case 0x13u:
          v26 = PBReaderReadString();
          v27 = 80;
LABEL_112:
          v72 = *(a1 + v27);
          *(a1 + v27) = v26;

          goto LABEL_141;
        case 0x14u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 124) |= 0x10u;
          while (1)
          {
            v79 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              v71 = [a2 data];
              [v71 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v79 & 0x7F) << v66;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v11 = v67++ >= 9;
            if (v11)
            {
              LOBYTE(v40) = 0;
              goto LABEL_139;
            }
          }

          v40 = (v68 != 0) & ~[a2 hasError];
LABEL_139:
          v74 = 116;
          goto LABEL_140;
        case 0x15u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 124) |= 1u;
          while (1)
          {
            v83 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v83 & 0x7F) << v20;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_116;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v22;
          }

LABEL_116:
          v73 = 40;
LABEL_133:
          *(a1 + v73) = v19;
          goto LABEL_141;
        case 0x16u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 124) |= 0x20u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_141;
      }

      while (1)
      {
        v78 = 0;
        v37 = [a2 position] + 1;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v36 |= (v78 & 0x7F) << v34;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v11 = v35++ >= 9;
        if (v11)
        {
          LOBYTE(v40) = 0;
          goto LABEL_122;
        }
      }

      v40 = (v36 != 0) & ~[a2 hasError];
LABEL_122:
      v74 = 117;
LABEL_140:
      *(a1 + v74) = v40;
LABEL_141:
      v75 = [a2 position];
    }

    while (v75 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}