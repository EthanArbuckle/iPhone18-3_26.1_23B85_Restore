uint64_t WiFiAnalyticsAWDWiFiTDMSliceReadFrom(uint64_t a1, void *a2)
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
        v92 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v92 & 0x7F) << v5;
        if ((v92 & 0x80) == 0)
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
        break;
      }

      if (v13 <= 9)
      {
        switch(v13)
        {
          case 7:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 68) |= 0x10u;
            while (1)
            {
              v95 = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v95 & 0x7F) << v46;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_165;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v48;
            }

LABEL_165:
            v89 = 36;
            break;
          case 8:
            v70 = 0;
            v71 = 0;
            v72 = 0;
            *(a1 + 68) |= 0x20u;
            while (1)
            {
              v94 = 0;
              v73 = [a2 position] + 1;
              if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
              {
                v75 = [a2 data];
                [v75 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v72 |= (v94 & 0x7F) << v70;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              v11 = v71++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_181;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v72;
            }

LABEL_181:
            v89 = 40;
            break;
          case 9:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 68) |= 8u;
            while (1)
            {
              v93 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v93 & 0x7F) << v21;
              if ((v93 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_149;
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

LABEL_149:
            v89 = 32;
            break;
          default:
            goto LABEL_140;
        }

LABEL_186:
        *(a1 + v89) = v20;
        goto LABEL_192;
      }

      switch(v13)
      {
        case 0xA:
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            v104 = 0;
            v61 = [a2 position] + 1;
            if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
            {
              v63 = [a2 data];
              [v63 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v60 |= (v104 & 0x7F) << v58;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v11 = v59++ >= 9;
            if (v11)
            {
              v39 = 0;
              goto LABEL_173;
            }
          }

          if ([a2 hasError])
          {
            v39 = 0;
          }

          else
          {
            v39 = v60;
          }

LABEL_173:
          v90 = 24;
          break;
        case 0xB:
          v82 = 0;
          v83 = 0;
          v84 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            v103 = 0;
            v85 = [a2 position] + 1;
            if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
            {
              v87 = [a2 data];
              [v87 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v84 |= (v103 & 0x7F) << v82;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v11 = v83++ >= 9;
            if (v11)
            {
              v39 = 0;
              goto LABEL_190;
            }
          }

          if ([a2 hasError])
          {
            v39 = 0;
          }

          else
          {
            v39 = v84;
          }

LABEL_190:
          v90 = 16;
          break;
        case 0xC:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v102 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v102 & 0x7F) << v33;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v39 = 0;
              goto LABEL_157;
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

LABEL_157:
          v90 = 8;
          break;
        default:
LABEL_140:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_192;
      }

      *(a1 + v90) = v39;
LABEL_192:
      v91 = [a2 position];
      if (v91 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 3)
    {
      switch(v13)
      {
        case 4:
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 68) |= 0x40u;
          while (1)
          {
            v98 = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              v57 = [a2 data];
              [v57 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v98 & 0x7F) << v52;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v11 = v53++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v54;
          }

LABEL_169:
          v89 = 44;
          break;
        case 5:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 68) |= 0x80u;
          while (1)
          {
            v97 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v97 & 0x7F) << v76;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v11 = v77++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_185;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v78;
          }

LABEL_185:
          v89 = 48;
          break;
        case 6:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 68) |= 0x100u;
          while (1)
          {
            v96 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v96 & 0x7F) << v27;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_153:
          v89 = 52;
          break;
        default:
          goto LABEL_140;
      }
    }

    else
    {
      switch(v13)
      {
        case 1:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 68) |= 0x200u;
          while (1)
          {
            v101 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v101 & 0x7F) << v40;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v42;
          }

LABEL_161:
          v89 = 56;
          break;
        case 2:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          *(a1 + 68) |= 0x800u;
          while (1)
          {
            v100 = 0;
            v67 = [a2 position] + 1;
            if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
            {
              v69 = [a2 data];
              [v69 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v66 |= (v100 & 0x7F) << v64;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            v11 = v65++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_177;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v66;
          }

LABEL_177:
          v89 = 64;
          break;
        case 3:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 68) |= 0x400u;
          while (1)
          {
            v99 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v99 & 0x7F) << v14;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_145;
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

LABEL_145:
          v89 = 60;
          break;
        default:
          goto LABEL_140;
      }
    }

    goto LABEL_186;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C854AD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C854B7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C854C590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C854CD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C854E118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiAnalyticsAWDWiFiConnectionQualityReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v249) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v249 & 0x7F) << v6;
      if ((v249 & 0x80) == 0)
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
        *(a1 + 284) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v249 & 0x7F) << v14;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_407:
            v236 = 168;
            goto LABEL_470;
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

        goto LABEL_407;
      case 2u:
        v115 = PBReaderReadString();
        v116 = *(a1 + 272);
        *(a1 + 272) = v115;

        continue;
      case 3u:
        v102 = PBReaderReadString();
        if (v102)
        {
          [a1 addAdditionalUniqueIDs:v102];
        }

        goto LABEL_161;
      case 4u:
        v102 = PBReaderReadString();
        if (v102)
        {
          [a1 addOtherUniqueIDs:v102];
        }

LABEL_161:

        continue;
      case 5u:
        *(a1 + 284) |= 0x80uLL;
        v249 = 0;
        v78 = [a2 position] + 8;
        if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 8, v79 <= objc_msgSend(a2, "length")))
        {
          v240 = [a2 data];
          [v240 getBytes:&v249 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v241 = v249;
        v242 = 64;
        goto LABEL_490;
      case 6u:
        *(a1 + 284) |= 0x100uLL;
        v249 = 0;
        v141 = [a2 position] + 8;
        if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 8, v142 <= objc_msgSend(a2, "length")))
        {
          v245 = [a2 data];
          [v245 getBytes:&v249 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v241 = v249;
        v242 = 72;
LABEL_490:
        *(a1 + v242) = v241;
        continue;
      case 7u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 284) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v249 & 0x7F) << v155;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_435;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v157;
        }

LABEL_435:
        v236 = 104;
        goto LABEL_470;
      case 8u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 284) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v249 & 0x7F) << v109;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_403;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v111;
        }

LABEL_403:
        v236 = 56;
        goto LABEL_470;
      case 9u:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        *(a1 + 284) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v176 = [a2 position] + 1;
          if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
          {
            v178 = [a2 data];
            [v178 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v175 |= (v249 & 0x7F) << v173;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v173 += 7;
          v12 = v174++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_447;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v175;
        }

LABEL_447:
        v236 = 80;
        goto LABEL_470;
      case 0xAu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 284) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v249 & 0x7F) << v92;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v12 = v93++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_395;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v94;
        }

LABEL_395:
        v236 = 88;
        goto LABEL_470;
      case 0xBu:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 284) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v249 & 0x7F) << v167;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v12 = v168++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_443;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v169;
        }

LABEL_443:
        v236 = 96;
        goto LABEL_470;
      case 0xCu:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 284) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v249 & 0x7F) << v72;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_383;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v74;
        }

LABEL_383:
        v236 = 152;
        goto LABEL_470;
      case 0xDu:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 284) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v249 & 0x7F) << v86;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v12 = v87++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_391;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v88;
        }

LABEL_391:
        v236 = 48;
        goto LABEL_470;
      case 0xEu:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 284) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v249 & 0x7F) << v149;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v12 = v150++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_431;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v151;
        }

LABEL_431:
        v236 = 112;
        goto LABEL_470;
      case 0xFu:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 284) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v249 & 0x7F) << v60;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_375;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v62;
        }

LABEL_375:
        v236 = 120;
        goto LABEL_470;
      case 0x10u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 284) |= 2uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v249 & 0x7F) << v103;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_399;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v105;
        }

LABEL_399:
        v236 = 16;
        goto LABEL_470;
      case 0x11u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 284) |= 8uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v249 & 0x7F) << v54;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_371;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v56;
        }

LABEL_371:
        v236 = 32;
        goto LABEL_470;
      case 0x12u:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 284) |= 1uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v126 = [a2 position] + 1;
          if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
          {
            v128 = [a2 data];
            [v128 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v125 |= (v249 & 0x7F) << v123;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v12 = v124++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_415;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v125;
        }

LABEL_415:
        v236 = 8;
        goto LABEL_470;
      case 0x13u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 284) |= 4uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v249 & 0x7F) << v161;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_439;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v163;
        }

LABEL_439:
        v236 = 24;
        goto LABEL_470;
      case 0x14u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        *(a1 + 284) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v207 = [a2 position] + 1;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
          {
            v209 = [a2 data];
            [v209 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v206 |= (v249 & 0x7F) << v204;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v12 = v205++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_465;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v206;
        }

LABEL_465:
        v236 = 128;
        goto LABEL_470;
      case 0x15u:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        *(a1 + 284) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v138 = [a2 position] + 1;
          if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
          {
            v140 = [a2 data];
            [v140 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v137 |= (v249 & 0x7F) << v135;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v12 = v136++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_423;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v137;
        }

LABEL_423:
        v236 = 40;
        goto LABEL_470;
      case 0x16u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 284) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v249 & 0x7F) << v143;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_427;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v145;
        }

LABEL_427:
        v236 = 136;
        goto LABEL_470;
      case 0x17u:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        *(a1 + 284) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v195 = [a2 position] + 1;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 1, v196 <= objc_msgSend(a2, "length")))
          {
            v197 = [a2 data];
            [v197 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v194 |= (v249 & 0x7F) << v192;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v192 += 7;
          v12 = v193++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_457;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v194;
        }

LABEL_457:
        v236 = 144;
        goto LABEL_470;
      case 0x18u:
        *(a1 + 284) |= 0x200000000uLL;
        LODWORD(v249) = 0;
        v216 = [a2 position] + 4;
        if (v216 >= [a2 position] && (v217 = objc_msgSend(a2, "position") + 4, v217 <= objc_msgSend(a2, "length")))
        {
          v246 = [a2 data];
          [v246 getBytes:&v249 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v238 = v249;
        v239 = 244;
        goto LABEL_497;
      case 0x19u:
        *(a1 + 284) |= 0x80000000uLL;
        LODWORD(v249) = 0;
        v100 = [a2 position] + 4;
        if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 4, v101 <= objc_msgSend(a2, "length")))
        {
          v244 = [a2 data];
          [v244 getBytes:&v249 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v238 = v249;
        v239 = 236;
        goto LABEL_497;
      case 0x1Au:
        *(a1 + 284) |= 0x800000000uLL;
        LODWORD(v249) = 0;
        v98 = [a2 position] + 4;
        if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 4, v99 <= objc_msgSend(a2, "length")))
        {
          v243 = [a2 data];
          [v243 getBytes:&v249 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v238 = v249;
        v239 = 252;
        goto LABEL_497;
      case 0x1Bu:
        *(a1 + 284) |= 0x400000000uLL;
        LODWORD(v249) = 0;
        v232 = [a2 position] + 4;
        if (v232 >= [a2 position] && (v233 = objc_msgSend(a2, "position") + 4, v233 <= objc_msgSend(a2, "length")))
        {
          v248 = [a2 data];
          [v248 getBytes:&v249 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v238 = v249;
        v239 = 248;
        goto LABEL_497;
      case 0x1Cu:
        *(a1 + 284) |= 0x100000000uLL;
        LODWORD(v249) = 0;
        v46 = [a2 position] + 4;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 4, v47 <= objc_msgSend(a2, "length")))
        {
          v237 = [a2 data];
          [v237 getBytes:&v249 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v238 = v249;
        v239 = 240;
        goto LABEL_497;
      case 0x1Du:
        *(a1 + 284) |= 0x1000000000uLL;
        LODWORD(v249) = 0;
        v218 = [a2 position] + 4;
        if (v218 >= [a2 position] && (v219 = objc_msgSend(a2, "position") + 4, v219 <= objc_msgSend(a2, "length")))
        {
          v247 = [a2 data];
          [v247 getBytes:&v249 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v238 = v249;
        v239 = 256;
LABEL_497:
        *(a1 + v239) = v238;
        continue;
      case 0x1Eu:
        v220 = 0;
        v221 = 0;
        v222 = 0;
        *(a1 + 284) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v223 = [a2 position] + 1;
          if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 1, v224 <= objc_msgSend(a2, "length")))
          {
            v225 = [a2 data];
            [v225 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v222 |= (v249 & 0x7F) << v220;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v220 += 7;
          v12 = v221++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_474;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v222;
        }

LABEL_474:
        v235 = 264;
        goto LABEL_479;
      case 0x1Fu:
        v179 = 0;
        v180 = 0;
        v181 = 0;
        *(a1 + 284) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v182 = [a2 position] + 1;
          if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
          {
            v184 = [a2 data];
            [v184 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v181 |= (v249 & 0x7F) << v179;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v179 += 7;
          v12 = v180++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_451;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v181;
        }

LABEL_451:
        v235 = 196;
        goto LABEL_479;
      case 0x20u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 284) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v249 & 0x7F) << v117;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v12 = v118++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_411;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v119;
        }

LABEL_411:
        v235 = 212;
        goto LABEL_479;
      case 0x21u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 284) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v188 = [a2 position] + 1;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
          {
            v190 = [a2 data];
            [v190 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v187 |= (v249 & 0x7F) << v185;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v12 = v186++ >= 9;
          if (v12)
          {
            LOBYTE(v191) = 0;
            goto LABEL_453;
          }
        }

        v191 = (v187 != 0) & ~[a2 hasError];
LABEL_453:
        *(a1 + 280) = v191;
        continue;
      case 0x22u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 284) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v249 & 0x7F) << v66;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_379;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v68;
        }

LABEL_379:
        v235 = 216;
        goto LABEL_479;
      case 0x23u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 284) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v249 & 0x7F) << v48;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_367;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v50;
        }

LABEL_367:
        v235 = 184;
        goto LABEL_479;
      case 0x24u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 284) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v249 & 0x7F) << v34;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_359;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_359:
        v235 = 192;
        goto LABEL_479;
      case 0x25u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 284) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v249 & 0x7F) << v40;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_363;
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

LABEL_363:
        v235 = 204;
        goto LABEL_479;
      case 0x26u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 284) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v249 & 0x7F) << v28;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_355;
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

LABEL_355:
        v235 = 208;
        goto LABEL_479;
      case 0x27u:
        v226 = 0;
        v227 = 0;
        v228 = 0;
        *(a1 + 284) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v229 = [a2 position] + 1;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
          {
            v231 = [a2 data];
            [v231 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v228 |= (v249 & 0x7F) << v226;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v226 += 7;
          v12 = v227++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_478;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v228;
        }

LABEL_478:
        v235 = 260;
        goto LABEL_479;
      case 0x28u:
        v198 = 0;
        v199 = 0;
        v200 = 0;
        *(a1 + 284) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v201 = [a2 position] + 1;
          if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 1, v202 <= objc_msgSend(a2, "length")))
          {
            v203 = [a2 data];
            [v203 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v200 |= (v249 & 0x7F) << v198;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v198 += 7;
          v12 = v199++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_461;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v200;
        }

LABEL_461:
        v235 = 268;
        goto LABEL_479;
      case 0x29u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 284) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v249 & 0x7F) << v80;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v12 = v81++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_387;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v82;
        }

LABEL_387:
        v235 = 200;
        goto LABEL_479;
      case 0x2Au:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 284) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            v134 = [a2 data];
            [v134 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v249 & 0x7F) << v129;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v12 = v130++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_419;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v131;
        }

LABEL_419:
        v235 = 232;
        goto LABEL_479;
      case 0x2Bu:
        v210 = 0;
        v211 = 0;
        v212 = 0;
        *(a1 + 284) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v249) = 0;
          v213 = [a2 position] + 1;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 1, v214 <= objc_msgSend(a2, "length")))
          {
            v215 = [a2 data];
            [v215 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v212 |= (v249 & 0x7F) << v210;
          if ((v249 & 0x80) == 0)
          {
            break;
          }

          v210 += 7;
          v12 = v211++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_469;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v212;
        }

LABEL_469:
        v236 = 160;
LABEL_470:
        *(a1 + v236) = v20;
        continue;
      case 0x2Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 284) |= 0x400000uLL;
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
      LOBYTE(v249) = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v249 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v249 & 0x7F) << v21;
      if ((v249 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v12 = v22++ >= 9;
      if (v12)
      {
        v27 = 0;
        goto LABEL_351;
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

LABEL_351:
    v235 = 188;
LABEL_479:
    *(a1 + v235) = v27;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C8558E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C8559308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8559664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8559B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C855A308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855A730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855A9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C855AD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855B608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855BA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855BE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855C25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855C684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855C9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855CD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855D074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855D444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855D808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855DB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855DFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855E588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855E8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C855ED24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C855F574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C855FCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C85602AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C8560D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C8560EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WiFiAnalyticsAWDSlowWiFiNotificationReadFrom(uint64_t a1, void *a2)
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
        v56 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v56 & 0x7F) << v5;
        if ((v56 & 0x80) == 0)
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
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v57 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v57 & 0x7F) << v28;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v34 = 0;
                goto LABEL_83;
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

LABEL_83:
            *(a1 + 8) = v34;
            goto LABEL_103;
          case 2:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v61 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v61 & 0x7F) << v42;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_97;
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

LABEL_97:
            v54 = 16;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v60 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v60 & 0x7F) << v14;
              if ((v60 & 0x80) == 0)
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
            v54 = 20;
            break;
          default:
            goto LABEL_60;
        }

        goto LABEL_102;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 36) |= 0x10u;
        while (1)
        {
          v58 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v58 & 0x7F) << v48;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
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
          v20 = v50;
        }

LABEL_101:
        v54 = 28;
LABEL_102:
        *(a1 + v54) = v20;
        goto LABEL_103;
      }

      if (v13 != 6)
      {
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_103;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 0x20u;
      while (1)
      {
        v62 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v62 & 0x7F) << v21;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_93;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_93:
      *(a1 + 32) = v27;
LABEL_103:
      v55 = [a2 position];
      if (v55 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    *(a1 + 36) |= 8u;
    while (1)
    {
      v59 = 0;
      v38 = [a2 position] + 1;
      if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
      {
        v40 = [a2 data];
        [v40 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v37 |= (v59 & 0x7F) << v35;
      if ((v59 & 0x80) == 0)
      {
        break;
      }

      v35 += 7;
      v11 = v36++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_87;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v37;
    }

LABEL_87:
    v54 = 24;
    goto LABEL_102;
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityIRInterfaceStatsReadFrom(uint64_t a1, void *a2)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = *(a1 + 64);
        *(a1 + 64) = v13;

        goto LABEL_91;
      case 2u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addPackets:v15];
        goto LABEL_43;
      case 3u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addBytes:v15];
LABEL_43:
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityTrafficReadFrom(v15, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_73;
      case 4u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addNpeers:v15];
        goto LABEL_71;
      case 5u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 104) |= 2u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v44 & 0x7F) << v16;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_77;
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

LABEL_77:
        v41 = 48;
        goto LABEL_90;
      case 6u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 104) |= 4u;
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
            v22 = 0;
            goto LABEL_85;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_85:
        v41 = 52;
        goto LABEL_90;
      case 7u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 104) |= 8u;
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
            v22 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_89:
        v41 = 56;
        goto LABEL_90;
      case 8u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 104) |= 1u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v44 & 0x7F) << v23;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_81;
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

LABEL_81:
        v41 = 24;
LABEL_90:
        *(a1 + v41) = v22;
        goto LABEL_91;
      case 9u:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addEnableState:v15];
LABEL_71:
        v44 = 0;
        v45 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityStateBinReadFrom(v15, a2))
        {
          goto LABEL_73;
        }

        goto LABEL_93;
      case 0xAu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBK:v15];
        goto LABEL_67;
      case 0xBu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBE:v15];
        goto LABEL_67;
      case 0xCu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVO:v15];
        goto LABEL_67;
      case 0xDu:
        v15 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVI:v15];
LABEL_67:
        v44 = 0;
        v45 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityHistogramBinReadFrom(v15, a2))
        {
LABEL_73:
          PBReaderRecallMark();

LABEL_91:
          v42 = [a2 position];
          if (v42 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_93:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_91;
    }
  }
}

uint64_t WiFiAnalyticsAWDLinkQualityMeasurementsReadFrom(uint64_t a1, void *a2)
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
        v514 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v514 & 0x7F) << v5;
        if ((v514 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x8000uLL;
          while (1)
          {
            v514 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v13;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v13 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__timestamp;
            v21 = v14++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__timestamp;
          goto LABEL_1010;
        case 2u:
          v262 = 0;
          v263 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x4000000uLL;
          while (1)
          {
            v514 = 0;
            v264 = [a2 position] + 1;
            if (v264 >= [a2 position] && (v265 = objc_msgSend(a2, "position") + 1, v265 <= objc_msgSend(a2, "length")))
            {
              v266 = [a2 data];
              [v266 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v262;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v262 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txOutputBelowExpectedTrue;
            v21 = v263++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txOutputBelowExpectedTrue;
          goto LABEL_1010;
        case 3u:
          v237 = 0;
          v238 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x2000000uLL;
          while (1)
          {
            v514 = 0;
            v239 = [a2 position] + 1;
            if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 1, v240 <= objc_msgSend(a2, "length")))
            {
              v241 = [a2 data];
              [v241 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v237;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v237 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txOutputBelowExpectedFalse;
            v21 = v238++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txOutputBelowExpectedFalse;
          goto LABEL_1010;
        case 4u:
          v252 = 0;
          v253 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x10000000uLL;
          while (1)
          {
            v514 = 0;
            v254 = [a2 position] + 1;
            if (v254 >= [a2 position] && (v255 = objc_msgSend(a2, "position") + 1, v255 <= objc_msgSend(a2, "length")))
            {
              v256 = [a2 data];
              [v256 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v252;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v252 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txOutputBelowInputTrue;
            v21 = v253++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txOutputBelowInputTrue;
          goto LABEL_1010;
        case 5u:
          v197 = 0;
          v198 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x8000000uLL;
          while (1)
          {
            v514 = 0;
            v199 = [a2 position] + 1;
            if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
            {
              v201 = [a2 data];
              [v201 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v197;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v197 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txOutputBelowInputFalse;
            v21 = v198++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txOutputBelowInputFalse;
          goto LABEL_1010;
        case 6u:
          v312 = 0;
          v313 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x1000000uLL;
          while (1)
          {
            v514 = 0;
            v314 = [a2 position] + 1;
            if (v314 >= [a2 position] && (v315 = objc_msgSend(a2, "position") + 1, v315 <= objc_msgSend(a2, "length")))
            {
              v316 = [a2 data];
              [v316 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v312;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v312 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txLowFrameCountTrue;
            v21 = v313++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txLowFrameCountTrue;
          goto LABEL_1010;
        case 7u:
          v337 = 0;
          v338 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x800000uLL;
          while (1)
          {
            v514 = 0;
            v339 = [a2 position] + 1;
            if (v339 >= [a2 position] && (v340 = objc_msgSend(a2, "position") + 1, v340 <= objc_msgSend(a2, "length")))
            {
              v341 = [a2 data];
              [v341 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v337;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v337 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txLowFrameCountFalse;
            v21 = v338++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txLowFrameCountFalse;
          goto LABEL_1010;
        case 8u:
          v257 = 0;
          v258 = 0;
          v15 = 0;
          *(a1 + 808) |= 8uLL;
          while (1)
          {
            v514 = 0;
            v259 = [a2 position] + 1;
            if (v259 >= [a2 position] && (v260 = objc_msgSend(a2, "position") + 1, v260 <= objc_msgSend(a2, "length")))
            {
              v261 = [a2 data];
              [v261 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v257;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v257 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxLowFrameCountTrue;
            v21 = v258++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxLowFrameCountTrue;
          goto LABEL_1010;
        case 9u:
          v352 = 0;
          v353 = 0;
          v15 = 0;
          *(a1 + 808) |= 4uLL;
          while (1)
          {
            v514 = 0;
            v354 = [a2 position] + 1;
            if (v354 >= [a2 position] && (v355 = objc_msgSend(a2, "position") + 1, v355 <= objc_msgSend(a2, "length")))
            {
              v356 = [a2 data];
              [v356 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v352;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v352 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxLowFrameCountFalse;
            v21 = v353++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxLowFrameCountFalse;
          goto LABEL_1010;
        case 0xAu:
          v222 = 0;
          v223 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x20000000uLL;
          while (1)
          {
            v514 = 0;
            v224 = [a2 position] + 1;
            if (v224 >= [a2 position] && (v225 = objc_msgSend(a2, "position") + 1, v225 <= objc_msgSend(a2, "length")))
            {
              v226 = [a2 data];
              [v226 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v222;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v222 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxLatencyTrue;
            v21 = v223++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxLatencyTrue;
          goto LABEL_1010;
        case 0xBu:
          v347 = 0;
          v348 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x10000000uLL;
          while (1)
          {
            v514 = 0;
            v349 = [a2 position] + 1;
            if (v349 >= [a2 position] && (v350 = objc_msgSend(a2, "position") + 1, v350 <= objc_msgSend(a2, "length")))
            {
              v351 = [a2 data];
              [v351 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v347;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v347 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxLatencyFalse;
            v21 = v348++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxLatencyFalse;
          goto LABEL_1010;
        case 0xCu:
          v182 = 0;
          v183 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x2000000000000uLL;
          while (1)
          {
            v514 = 0;
            v184 = [a2 position] + 1;
            if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
            {
              v186 = [a2 data];
              [v186 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v182;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v182 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowTxPhyRateTrue;
            v21 = v183++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowTxPhyRateTrue;
          goto LABEL_1010;
        case 0xDu:
          v217 = 0;
          v218 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x1000000000000uLL;
          while (1)
          {
            v514 = 0;
            v219 = [a2 position] + 1;
            if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
            {
              v221 = [a2 data];
              [v221 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v217;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v217 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowTxPhyRateFalse;
            v21 = v218++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowTxPhyRateFalse;
          goto LABEL_1010;
        case 0xEu:
          v332 = 0;
          v333 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x80000000uLL;
          while (1)
          {
            v514 = 0;
            v334 = [a2 position] + 1;
            if (v334 >= [a2 position] && (v335 = objc_msgSend(a2, "position") + 1, v335 <= objc_msgSend(a2, "length")))
            {
              v336 = [a2 data];
              [v336 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v332;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v332 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxPerTrue;
            v21 = v333++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxPerTrue;
          goto LABEL_1010;
        case 0xFu:
          v157 = 0;
          v158 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x40000000uLL;
          while (1)
          {
            v514 = 0;
            v159 = [a2 position] + 1;
            if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
            {
              v161 = [a2 data];
              [v161 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v157;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v157 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxPerFalse;
            v21 = v158++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxPerFalse;
          goto LABEL_1010;
        case 0x10u:
          v242 = 0;
          v243 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x200000000uLL;
          while (1)
          {
            v514 = 0;
            v244 = [a2 position] + 1;
            if (v244 >= [a2 position] && (v245 = objc_msgSend(a2, "position") + 1, v245 <= objc_msgSend(a2, "length")))
            {
              v246 = [a2 data];
              [v246 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v242;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v242 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxRetriesTrue;
            v21 = v243++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxRetriesTrue;
          goto LABEL_1010;
        case 0x11u:
          v142 = 0;
          v143 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x100000000uLL;
          while (1)
          {
            v514 = 0;
            v144 = [a2 position] + 1;
            if (v144 >= [a2 position] && (v145 = objc_msgSend(a2, "position") + 1, v145 <= objc_msgSend(a2, "length")))
            {
              v146 = [a2 data];
              [v146 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v142;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v142 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxRetriesFalse;
            v21 = v143++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highTxRetriesFalse;
          goto LABEL_1010;
        case 0x12u:
          v282 = 0;
          v283 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x80000000uLL;
          while (1)
          {
            v514 = 0;
            v284 = [a2 position] + 1;
            if (v284 >= [a2 position] && (v285 = objc_msgSend(a2, "position") + 1, v285 <= objc_msgSend(a2, "length")))
            {
              v286 = [a2 data];
              [v286 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v282;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v282 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txQueueFullTrue;
            v21 = v283++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txQueueFullTrue;
          goto LABEL_1010;
        case 0x13u:
          v342 = 0;
          v343 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x40000000uLL;
          while (1)
          {
            v514 = 0;
            v344 = [a2 position] + 1;
            if (v344 >= [a2 position] && (v345 = objc_msgSend(a2, "position") + 1, v345 <= objc_msgSend(a2, "length")))
            {
              v346 = [a2 data];
              [v346 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v342;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v342 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txQueueFullFalse;
            v21 = v343++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txQueueFullFalse;
          goto LABEL_1010;
        case 0x14u:
          v392 = 0;
          v393 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x800000000000uLL;
          while (1)
          {
            v514 = 0;
            v394 = [a2 position] + 1;
            if (v394 >= [a2 position] && (v395 = objc_msgSend(a2, "position") + 1, v395 <= objc_msgSend(a2, "length")))
            {
              v396 = [a2 data];
              [v396 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v392;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v392 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowTxAMPDUDensityTrue;
            v21 = v393++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowTxAMPDUDensityTrue;
          goto LABEL_1010;
        case 0x15u:
          v302 = 0;
          v303 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x400000000000uLL;
          while (1)
          {
            v514 = 0;
            v304 = [a2 position] + 1;
            if (v304 >= [a2 position] && (v305 = objc_msgSend(a2, "position") + 1, v305 <= objc_msgSend(a2, "length")))
            {
              v306 = [a2 data];
              [v306 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v302;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v302 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowTxAMPDUDensityFalse;
            v21 = v303++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowTxAMPDUDensityFalse;
          goto LABEL_1010;
        case 0x16u:
          v327 = 0;
          v328 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x8000000uLL;
          while (1)
          {
            v514 = 0;
            v329 = [a2 position] + 1;
            if (v329 >= [a2 position] && (v330 = objc_msgSend(a2, "position") + 1, v330 <= objc_msgSend(a2, "length")))
            {
              v331 = [a2 data];
              [v331 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v327;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v327 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxRetriesTrue;
            v21 = v328++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxRetriesTrue;
          goto LABEL_1010;
        case 0x17u:
          v377 = 0;
          v378 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x4000000uLL;
          while (1)
          {
            v514 = 0;
            v379 = [a2 position] + 1;
            if (v379 >= [a2 position] && (v380 = objc_msgSend(a2, "position") + 1, v380 <= objc_msgSend(a2, "length")))
            {
              v381 = [a2 data];
              [v381 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v377;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v377 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxRetriesFalse;
            v21 = v378++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxRetriesFalse;
          goto LABEL_1010;
        case 0x18u:
          v412 = 0;
          v413 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x800000uLL;
          while (1)
          {
            v514 = 0;
            v414 = [a2 position] + 1;
            if (v414 >= [a2 position] && (v415 = objc_msgSend(a2, "position") + 1, v415 <= objc_msgSend(a2, "length")))
            {
              v416 = [a2 data];
              [v416 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v412;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v412 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxPhyPERTrue;
            v21 = v413++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxPhyPERTrue;
          goto LABEL_1010;
        case 0x19u:
          v232 = 0;
          v233 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x400000uLL;
          while (1)
          {
            v514 = 0;
            v234 = [a2 position] + 1;
            if (v234 >= [a2 position] && (v235 = objc_msgSend(a2, "position") + 1, v235 <= objc_msgSend(a2, "length")))
            {
              v236 = [a2 data];
              [v236 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v232;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v232 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxPhyPERFalse;
            v21 = v233++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxPhyPERFalse;
          goto LABEL_1010;
        case 0x1Au:
          v227 = 0;
          v228 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x80000uLL;
          while (1)
          {
            v514 = 0;
            v229 = [a2 position] + 1;
            if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 1, v230 <= objc_msgSend(a2, "length")))
            {
              v231 = [a2 data];
              [v231 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v227;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v227 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxFCSErrsTrue;
            v21 = v228++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxFCSErrsTrue;
          goto LABEL_1010;
        case 0x1Bu:
          v432 = 0;
          v433 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x40000uLL;
          while (1)
          {
            v514 = 0;
            v434 = [a2 position] + 1;
            if (v434 >= [a2 position] && (v435 = objc_msgSend(a2, "position") + 1, v435 <= objc_msgSend(a2, "length")))
            {
              v436 = [a2 data];
              [v436 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v432;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v432 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxFCSErrsFalse;
            v21 = v433++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxFCSErrsFalse;
          goto LABEL_1010;
        case 0x1Cu:
          v132 = 0;
          v133 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x200000uLL;
          while (1)
          {
            v514 = 0;
            v134 = [a2 position] + 1;
            if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
            {
              v136 = [a2 data];
              [v136 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v132;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v132 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxOverflowsTrue;
            v21 = v133++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxOverflowsTrue;
          goto LABEL_1010;
        case 0x1Du:
          v417 = 0;
          v418 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x100000uLL;
          while (1)
          {
            v514 = 0;
            v419 = [a2 position] + 1;
            if (v419 >= [a2 position] && (v420 = objc_msgSend(a2, "position") + 1, v420 <= objc_msgSend(a2, "length")))
            {
              v421 = [a2 data];
              [v421 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v417;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v417 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxOverflowsFalse;
            v21 = v418++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxOverflowsFalse;
          goto LABEL_1010;
        case 0x1Eu:
          v422 = 0;
          v423 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x20000uLL;
          while (1)
          {
            v514 = 0;
            v424 = [a2 position] + 1;
            if (v424 >= [a2 position] && (v425 = objc_msgSend(a2, "position") + 1, v425 <= objc_msgSend(a2, "length")))
            {
              v426 = [a2 data];
              [v426 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v422;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v422 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDupsTrue;
            v21 = v423++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDupsTrue;
          goto LABEL_1010;
        case 0x1Fu:
          v357 = 0;
          v358 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x10000uLL;
          while (1)
          {
            v514 = 0;
            v359 = [a2 position] + 1;
            if (v359 >= [a2 position] && (v360 = objc_msgSend(a2, "position") + 1, v360 <= objc_msgSend(a2, "length")))
            {
              v361 = [a2 data];
              [v361 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v357;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v357 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDupsFalse;
            v21 = v358++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDupsFalse;
          goto LABEL_1010;
        case 0x20u:
          v277 = 0;
          v278 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x2000000uLL;
          while (1)
          {
            v514 = 0;
            v279 = [a2 position] + 1;
            if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 1, v280 <= objc_msgSend(a2, "length")))
            {
              v281 = [a2 data];
              [v281 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v277;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v277 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxReplaysTrue;
            v21 = v278++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxReplaysTrue;
          goto LABEL_1010;
        case 0x21u:
          v362 = 0;
          v363 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x1000000uLL;
          while (1)
          {
            v514 = 0;
            v364 = [a2 position] + 1;
            if (v364 >= [a2 position] && (v365 = objc_msgSend(a2, "position") + 1, v365 <= objc_msgSend(a2, "length")))
            {
              v366 = [a2 data];
              [v366 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v362;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v362 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxReplaysFalse;
            v21 = v363++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxReplaysFalse;
          goto LABEL_1010;
        case 0x22u:
          v162 = 0;
          v163 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x8000uLL;
          while (1)
          {
            v514 = 0;
            v164 = [a2 position] + 1;
            if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
            {
              v166 = [a2 data];
              [v166 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v162;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v162 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDecryptErrsTrue;
            v21 = v163++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDecryptErrsTrue;
          goto LABEL_1010;
        case 0x23u:
          v137 = 0;
          v138 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x4000uLL;
          while (1)
          {
            v514 = 0;
            v139 = [a2 position] + 1;
            if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
            {
              v141 = [a2 data];
              [v141 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v137;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v137 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDecryptErrsFalse;
            v21 = v138++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDecryptErrsFalse;
          goto LABEL_1010;
        case 0x24u:
          v117 = 0;
          v118 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x2000uLL;
          while (1)
          {
            v514 = 0;
            v119 = [a2 position] + 1;
            if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
            {
              v121 = [a2 data];
              [v121 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v117;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v117 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDataPERTrue;
            v21 = v118++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDataPERTrue;
          goto LABEL_1010;
        case 0x25u:
          v122 = 0;
          v123 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x1000uLL;
          while (1)
          {
            v514 = 0;
            v124 = [a2 position] + 1;
            if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
            {
              v126 = [a2 data];
              [v126 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v122;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v122 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDataPERFalse;
            v21 = v123++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__highRxDataPERFalse;
          goto LABEL_1010;
        case 0x26u:
          v92 = 0;
          v93 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x20000000000uLL;
          while (1)
          {
            v514 = 0;
            v94 = [a2 position] + 1;
            if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
            {
              v96 = [a2 data];
              [v96 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v92;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v92 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANDurTrue;
            v21 = v93++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANDurTrue;
          goto LABEL_1010;
        case 0x27u:
          v427 = 0;
          v428 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x10000000000uLL;
          while (1)
          {
            v514 = 0;
            v429 = [a2 position] + 1;
            if (v429 >= [a2 position] && (v430 = objc_msgSend(a2, "position") + 1, v430 <= objc_msgSend(a2, "length")))
            {
              v431 = [a2 data];
              [v431 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v427;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v427 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANDurFalse;
            v21 = v428++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANDurFalse;
          goto LABEL_1010;
        case 0x28u:
          v387 = 0;
          v388 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x200000000000uLL;
          while (1)
          {
            v514 = 0;
            v389 = [a2 position] + 1;
            if (v389 >= [a2 position] && (v390 = objc_msgSend(a2, "position") + 1, v390 <= objc_msgSend(a2, "length")))
            {
              v391 = [a2 data];
              [v391 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v387;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v387 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANTxDurTrue;
            v21 = v388++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANTxDurTrue;
          goto LABEL_1010;
        case 0x29u:
          v202 = 0;
          v203 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x100000000000uLL;
          while (1)
          {
            v514 = 0;
            v204 = [a2 position] + 1;
            if (v204 >= [a2 position] && (v205 = objc_msgSend(a2, "position") + 1, v205 <= objc_msgSend(a2, "length")))
            {
              v206 = [a2 data];
              [v206 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v202;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v202 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANTxDurFalse;
            v21 = v203++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANTxDurFalse;
          goto LABEL_1010;
        case 0x2Au:
          v292 = 0;
          v293 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x80000000000uLL;
          while (1)
          {
            v514 = 0;
            v294 = [a2 position] + 1;
            if (v294 >= [a2 position] && (v295 = objc_msgSend(a2, "position") + 1, v295 <= objc_msgSend(a2, "length")))
            {
              v296 = [a2 data];
              [v296 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v292;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v292 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANRxDurTrue;
            v21 = v293++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANRxDurTrue;
          goto LABEL_1010;
        case 0x2Bu:
          v402 = 0;
          v403 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x40000000000uLL;
          while (1)
          {
            v514 = 0;
            v404 = [a2 position] + 1;
            if (v404 >= [a2 position] && (v405 = objc_msgSend(a2, "position") + 1, v405 <= objc_msgSend(a2, "length")))
            {
              v406 = [a2 data];
              [v406 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v402;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v402 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANRxDurFalse;
            v21 = v403++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lowAvailWLANRxDurFalse;
          goto LABEL_1010;
        case 0x2Cu:
          v72 = 0;
          v73 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x100uLL;
          while (1)
          {
            v514 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v72;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v72 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__cCA;
            v21 = v73++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__cCA;
          goto LABEL_1010;
        case 0x2Du:
          v152 = 0;
          v153 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x400000000000000uLL;
          while (1)
          {
            v514 = 0;
            v154 = [a2 position] + 1;
            if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
            {
              v156 = [a2 data];
              [v156 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v152;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v152 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rSSI;
            v21 = v153++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rSSI;
          goto LABEL_1010;
        case 0x2Eu:
          v367 = 0;
          v368 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x20000000uLL;
          while (1)
          {
            v514 = 0;
            v369 = [a2 position] + 1;
            if (v369 >= [a2 position] && (v370 = objc_msgSend(a2, "position") + 1, v370 <= objc_msgSend(a2, "length")))
            {
              v371 = [a2 data];
              [v371 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v367;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v367 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txPhyRate;
            v21 = v368++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txPhyRate;
          goto LABEL_1010;
        case 0x2Fu:
          v457 = 0;
          v458 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x40uLL;
          while (1)
          {
            v514 = 0;
            v459 = [a2 position] + 1;
            if (v459 >= [a2 position] && (v460 = objc_msgSend(a2, "position") + 1, v460 <= objc_msgSend(a2, "length")))
            {
              v461 = [a2 data];
              [v461 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v457;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v457 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxPhyRate;
            v21 = v458++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxPhyRate;
          goto LABEL_1010;
        case 0x30u:
          v102 = 0;
          v103 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x10000uLL;
          while (1)
          {
            v514 = 0;
            v104 = [a2 position] + 1;
            if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
            {
              v106 = [a2 data];
              [v106 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v102;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v102 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txAMPDUDensity;
            v21 = v103++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txAMPDUDensity;
          goto LABEL_1010;
        case 0x31u:
          v167 = 0;
          v168 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x8000000000000uLL;
          while (1)
          {
            v514 = 0;
            v169 = [a2 position] + 1;
            if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
            {
              v171 = [a2 data];
              [v171 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v167;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v167 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__measurementDurMS;
            v21 = v168++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__measurementDurMS;
          goto LABEL_1010;
        case 0x32u:
          v192 = 0;
          v193 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x200uLL;
          while (1)
          {
            v514 = 0;
            v194 = [a2 position] + 1;
            if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
            {
              v196 = [a2 data];
              [v196 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v192;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v192 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__concurrentIntDurMS;
            v21 = v193++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__concurrentIntDurMS;
          goto LABEL_1010;
        case 0x33u:
          v62 = 0;
          v63 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x1000uLL;
          while (1)
          {
            v514 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v62;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v62 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__tVPMActiveDurationMS;
            v21 = v63++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__tVPMActiveDurationMS;
          goto LABEL_1010;
        case 0x34u:
          v477 = 0;
          v478 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x80000000000000uLL;
          while (1)
          {
            v514 = 0;
            v479 = [a2 position] + 1;
            if (v479 >= [a2 position] && (v480 = objc_msgSend(a2, "position") + 1, v480 <= objc_msgSend(a2, "length")))
            {
              v481 = [a2 data];
              [v481 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v477;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v477 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__phyTxActivityDurMS;
            v21 = v478++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__phyTxActivityDurMS;
          goto LABEL_1010;
        case 0x35u:
          v452 = 0;
          v453 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x40000000000000uLL;
          while (1)
          {
            v514 = 0;
            v454 = [a2 position] + 1;
            if (v454 >= [a2 position] && (v455 = objc_msgSend(a2, "position") + 1, v455 <= objc_msgSend(a2, "length")))
            {
              v456 = [a2 data];
              [v456 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v452;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v452 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__phyRxActivityDurMS;
            v21 = v453++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__phyRxActivityDurMS;
          goto LABEL_1010;
        case 0x36u:
          v97 = 0;
          v98 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x200000000uLL;
          while (1)
          {
            v514 = 0;
            v99 = [a2 position] + 1;
            if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
            {
              v101 = [a2 data];
              [v101 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v97;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v97 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txSubBytes;
            v21 = v98++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txSubBytes;
          goto LABEL_1010;
        case 0x37u:
          v437 = 0;
          v438 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x20000uLL;
          while (1)
          {
            v514 = 0;
            v439 = [a2 position] + 1;
            if (v439 >= [a2 position] && (v440 = objc_msgSend(a2, "position") + 1, v440 <= objc_msgSend(a2, "length")))
            {
              v441 = [a2 data];
              [v441 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v437;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v437 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txCompBytes;
            v21 = v438++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txCompBytes;
          goto LABEL_1010;
        case 0x38u:
          v447 = 0;
          v448 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x80000uLL;
          while (1)
          {
            v514 = 0;
            v449 = [a2 position] + 1;
            if (v449 >= [a2 position] && (v450 = objc_msgSend(a2, "position") + 1, v450 <= objc_msgSend(a2, "length")))
            {
              v451 = [a2 data];
              [v451 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v447;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v447 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txDelayBytes;
            v21 = v448++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txDelayBytes;
          goto LABEL_1010;
        case 0x39u:
          v107 = 0;
          v108 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x10000000000000uLL;
          while (1)
          {
            v514 = 0;
            v109 = [a2 position] + 1;
            if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
            {
              v111 = [a2 data];
              [v111 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v107;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v107 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__offChanDurMS;
            v21 = v108++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__offChanDurMS;
          goto LABEL_1010;
        case 0x3Au:
          v397 = 0;
          v398 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x400000000uLL;
          while (1)
          {
            v514 = 0;
            v399 = [a2 position] + 1;
            if (v399 >= [a2 position] && (v400 = objc_msgSend(a2, "position") + 1, v400 <= objc_msgSend(a2, "length")))
            {
              v401 = [a2 data];
              [v401 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v397;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v397 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txSubPkts;
            v21 = v398++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txSubPkts;
          goto LABEL_1010;
        case 0x3Bu:
          v172 = 0;
          v173 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x40000uLL;
          while (1)
          {
            v514 = 0;
            v174 = [a2 position] + 1;
            if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
            {
              v176 = [a2 data];
              [v176 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v172;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v172 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txCompPkts;
            v21 = v173++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txCompPkts;
          goto LABEL_1010;
        case 0x3Cu:
          v407 = 0;
          v408 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x4000000000000uLL;
          while (1)
          {
            v514 = 0;
            v409 = [a2 position] + 1;
            if (v409 >= [a2 position] && (v410 = objc_msgSend(a2, "position") + 1, v410 <= objc_msgSend(a2, "length")))
            {
              v411 = [a2 data];
              [v411 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v407;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v407 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__maxQueueFullDurMS;
            v21 = v408++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__maxQueueFullDurMS;
          goto LABEL_1010;
        case 0x3Du:
          v207 = 0;
          v208 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x20uLL;
          while (1)
          {
            v514 = 0;
            v209 = [a2 position] + 1;
            if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
            {
              v211 = [a2 data];
              [v211 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v207;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v207 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__avgTxLatencyMS;
            v21 = v208++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__avgTxLatencyMS;
          goto LABEL_1010;
        case 0x3Eu:
          v307 = 0;
          v308 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x40uLL;
          while (1)
          {
            v514 = 0;
            v309 = [a2 position] + 1;
            if (v309 >= [a2 position] && (v310 = objc_msgSend(a2, "position") + 1, v310 <= objc_msgSend(a2, "length")))
            {
              v311 = [a2 data];
              [v311 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v307;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v307 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__bTAntennaDurMS;
            v21 = v308++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__bTAntennaDurMS;
          goto LABEL_1010;
        case 0x3Fu:
          v322 = 0;
          v323 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x20000000000000uLL;
          while (1)
          {
            v514 = 0;
            v324 = [a2 position] + 1;
            if (v324 >= [a2 position] && (v325 = objc_msgSend(a2, "position") + 1, v325 <= objc_msgSend(a2, "length")))
            {
              v326 = [a2 data];
              [v326 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v322;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v322 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__outputThroughput;
            v21 = v323++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__outputThroughput;
          goto LABEL_1010;
        case 0x40u:
          v247 = 0;
          v248 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x800000000uLL;
          while (1)
          {
            v514 = 0;
            v249 = [a2 position] + 1;
            if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 1, v250 <= objc_msgSend(a2, "length")))
            {
              v251 = [a2 data];
              [v251 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v247;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v247 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__inputThroughput;
            v21 = v248++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__inputThroughput;
          goto LABEL_1010;
        case 0x41u:
          v212 = 0;
          v213 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x800uLL;
          while (1)
          {
            v514 = 0;
            v214 = [a2 position] + 1;
            if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
            {
              v216 = [a2 data];
              [v216 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v212;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v212 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__expectedThroughput;
            v21 = v213++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__expectedThroughput;
          goto LABEL_1010;
        case 0x42u:
          v317 = 0;
          v318 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x400uLL;
          while (1)
          {
            v514 = 0;
            v319 = [a2 position] + 1;
            if (v319 >= [a2 position] && (v320 = objc_msgSend(a2, "position") + 1, v320 <= objc_msgSend(a2, "length")))
            {
              v321 = [a2 data];
              [v321 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v317;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v317 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__delayedThroughput;
            v21 = v318++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__delayedThroughput;
          goto LABEL_1010;
        case 0x43u:
          v77 = 0;
          v78 = 0;
          v15 = 0;
          *(a1 + 800) |= 4uLL;
          while (1)
          {
            v514 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v77;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v77 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__availWLANDurMS;
            v21 = v78++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__availWLANDurMS;
          goto LABEL_1010;
        case 0x44u:
          v147 = 0;
          v148 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x10uLL;
          while (1)
          {
            v514 = 0;
            v149 = [a2 position] + 1;
            if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
            {
              v151 = [a2 data];
              [v151 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v147;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v147 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__availWLANTxDurMS;
            v21 = v148++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__availWLANTxDurMS;
          goto LABEL_1010;
        case 0x45u:
          v487 = 0;
          v488 = 0;
          v15 = 0;
          *(a1 + 800) |= 8uLL;
          while (1)
          {
            v514 = 0;
            v489 = [a2 position] + 1;
            if (v489 >= [a2 position] && (v490 = objc_msgSend(a2, "position") + 1, v490 <= objc_msgSend(a2, "length")))
            {
              v491 = [a2 data];
              [v491 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v487;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v487 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__availWLANRxDurMS;
            v21 = v488++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__availWLANRxDurMS;
          goto LABEL_1010;
        case 0x46u:
          v127 = 0;
          v128 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x100000000uLL;
          while (1)
          {
            v514 = 0;
            v129 = [a2 position] + 1;
            if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 1, v130 <= objc_msgSend(a2, "length")))
            {
              v131 = [a2 data];
              [v131 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v127;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v127 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txRetries;
            v21 = v128++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txRetries;
          goto LABEL_1010;
        case 0x47u:
          v47 = 0;
          v48 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x200000uLL;
          while (1)
          {
            v514 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v47;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v47 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txFails;
            v21 = v48++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txFails;
          goto LABEL_1010;
        case 0x48u:
          v87 = 0;
          v88 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x400000uLL;
          while (1)
          {
            v514 = 0;
            v89 = [a2 position] + 1;
            if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
            {
              v91 = [a2 data];
              [v91 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v87;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v87 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txFrames;
            v21 = v88++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txFrames;
          goto LABEL_1010;
        case 0x49u:
          v442 = 0;
          v443 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x10uLL;
          while (1)
          {
            v514 = 0;
            v444 = [a2 position] + 1;
            if (v444 >= [a2 position] && (v445 = objc_msgSend(a2, "position") + 1, v445 <= objc_msgSend(a2, "length")))
            {
              v446 = [a2 data];
              [v446 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v442;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v442 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxOvflErrs;
            v21 = v443++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxOvflErrs;
          goto LABEL_1010;
        case 0x4Au:
          v462 = 0;
          v463 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x8000000000000000;
          while (1)
          {
            v514 = 0;
            v464 = [a2 position] + 1;
            if (v464 >= [a2 position] && (v465 = objc_msgSend(a2, "position") + 1, v465 <= objc_msgSend(a2, "length")))
            {
              v466 = [a2 data];
              [v466 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v462;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v462 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxFCSErrs;
            v21 = v463++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxFCSErrs;
          goto LABEL_1010;
        case 0x4Bu:
          v472 = 0;
          v473 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x20uLL;
          while (1)
          {
            v514 = 0;
            v474 = [a2 position] + 1;
            if (v474 >= [a2 position] && (v475 = objc_msgSend(a2, "position") + 1, v475 <= objc_msgSend(a2, "length")))
            {
              v476 = [a2 data];
              [v476 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v472;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v472 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxPLCPErrs;
            v21 = v473++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxPLCPErrs;
          goto LABEL_1010;
        case 0x4Cu:
          v112 = 0;
          v113 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x1000000000000000uLL;
          while (1)
          {
            v514 = 0;
            v114 = [a2 position] + 1;
            if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
            {
              v116 = [a2 data];
              [v116 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v112;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v112 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxCRSErrs;
            v21 = v113++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxCRSErrs;
          goto LABEL_1010;
        case 0x4Du:
          v297 = 0;
          v298 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x4000000000000000uLL;
          while (1)
          {
            v514 = 0;
            v299 = [a2 position] + 1;
            if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 1, v300 <= objc_msgSend(a2, "length")))
            {
              v301 = [a2 data];
              [v301 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v297;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v297 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxDupErrs;
            v21 = v298++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxDupErrs;
          goto LABEL_1010;
        case 0x4Eu:
          v52 = 0;
          v53 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x80uLL;
          while (1)
          {
            v514 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v52;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v52 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxReplayErrs;
            v21 = v53++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxReplayErrs;
          goto LABEL_1010;
        case 0x4Fu:
          v482 = 0;
          v483 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x2000000000000000uLL;
          while (1)
          {
            v514 = 0;
            v484 = [a2 position] + 1;
            if (v484 >= [a2 position] && (v485 = objc_msgSend(a2, "position") + 1, v485 <= objc_msgSend(a2, "length")))
            {
              v486 = [a2 data];
              [v486 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v482;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v482 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxDecryErrs;
            v21 = v483++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxDecryErrs;
          goto LABEL_1010;
        case 0x50u:
          v37 = 0;
          v38 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x100uLL;
          while (1)
          {
            v514 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v37;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v37 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxRetries;
            v21 = v38++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxRetries;
          goto LABEL_1010;
        case 0x51u:
          v82 = 0;
          v83 = 0;
          v15 = 0;
          *(a1 + 808) |= 2uLL;
          while (1)
          {
            v514 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v82;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v82 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxGoodPlcps;
            v21 = v83++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxGoodPlcps;
          goto LABEL_1010;
        case 0x52u:
          v187 = 0;
          v188 = 0;
          v15 = 0;
          *(a1 + 808) |= 1uLL;
          while (1)
          {
            v514 = 0;
            v189 = [a2 position] + 1;
            if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 1, v190 <= objc_msgSend(a2, "length")))
            {
              v191 = [a2 data];
              [v191 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v187;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v187 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxFrames;
            v21 = v188++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxFrames;
          goto LABEL_1010;
        case 0x53u:
          v177 = 0;
          v178 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x400uLL;
          while (1)
          {
            v514 = 0;
            v179 = [a2 position] + 1;
            if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 1, v180 <= objc_msgSend(a2, "length")))
            {
              v181 = [a2 data];
              [v181 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v177;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v177 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__sNR;
            v21 = v178++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__sNR;
          goto LABEL_1010;
        case 0x54u:
          v27 = 0;
          v28 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x100000uLL;
          while (1)
          {
            v514 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v27;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v27 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txExpectedAMPDUDensity;
            v21 = v28++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__txExpectedAMPDUDensity;
          goto LABEL_1010;
        case 0x55u:
          v22 = 0;
          v23 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x100000000000000uLL;
          while (1)
          {
            v514 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v22;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v22 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rC1CoexDurationMS;
            v21 = v23++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rC1CoexDurationMS;
          goto LABEL_1010;
        case 0x56u:
          v372 = 0;
          v373 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x200000000000000uLL;
          while (1)
          {
            v514 = 0;
            v374 = [a2 position] + 1;
            if (v374 >= [a2 position] && (v375 = objc_msgSend(a2, "position") + 1, v375 <= objc_msgSend(a2, "length")))
            {
              v376 = [a2 data];
              [v376 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v372;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v372 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rC2CoexDurationMS;
            v21 = v373++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rC2CoexDurationMS;
          goto LABEL_1010;
        case 0x57u:
          v382 = 0;
          v383 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x4000000000uLL;
          while (1)
          {
            v514 = 0;
            v384 = [a2 position] + 1;
            if (v384 >= [a2 position] && (v385 = objc_msgSend(a2, "position") + 1, v385 <= objc_msgSend(a2, "length")))
            {
              v386 = [a2 data];
              [v386 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v382;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v382 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lTECoexDurationMS;
            v21 = v383++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lTECoexDurationMS;
          goto LABEL_1010;
        case 0x58u:
          v467 = 0;
          v468 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x200uLL;
          while (1)
          {
            v514 = 0;
            v469 = [a2 position] + 1;
            if (v469 >= [a2 position] && (v470 = objc_msgSend(a2, "position") + 1, v470 <= objc_msgSend(a2, "length")))
            {
              v471 = [a2 data];
              [v471 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v467;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v467 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxThroughput;
            v21 = v468++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxThroughput;
          goto LABEL_1010;
        case 0x59u:
          v67 = 0;
          v68 = 0;
          v15 = 0;
          *(a1 + 800) |= 1uLL;
          while (1)
          {
            v514 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              v71 = [a2 data];
              [v71 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v67;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v67 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__aPTxDataStall;
            v21 = v68++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__aPTxDataStall;
          goto LABEL_1010;
        case 0x5Au:
          v502 = 0;
          v503 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x800000000000000uLL;
          while (1)
          {
            v514 = 0;
            v504 = [a2 position] + 1;
            if (v504 >= [a2 position] && (v505 = objc_msgSend(a2, "position") + 1, v505 <= objc_msgSend(a2, "length")))
            {
              v506 = [a2 data];
              [v506 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v502;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v502 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxAmpduTxBaMismatch;
            v21 = v503++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__rxAmpduTxBaMismatch;
          goto LABEL_1010;
        case 0x5Bu:
          v497 = 0;
          v498 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x800uLL;
          while (1)
          {
            v514 = 0;
            v499 = [a2 position] + 1;
            if (v499 >= [a2 position] && (v500 = objc_msgSend(a2, "position") + 1, v500 <= objc_msgSend(a2, "length")))
            {
              v501 = [a2 data];
              [v501 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v497;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v497 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__symptomsFails;
            v21 = v498++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__symptomsFails;
          goto LABEL_1010;
        case 0x5Cu:
          v32 = 0;
          v33 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x1000000000uLL;
          while (1)
          {
            v514 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v32;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v32 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__is2GBand;
            v21 = v33++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__is2GBand;
          goto LABEL_1010;
        case 0x5Du:
          v267 = 0;
          v268 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x2000000000uLL;
          while (1)
          {
            v514 = 0;
            v269 = [a2 position] + 1;
            if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 1, v270 <= objc_msgSend(a2, "length")))
            {
              v271 = [a2 data];
              [v271 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v267;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v267 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__isFGTraffic;
            v21 = v268++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__isFGTraffic;
          goto LABEL_1010;
        case 0x5Eu:
          v57 = 0;
          v58 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x80uLL;
          while (1)
          {
            v514 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v57;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v57 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__baselineThroughput;
            v21 = v58++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__baselineThroughput;
          goto LABEL_1010;
        case 0x5Fu:
          v287 = 0;
          v288 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x2000uLL;
          while (1)
          {
            v514 = 0;
            v289 = [a2 position] + 1;
            if (v289 >= [a2 position] && (v290 = objc_msgSend(a2, "position") + 1, v290 <= objc_msgSend(a2, "length")))
            {
              v291 = [a2 data];
              [v291 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v287;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v287 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__testThroughput;
            v21 = v288++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__testThroughput;
          goto LABEL_1010;
        case 0x60u:
          v492 = 0;
          v493 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x400000000uLL;
          while (1)
          {
            v514 = 0;
            v494 = [a2 position] + 1;
            if (v494 >= [a2 position] && (v495 = objc_msgSend(a2, "position") + 1, v495 <= objc_msgSend(a2, "length")))
            {
              v496 = [a2 data];
              [v496 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v492;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v492 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__infraDutyCycle;
            v21 = v493++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__infraDutyCycle;
          goto LABEL_1010;
        case 0x61u:
          v42 = 0;
          v43 = 0;
          v15 = 0;
          *(a1 + 800) |= 0x8000000000uLL;
          while (1)
          {
            v514 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v42;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v42 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lastScanReason;
            v21 = v43++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__lastScanReason;
          goto LABEL_1010;
        case 0x62u:
          v507 = 0;
          v508 = 0;
          v15 = 0;
          *(a1 + 800) |= 2uLL;
          while (1)
          {
            v514 = 0;
            v509 = [a2 position] + 1;
            if (v509 >= [a2 position] && (v510 = objc_msgSend(a2, "position") + 1, v510 <= objc_msgSend(a2, "length")))
            {
              v511 = [a2 data];
              [v511 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v514 & 0x7F) << v507;
            if ((v514 & 0x80) == 0)
            {
              break;
            }

            v19 = 0;
            v507 += 7;
            v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__accessPointOUI;
            v21 = v508++ > 8;
            if (v21)
            {
              goto LABEL_1013;
            }
          }

          v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__accessPointOUI;
          goto LABEL_1010;
        case 0x63u:
          v272 = 0;
          v273 = 0;
          v15 = 0;
          *(a1 + 808) |= 0x4000uLL;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_1014;
          }

          return 0;
      }

      while (1)
      {
        v514 = 0;
        v274 = [a2 position] + 1;
        if (v274 >= [a2 position] && (v275 = objc_msgSend(a2, "position") + 1, v275 <= objc_msgSend(a2, "length")))
        {
          v276 = [a2 data];
          [v276 getBytes:&v514 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v514 & 0x7F) << v272;
        if ((v514 & 0x80) == 0)
        {
          break;
        }

        v19 = 0;
        v272 += 7;
        v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__timeSinceLastRecovery;
        v21 = v273++ > 8;
        if (v21)
        {
          goto LABEL_1013;
        }
      }

      v20 = &OBJC_IVAR___WiFiAnalyticsAWDLinkQualityMeasurements__timeSinceLastRecovery;
LABEL_1010:
      v19 = [a2 hasError] ? 0 : v15;
LABEL_1013:
      *(a1 + *v20) = v19;
LABEL_1014:
      v512 = [a2 position];
    }

    while (v512 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReasonReadFrom(uint64_t a1, void *a2)
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
        v89 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v89 & 0x7F) << v5;
        if ((v89 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            v103 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v103 & 0x7F) << v13;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v19 = v14++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__acl;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__acl;
          goto LABEL_160;
        case 2u:
          v57 = 0;
          v58 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x1000u;
          while (1)
          {
            v102 = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v102 & 0x7F) << v57;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v19 = v58++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__sco;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__sco;
          goto LABEL_160;
        case 3u:
          v42 = 0;
          v43 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v101 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v101 & 0x7F) << v42;
            if ((v101 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v19 = v43++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__esco;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__esco;
          goto LABEL_160;
        case 4u:
          v47 = 0;
          v48 = 0;
          v15 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            v100 = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v100 & 0x7F) << v47;
            if ((v100 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v19 = v48++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__a2dp;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__a2dp;
          goto LABEL_160;
        case 5u:
          v27 = 0;
          v28 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x2000u;
          while (1)
          {
            v99 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v99 & 0x7F) << v27;
            if ((v99 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v19 = v28++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__sniff;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__sniff;
          goto LABEL_160;
        case 6u:
          v62 = 0;
          v63 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x400u;
          while (1)
          {
            v98 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v98 & 0x7F) << v62;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v19 = v63++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__pagescan;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__pagescan;
          goto LABEL_160;
        case 7u:
          v72 = 0;
          v73 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x40u;
          while (1)
          {
            v97 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v97 & 0x7F) << v72;
            if ((v97 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v19 = v73++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__inquiryscan;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__inquiryscan;
          goto LABEL_160;
        case 8u:
          v52 = 0;
          v53 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x200u;
          while (1)
          {
            v96 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v96 & 0x7F) << v52;
            if ((v96 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v19 = v53++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__page;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__page;
          goto LABEL_160;
        case 9u:
          v82 = 0;
          v83 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x20u;
          while (1)
          {
            v95 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v95 & 0x7F) << v82;
            if ((v95 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            v19 = v83++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__inquiry;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__inquiry;
          goto LABEL_160;
        case 0xAu:
          v37 = 0;
          v38 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x80u;
          while (1)
          {
            v94 = 0;
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

            v15 |= (v94 & 0x7F) << v37;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v19 = v38++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__mss;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__mss;
          goto LABEL_160;
        case 0xBu:
          v77 = 0;
          v78 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x800u;
          while (1)
          {
            v93 = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              v81 = [a2 data];
              [v81 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v93 & 0x7F) << v77;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v19 = v78++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__park;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__park;
          goto LABEL_160;
        case 0xCu:
          v22 = 0;
          v23 = 0;
          v15 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v92 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v92 & 0x7F) << v22;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v19 = v23++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__ble;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__ble;
          goto LABEL_160;
        case 0xDu:
          v32 = 0;
          v33 = 0;
          v15 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v91 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v91 & 0x7F) << v32;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v19 = v33++ > 8;
            if (v19)
            {
              v20 = 0;
              v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__blescan;
              goto LABEL_163;
            }
          }

          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__blescan;
          goto LABEL_160;
        case 0xEu:
          v67 = 0;
          v68 = 0;
          v15 = 0;
          *(a1 + 64) |= 0x100u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_164;
          }

          return 0;
      }

      while (1)
      {
        v90 = 0;
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

        v15 |= (v90 & 0x7F) << v67;
        if ((v90 & 0x80) == 0)
        {
          break;
        }

        v67 += 7;
        v19 = v68++ > 8;
        if (v19)
        {
          v20 = 0;
          v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__other;
          goto LABEL_163;
        }
      }

      v21 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason__other;
LABEL_160:
      v20 = [a2 hasError] ? 0 : v15;
LABEL_163:
      *(a1 + *v21) = v20;
LABEL_164:
      v87 = [a2 position];
    }

    while (v87 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityBtCoexReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v120[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v120[0] & 0x7F) << v5;
      if ((v120[0] & 0x80) == 0)
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
        *(a1 + 84) |= 0x800u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v120[0] & 0x7F) << v13;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_219:
            v117 = 60;
            goto LABEL_244;
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

        goto LABEL_219;
      case 2u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 84) |= 0x100u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v120[0] & 0x7F) << v80;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_223;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v82;
        }

LABEL_223:
        v117 = 48;
        goto LABEL_244;
      case 3u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 84) |= 0x80u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v120[0] & 0x7F) << v56;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_203;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v58;
        }

LABEL_203:
        v117 = 44;
        goto LABEL_244;
      case 4u:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 84) |= 0x20u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v120[0] & 0x7F) << v68;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v11 = v69++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_211;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v70;
        }

LABEL_211:
        v117 = 28;
        goto LABEL_244;
      case 5u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 84) |= 0x400u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v120[0] & 0x7F) << v38;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_191;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v40;
        }

LABEL_191:
        v117 = 56;
        goto LABEL_244;
      case 6u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 84) |= 0x4000u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v120[0] & 0x7F) << v87;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v11 = v88++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_227;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v89;
        }

LABEL_227:
        v117 = 72;
        goto LABEL_244;
      case 7u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 84) |= 0x40u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v120[0] & 0x7F) << v99;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v11 = v100++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_235;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v101;
        }

LABEL_235:
        v117 = 40;
        goto LABEL_244;
      case 8u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 84) |= 0x200u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v120[0] & 0x7F) << v74;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v11 = v75++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_215;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v76;
        }

LABEL_215:
        v117 = 52;
        goto LABEL_244;
      case 9u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 84) |= 0x10000u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v120[0] & 0x7F) << v111;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v11 = v112++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_243;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v113;
        }

LABEL_243:
        v117 = 80;
        goto LABEL_244;
      case 0xAu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 84) |= 0x8000u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v120[0] & 0x7F) << v50;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v11 = v51++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_199;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v52;
        }

LABEL_199:
        v117 = 76;
        goto LABEL_244;
      case 0xBu:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        *(a1 + 84) |= 4u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v108 = [a2 position] + 1;
          if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
          {
            v110 = [a2 data];
            [v110 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v107 |= (v120[0] & 0x7F) << v105;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v11 = v106++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_239;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v107;
        }

LABEL_239:
        v117 = 16;
        goto LABEL_244;
      case 0xCu:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 84) |= 0x10u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v120[0] & 0x7F) << v32;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_187;
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

LABEL_187:
        v117 = 24;
        goto LABEL_244;
      case 0xDu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 84) |= 8u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v120[0] & 0x7F) << v44;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_195;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v46;
        }

LABEL_195:
        v117 = 20;
        goto LABEL_244;
      case 0xEu:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        *(a1 + 84) |= 2u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v95 |= (v120[0] & 0x7F) << v93;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v11 = v94++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_231;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v95;
        }

LABEL_231:
        v117 = 12;
        goto LABEL_244;
      case 0xFu:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 84) |= 1u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v120[0] & 0x7F) << v26;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_183;
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

LABEL_183:
        v117 = 8;
        goto LABEL_244;
      case 0x10u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 84) |= 0x2000u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v120[0] & 0x7F) << v62;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v11 = v63++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_207;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v64;
        }

LABEL_207:
        v117 = 68;
        goto LABEL_244;
      case 0x11u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 84) |= 0x1000u;
        while (1)
        {
          LOBYTE(v120[0]) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:v120 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v120[0] & 0x7F) << v20;
          if ((v120[0] & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_179;
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

LABEL_179:
        v117 = 64;
LABEL_244:
        *(a1 + v117) = v19;
        goto LABEL_245;
      case 0x12u:
        v86 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReason);
        objc_storeStrong((a1 + 32), v86);
        v120[0] = 0;
        v120[1] = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityBtCoexReqestReasonReadFrom(v86, a2))
        {
          PBReaderRecallMark();

LABEL_245:
          v118 = [a2 position];
          if (v118 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_245;
    }
  }
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityControllerStatsReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v85) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v85 & 0x7F) << v5;
      if ((v85 & 0x80) == 0)
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
        *(a1 + 152) |= 0x100u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v85 & 0x7F) << v13;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_178:
            v82 = 64;
            goto LABEL_195;
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
      case 2u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 152) |= 2u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v85 & 0x7F) << v57;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v11 = v58++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_182;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v59;
        }

LABEL_182:
        v82 = 24;
        goto LABEL_195;
      case 3u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityScanActivity);
        objc_storeStrong((a1 + 136), v38);
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityScanActivityReadFrom(v38, a2))
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      case 4u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityPowerPStats);
        objc_storeStrong((a1 + 104), v38);
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityPowerPStatsReadFrom(v38, a2))
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      case 5u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions);
        objc_storeStrong((a1 + 72), v38);
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityImpedingFunctionsReadFrom(v38, a2))
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      case 6u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics);
        objc_storeStrong((a1 + 16), v38);
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityAggregateMetricsReadFrom(v38, a2))
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      case 7u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityBtCoex);
        objc_storeStrong((a1 + 32), v38);
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityBtCoexReadFrom(v38, a2))
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      case 8u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 152) |= 0x20u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v85 & 0x7F) << v51;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_174;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v53;
        }

LABEL_174:
        v82 = 52;
        goto LABEL_195;
      case 9u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 152) |= 0x40u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v85 & 0x7F) << v76;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v11 = v77++ >= 9;
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
          v19 = v78;
        }

LABEL_194:
        v82 = 56;
        goto LABEL_195;
      case 0xAu:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation);
        objc_storeStrong((a1 + 96), v38);
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityRateAndAggregationReadFrom(v38, a2))
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      case 0xBu:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 152) |= 8u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v85 & 0x7F) << v70;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
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
          v19 = v72;
        }

LABEL_190:
        v82 = 44;
        goto LABEL_195;
      case 0xCu:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 152) |= 0x10u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v85 & 0x7F) << v32;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_162;
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

LABEL_162:
        v82 = 48;
        goto LABEL_195;
      case 0xDu:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 152) |= 4u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v85 & 0x7F) << v39;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_166;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v41;
        }

LABEL_166:
        v82 = 40;
        goto LABEL_195;
      case 0xEu:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 152) |= 1u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v85 & 0x7F) << v63;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            v69 = 0;
            goto LABEL_186;
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

LABEL_186:
        *(a1 + 8) = v69;
        goto LABEL_196;
      case 0xFu:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 152) |= 0x80u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v85 & 0x7F) << v26;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_158;
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

LABEL_158:
        v82 = 60;
        goto LABEL_195;
      case 0x10u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 152) |= 0x200u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v85 & 0x7F) << v45;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v11 = v46++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_170;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v47;
        }

LABEL_170:
        v82 = 80;
        goto LABEL_195;
      case 0x11u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 152) |= 0x400u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v85 & 0x7F) << v20;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_154;
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

LABEL_154:
        v82 = 84;
LABEL_195:
        *(a1 + v82) = v19;
        goto LABEL_196;
      case 0x12u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityMpduWME);
        [a1 addTxmpduWME:v38];
        goto LABEL_125;
      case 0x13u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityMpduWME);
        [a1 addRxmpduWME:v38];
LABEL_125:
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityMpduWMEReadFrom(v38, a2))
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      case 0x14u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityMpduLost);
        [a1 addRxmdpuLost:v38];
        v85 = 0;
        v86 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityMpduLostReadFrom(v38, a2))
        {
          goto LABEL_150;
        }

        goto LABEL_198;
      case 0x15u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityOMI);
        objc_storeStrong((a1 + 88), v38);
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityOMIReadFrom(v38, a2))
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      case 0x16u:
        v38 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityRuUsage);
        objc_storeStrong((a1 + 112), v38);
        v85 = 0;
        v86 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityRuUsageReadFrom(v38, a2))
        {
LABEL_150:
          PBReaderRecallMark();

LABEL_196:
          v83 = [a2 position];
          if (v83 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_198:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_196;
    }
  }
}

uint64_t WiFiAnalyticsAWDWAAssociatedAPInfoReadFrom(uint64_t a1, void *a2)
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
      if (v13 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E830F6A0[v13];
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

uint64_t WiFiAnalyticsAWDBTLEConnectionStatsReadFrom(uint64_t a1, void *a2)
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
            v43 = 0;
            v44 = 0;
            v16 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              v75 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v75 & 0x7F) << v43;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v20 = v44++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc1;
                goto LABEL_135;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc1;
            goto LABEL_132;
          }

          if (v13 == 7)
          {
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              v74 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v74 & 0x7F) << v33;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc2;
                goto LABEL_135;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc2;
LABEL_132:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_135:
            *(a1 + *v22) = v21;
            goto LABEL_136;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v53 = 0;
              v54 = 0;
              v16 = 0;
              *(a1 + 48) |= 0x10u;
              while (1)
              {
                v73 = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v73 & 0x7F) << v53;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v20 = v54++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc3;
                  goto LABEL_135;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc3;
              goto LABEL_132;
            case 9:
              v63 = 0;
              v64 = 0;
              v16 = 0;
              *(a1 + 48) |= 0x20u;
              while (1)
              {
                v72 = 0;
                v65 = [a2 position] + 1;
                if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
                {
                  v67 = [a2 data];
                  [v67 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v72 & 0x7F) << v63;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v20 = v64++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc4;
                  goto LABEL_135;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc4;
              goto LABEL_132;
            case 0xA:
              v23 = 0;
              v24 = 0;
              v16 = 0;
              *(a1 + 48) |= 0x40u;
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

                v16 |= (v71 & 0x7F) << v23;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v20 = v24++ > 8;
                if (v20)
                {
                  v21 = 0;
                  v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc5;
                  goto LABEL_135;
                }
              }

              v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc5;
              goto LABEL_132;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 48) |= 0x100u;
          while (1)
          {
            v80 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v80 & 0x7F) << v38;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__start;
              goto LABEL_135;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__start;
          goto LABEL_132;
        }

        if (v13 == 2)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v79 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v79 & 0x7F) << v28;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__complete;
              goto LABEL_135;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__complete;
          goto LABEL_132;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 48) |= 0x80u;
            while (1)
            {
              v78 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v78 & 0x7F) << v48;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__peakOutage;
                goto LABEL_135;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__peakOutage;
            goto LABEL_132;
          case 4:
            v58 = 0;
            v59 = 0;
            v16 = 0;
            *(a1 + 48) |= 0x200u;
            while (1)
            {
              v77 = 0;
              v60 = [a2 position] + 1;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v77 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v77 & 0x7F) << v58;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v20 = v59++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__totalDuration;
                goto LABEL_135;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__totalDuration;
            goto LABEL_132;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              v76 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v76 & 0x7F) << v14;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc0;
                goto LABEL_135;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDBTLEConnectionStats__dc0;
            goto LABEL_132;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_136:
      v68 = [a2 position];
    }

    while (v68 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityMpduWMEReadFrom(uint64_t a1, void *a2)
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
        v60 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60 & 0x7F) << v5;
        if ((v60 & 0x80) == 0)
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
            v53 = 0;
            v54 = 0;
            v16 = 0;
            *(a1 + 72) |= 0x40u;
            while (1)
            {
              v62 = 0;
              v55 = [a2 position] + 1;
              if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
              {
                v57 = [a2 data];
                [v57 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v62 & 0x7F) << v53;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v20 = v54++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid6;
                goto LABEL_113;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid6;
            goto LABEL_110;
          }

          if (v13 == 8)
          {
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 72) |= 0x80u;
            while (1)
            {
              v61 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v61 & 0x7F) << v33;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid7;
                goto LABEL_113;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid7;
LABEL_110:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_113:
            *(a1 + *v22) = v21;
            goto LABEL_114;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v43 = 0;
            v44 = 0;
            v16 = 0;
            *(a1 + 72) |= 0x10u;
            while (1)
            {
              v64 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v64 & 0x7F) << v43;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v20 = v44++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid4;
                goto LABEL_113;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid4;
            goto LABEL_110;
          }

          if (v13 == 6)
          {
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 72) |= 0x20u;
            while (1)
            {
              v63 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v63 & 0x7F) << v23;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid5;
                goto LABEL_113;
              }
            }

            v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid5;
            goto LABEL_110;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v48 = 0;
          v49 = 0;
          v16 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            v66 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v66 & 0x7F) << v48;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v20 = v49++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid2;
              goto LABEL_113;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid2;
          goto LABEL_110;
        }

        if (v13 == 4)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            v65 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v65 & 0x7F) << v28;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid3;
              goto LABEL_113;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid3;
          goto LABEL_110;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v68 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v68 & 0x7F) << v38;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid0;
              goto LABEL_113;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid0;
          goto LABEL_110;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            v67 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v67 & 0x7F) << v14;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid1;
              goto LABEL_113;
            }
          }

          v22 = &OBJC_IVAR___WiFiAnalyticsAWDWiFiNWActivityMpduWME__tid1;
          goto LABEL_110;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_114:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}